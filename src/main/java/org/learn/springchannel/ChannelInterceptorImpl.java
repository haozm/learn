package org.learn.springchannel;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.support.ChannelInterceptor;

public class ChannelInterceptorImpl implements ChannelInterceptor {

    final Logger logger = LoggerFactory.getLogger(ChannelInterceptorImpl.class);

    @Override
    public Message<?> preSend(Message<?> message, MessageChannel channel) {
        logger.info("preSend(Message<?> {}, MessageChannel {}})", message, channel);
        return message;
    }

    @Override
    public void postSend(Message<?> message, MessageChannel channel, boolean sent) {
        logger.info("postSend(Message<?> {}, MessageChannel {}, boolean {}})", message, channel, sent);
    }

    @Override
    public void afterSendCompletion(Message<?> message, MessageChannel channel, boolean sent, Exception ex) {
        logger.info("afterSendCompletion(Message<?> {}, MessageChannel {}, boolean {}})", message, channel, sent);
    }

    @Override
    public boolean preReceive(MessageChannel channel) {
        logger.info("preReceive(Message<?> {}})", channel);
        return false;
    }

    @Override
    public Message<?> postReceive(Message<?> message, MessageChannel channel) {
        logger.info("postReceive(Message<?> {},MessageChannel {}})", message, channel);
        return message;
    }

    @Override
    public void afterReceiveCompletion(Message<?> message, MessageChannel channel, Exception ex) {
        logger.info("afterReceiveCompletion(Message<?> {},MessageChannel {}})", message, channel);
    }
}
