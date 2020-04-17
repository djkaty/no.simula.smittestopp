package com.microsoft.identity.client.claims;

import e.c.c.v.c;
import java.util.ArrayList;
import java.util.List;

public class RequestedClaimAdditionalInformation {
    @c("essential")
    public Boolean mEssential = false;
    @c("value")
    public Object mValue = null;
    @c("values")
    public List<Object> mValues = new ArrayList();

    public static final class SerializedNames {
        public static final String ESSENTIAL = "essential";
        public static final String VALUE = "value";
        public static final String VALUES = "values";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RequestedClaimAdditionalInformation)) {
            return false;
        }
        RequestedClaimAdditionalInformation requestedClaimAdditionalInformation = (RequestedClaimAdditionalInformation) obj;
        Boolean bool = this.mEssential;
        if (bool == null ? requestedClaimAdditionalInformation.mEssential != null : !bool.equals(requestedClaimAdditionalInformation.mEssential)) {
            return false;
        }
        List<Object> list = this.mValues;
        if (list == null ? requestedClaimAdditionalInformation.mValues != null : !list.equals(requestedClaimAdditionalInformation.mValues)) {
            return false;
        }
        Object obj2 = this.mValue;
        Object obj3 = requestedClaimAdditionalInformation.mValue;
        if (obj2 != null) {
            return obj2.equals(obj3);
        }
        if (obj3 == null) {
            return true;
        }
        return false;
    }

    public Boolean getEssential() {
        return this.mEssential;
    }

    public Object getValue() {
        return this.mValue;
    }

    public List<Object> getValues() {
        return this.mValues;
    }

    public int hashCode() {
        Boolean bool = this.mEssential;
        int i2 = 0;
        int hashCode = (bool != null ? bool.hashCode() : 0) * 31;
        List<Object> list = this.mValues;
        int hashCode2 = (hashCode + (list != null ? list.hashCode() : 0)) * 31;
        Object obj = this.mValue;
        if (obj != null) {
            i2 = obj.hashCode();
        }
        return hashCode2 + i2;
    }

    public void setEssential(Boolean bool) {
        this.mEssential = bool;
    }

    public void setValue(Object obj) {
        this.mValue = obj;
    }

    public void setValues(List<Object> list) {
        this.mValues = list;
    }
}
