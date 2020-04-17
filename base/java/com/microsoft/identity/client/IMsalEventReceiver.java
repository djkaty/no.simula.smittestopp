package com.microsoft.identity.client;

import java.util.List;
import java.util.Map;

public interface IMsalEventReceiver {
    void onEventsReceived(List<Map<String, String>> list);
}
