package org.learn.batch;

import org.apache.commons.collections4.MapUtils;
import org.springframework.batch.item.ExecutionContext;
import org.springframework.batch.item.NonTransientResourceException;
import org.springframework.batch.item.ParseException;
import org.springframework.batch.item.UnexpectedInputException;
import org.springframework.batch.item.support.AbstractItemStreamItemReader;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.Map;

public class DemoItemReader extends AbstractItemStreamItemReader<Map<String, Object>> {

    private JdbcTemplate jdbcTemplate;
    private String factoryId;

    @Override
    public void open(ExecutionContext executionContext) {
        super.open(executionContext);
    }

    @Override
    public Map<String, Object> read() throws Exception, UnexpectedInputException, ParseException, NonTransientResourceException {
        try {
            Map<String, Object> map = this.jdbcTemplate
                    .queryForMap("SELECT * FROM batch_job.prod_equipment_up_axis_detail WHERE factory_id = ? AND tag = 0 LIMIT 1;", factoryId);
            this.jdbcTemplate.update("UPDATE batch_job.prod_equipment_up_axis_detail SET tag =1 WHERE up_axis_id = ?", MapUtils.getString(map, "up_axis_id"));
            return map;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    @Override
    public void close() {
        super.close();
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void setFactoryId(String factoryId) {
        this.factoryId = factoryId;
    }
}
