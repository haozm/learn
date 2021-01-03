package org.learn.springchannel;

import org.apache.commons.lang3.RandomUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.Message;

import java.util.Random;
import java.util.concurrent.TimeUnit;

public class MessageBuilderHelper {

    final Logger logger = LoggerFactory.getLogger(MessageBuilderHelper.class);

    public MessageBuilderHelper() {
    }

    public void receivePub(Message<?> message) {
        logger.info("Pub:" + message);
    }

    public void receiveConf(Message<?> message) {
        logger.info("Conf:" + message);
    }

    public void delayConf(Message<?> message) {
        logger.info("delayConf:" + message);
        try {
            TimeUnit.MILLISECONDS.sleep(RandomUtils.nextInt(10,100));
        } catch (Exception e) {

        }
    }
}
