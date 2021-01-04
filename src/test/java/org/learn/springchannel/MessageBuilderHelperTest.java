package org.learn.springchannel;

import com.google.common.base.Stopwatch;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.util.concurrent.RateLimiter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.integration.channel.QueueChannel;
import org.springframework.integration.core.MessagingTemplate;
import org.springframework.integration.endpoint.PollingConsumer;
import org.springframework.integration.filter.MessageFilter;
import org.springframework.integration.handler.BridgeHandler;
import org.springframework.integration.handler.LoggingHandler;
import org.springframework.integration.handler.advice.HandleMessageAdviceAdapter;
import org.springframework.integration.handler.advice.RateLimiterRequestHandlerAdvice;
import org.springframework.integration.scheduling.PollSkipAdvice;
import org.springframework.integration.scheduling.SimplePollSkipStrategy;
import org.springframework.integration.support.MessageBuilder;
import org.springframework.messaging.Message;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.ResourceUtils;

import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {ResourceUtils.CLASSPATH_URL_PREFIX + "spring-nodb-cfg.xml"})
public class MessageBuilderHelperTest {
    //    LoggingHandler
//    ThreadPoolTaskExecutor
//    PollingConsumer
    final Logger logger = LoggerFactory.getLogger(MessageBuilderHelperTest.class);
    @Autowired
    private MessagingTemplate messagingTemplate;
    //    QueueChannel
//    BridgeHandler
//    MessageFilter
//    HandleMessageAdviceAdapter
//    RateLimiterRequestHandlerAdvice
    @Autowired
    private ApplicationContext appCtx;

    @Test
    public void sendMsg() {
        if (logger.isDebugEnabled())
            logger.debug("[{}] start..................", "sendMsg()");
        Random random = new Random();
        for (int i = 0; i < 20; i++) {
            int index = random.nextInt(2000);
            Map<String, Object> payload = Maps.newHashMap();
            payload.put("index", index);
            payload.put("factory", String.format("factory=%d", index));
            Message<?> message = MessageBuilder.withPayload(payload).setHeader("tag", "pud")
                    .setHeader("index", index).build();
            messagingTemplate.send("event_bus_channel", message);
        }
    }

    @Test
    public void sendMsg01() {
        List<String> list = Lists.newArrayList();
        for (int j = 0; j < 10; j++) {
            list.add(String.format("I am %d user.....,lalalalal.", j));
        }
        Message<?> message = MessageBuilder.withPayload(list).setHeader("tag", "conf")
                .setHeader("index", 20).build();
        messagingTemplate.send("conf_spliter_channel", message);
    }

    @Test
    public void queueChannel() {
        if (logger.isDebugEnabled())
            logger.debug("[{}] start..................", "queueChannel()");
        Random random = new Random();
        QueueChannel queueChannel = appCtx.getBean("queueChannel", QueueChannel.class);
        ThreadPoolTaskExecutor taskExecutor = appCtx.getBean("myExec", ThreadPoolTaskExecutor.class);
        int i = 0;
        while (true) {
            rateLimiter.acquire();
            int index = random.nextInt(2000);
            Map<String, Object> payload = Maps.newHashMap();
            payload.put("index", index);
            payload.put("factory", String.format("factory=%d", index));
            Message<?> message = MessageBuilder.withPayload(payload).setHeader("tag", "pud")
                    .setHeader("index", index).build();
            messagingTemplate.send("queueChannel", message);
            i++;
            if (i % 10 == 0) {
                logger.debug("[=============][queeue size is] {}", queueChannel.getQueueSize());
                logger.debug("[=============][taskExecutor size is] {}", taskExecutor.getThreadPoolExecutor().getQueue().size());
            }

        }
    }

    private final RateLimiter rateLimiter = RateLimiter.create(1200.0);
    // RateLimiterRequestHandlerAdvice

    @Test
    public void acquire() {
        int index = 0;
        Stopwatch stopwatch = Stopwatch.createStarted();
        while (true) {
            rateLimiter.acquire();
            System.out.println("A am " + index);
            System.out.println(stopwatch.elapsed(TimeUnit.MILLISECONDS));
            index++;
        }
    }

    //    PollSkipAdvice
    @Test
    public void failoverChannel() {
        if (logger.isDebugEnabled())
            logger.debug("[{}] start..................", "failoverChannel()");
        Random random = new Random();
        for (int i = 0; i < 2; i++) {
            int index = random.nextInt(2000);
            Map<String, Object> payload = Maps.newHashMap();
            payload.put("index", index);
            payload.put("factory", String.format("factory=%d", index));
            Message<?> message = MessageBuilder.withPayload(payload).setHeader("tag", "pud")
                    .setHeader("index", index).build();
            messagingTemplate.send("failoverChannel", message);
        }
    }
//    SimplePollSkipStrategy

    @Test
    public void channelInterceptor() {
        if (logger.isDebugEnabled())
            logger.debug("[{}] start..................", "channelInterceptor()");
        Map<String, Object> payload = Maps.newHashMap();
        payload.put("index", 1500);
        payload.put("factory", String.format("factory=%d", 1500));
        Message<?> message = MessageBuilder.withPayload(payload).setHeader("tag", "pud")
                .setHeader("index", 1500).build();
        messagingTemplate.send("event_bus_channel", message);
    }

}