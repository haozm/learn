package org.learn.springchannel;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.apache.commons.collections4.CollectionUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.integration.core.MessagingTemplate;
import org.springframework.integration.json.ObjectToJsonTransformer;
import org.springframework.integration.support.MessageBuilder;
import org.springframework.messaging.Message;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.ResourceUtils;

import java.util.List;
import java.util.Map;
import java.util.Random;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {ResourceUtils.CLASSPATH_URL_PREFIX + "spring-nodb-cfg.xml"})
public class MessageBuilderHelperTest {

    @Autowired
    private MessagingTemplate messagingTemplate;

    @Test
    public void sendMsg() {
        Random random = new Random();
        for (int i = 0; i < 20; i++) {
            int index = random.nextInt();
            if (index % 2 == 0) {
                Map<String, Object> payload = Maps.newHashMap();
                payload.put("index", index);
                payload.put("factory", String.format("factory=%d", index));
                Message<?> message = MessageBuilder.withPayload(payload).setHeader("tag", "pud")
                        .setHeader("index", index).build();
                messagingTemplate.send("event_bus_channel", message);
            } else {
                List<String> list = Lists.newArrayList();
                for (int j = 0; j < index % 10; j++) {
                    list.add(String.format("I am %d user.....,lalalalal.", j));
                }
                if (CollectionUtils.isEmpty(list)) continue;
                Message<?> message = MessageBuilder.withPayload(list).setHeader("tag", "conf")
                        .setHeader("index", index).build();
                messagingTemplate.send("event_bus_channel", message);
            }
        }

    }
}