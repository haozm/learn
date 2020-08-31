package org.learn.batch;

import org.springframework.batch.item.ItemProcessor;

import java.util.Map;

public class DemoItemProcessor implements ItemProcessor<Map<String, Object>, String> {

    @Override
    public String process(Map<String, Object> item) throws Exception {
        return String.valueOf(item);
    }

}
