package com.microsoft.azure.sdk.iot.device.DeviceTwin;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

public abstract class Device implements PropertyCallBack<String, Object> {
    public HashMap<Property, Pair<PropertyCallBack<String, Object>, Object>> desiredProp = new HashMap<>();
    public HashSet<Property> reportedProp = new HashSet<>();

    public void clean() {
        HashSet<Property> hashSet = this.reportedProp;
        if (hashSet != null) {
            Iterator<Property> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next();
                it.remove();
            }
        }
        HashMap<Property, Pair<PropertyCallBack<String, Object>, Object>> hashMap = this.desiredProp;
        if (hashMap != null) {
            Iterator<Map.Entry<Property, Pair<PropertyCallBack<String, Object>, Object>>> it2 = hashMap.entrySet().iterator();
            while (it2.hasNext()) {
                it2.next();
                it2.remove();
            }
        }
    }

    public HashMap<Property, Pair<PropertyCallBack<String, Object>, Object>> getDesiredProp() {
        return this.desiredProp;
    }

    public HashSet<Property> getReportedProp() {
        return this.reportedProp;
    }

    public void setDesiredPropertyCallback(Property property, PropertyCallBack<String, Object> propertyCallBack, Object obj) {
        if (property != null) {
            this.desiredProp.put(property, new Pair(propertyCallBack, obj));
            return;
        }
        throw new IllegalArgumentException("desired property cannot be null");
    }

    public void setReportedProp(Property property) {
        if (property != null) {
            Property property2 = null;
            Iterator<Property> it = this.reportedProp.iterator();
            while (it.hasNext()) {
                Property next = it.next();
                if (next.getKey().equalsIgnoreCase(property.getKey())) {
                    property2 = next;
                }
            }
            if (property2 != null) {
                this.reportedProp.remove(property2);
            }
            this.reportedProp.add(property);
            return;
        }
        throw new IllegalArgumentException("Reported property cannot be null");
    }
}
