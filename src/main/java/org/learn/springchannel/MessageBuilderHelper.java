package org.learn.springchannel;

import org.springframework.messaging.Message;

public class MessageBuilderHelper {

    public MessageBuilderHelper() {
    }

    public void receivePub(Message<?> message) {
        System.out.println("Pub:" + message);
    }

    public void receiveConf(Message<?> message) {
        System.out.println("Conf:" + message);
    }
}
