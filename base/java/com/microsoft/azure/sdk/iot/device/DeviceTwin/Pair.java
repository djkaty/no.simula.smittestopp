package com.microsoft.azure.sdk.iot.device.DeviceTwin;

public class Pair<Type1, Type2> {
    public final Type1 key;
    public Type2 value;

    public Pair(Type1 type1, Type2 type2) {
        this.key = type1;
        this.value = type2;
    }

    public Type1 getKey() {
        return this.key;
    }

    public Type2 getValue() {
        return this.value;
    }

    public Type2 setValue(Type2 type2) {
        Type2 type22 = this.value;
        this.value = type2;
        return type22;
    }
}
