package com.microsoft.azure.sdk.iot.device.DeviceTwin;

public interface PropertyCallBack<Type1, Type2> {
    void PropertyCall(Type1 type1, Type2 type2, Object obj);
}
