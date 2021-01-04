package org.learn.springchannel;

import org.apache.commons.collections4.MapUtils;
import org.springframework.integration.core.MessageSelector;
import org.springframework.messaging.Message;

import java.util.Map;

public class MessageSelectorImpl implements MessageSelector {

    @Override
    public boolean accept(Message<?> message) {
        Object payload = message.getPayload();
        if (payload instanceof Map) {
            Map<String, Object> mapPayload = (Map<String, Object>) payload;
            int index = MapUtils.getIntValue(mapPayload, "index", 0);
            return index >= 1000;
        }
        return false;
    }

}
