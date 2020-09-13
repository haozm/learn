package org.learn.springchannel;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.amqp.core.AmqpAdmin;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.amqp.core.Queue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.ResourceUtils;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {ResourceUtils.CLASSPATH_URL_PREFIX + "spring-rabbit-cfg.xml"})
public class RabbitClientTester {

    @Autowired
    private AmqpTemplate amqpTemplate;
    @Autowired
    private AmqpAdmin amqpAdmin;

    @Test
    public void send() {
        amqpAdmin.declareQueue(new Queue("myqueue"));
        for (int i = 0; i < 100; i++) {
            amqpTemplate.convertAndSend("myqueue", String.format("foo-%d", i));
        }
    }

    @Test
    public void receive() {
        String foo = (String) amqpTemplate.receiveAndConvert("myqueue");
        System.out.println(foo);
    }
}
