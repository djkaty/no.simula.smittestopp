package com.microsoft.azure.sdk.iot.deps.serializer;

import java.util.Map;

@Deprecated
public interface TwinPropertiesChangeCallback {
    void execute(Map<String, Object> map);
}
