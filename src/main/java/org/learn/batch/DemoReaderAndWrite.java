package org.learn.batch;

import org.apache.commons.collections4.MapUtils;
import org.springframework.batch.item.*;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import java.util.List;
import java.util.Map;

public class DemoReaderAndWrite extends JdbcDaoSupport implements ItemReader<Map<String, Object>>, ItemWriter<String> {

    private String factoryId;

    @Override
    public Map<String, Object> read() throws Exception, UnexpectedInputException, ParseException, NonTransientResourceException {
        try {
            Map<String, Object> map = getJdbcTemplate()
                    .queryForMap("SELECT * FROM batch_job.prod_equipment_up_axis_detail WHERE factory_id = ? AND tag = 0 LIMIT 1;", factoryId);
            getJdbcTemplate().update("UPDATE batch_job.prod_equipment_up_axis_detail SET tag =1 WHERE up_axis_id = ?", MapUtils.getString(map, "up_axis_id"));
            return map;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public void setFactoryId(String factoryId) {
        this.factoryId = factoryId;
    }

    @Override
    public void write(List<? extends String> items) throws Exception {
        System.out.println("-- ================ Wrtite start ============================");
        items.forEach(System.out::println);
    }
}
