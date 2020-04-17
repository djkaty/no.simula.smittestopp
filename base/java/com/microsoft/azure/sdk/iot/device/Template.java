package com.microsoft.azure.sdk.iot.device;

import java.util.HashSet;
import java.util.Set;

public class Template {
    public Object templateTestPrivate;
    public Object templateTestPublic;
    public Set unionSet;

    public Template(Object obj) {
        if (obj != null) {
            this.templateTestPrivate = obj;
            this.templateTestPublic = new Object();
            return;
        }
        throw new IllegalArgumentException("Tag cannot be null");
    }

    public void addToSet(Set<?> set) {
        if (set == null || set.size() == 0) {
            throw new IllegalArgumentException("New set cannot be null or empty");
        }
        Set set2 = this.unionSet;
        if (set2 != null) {
            set2.addAll(set);
            return;
        }
        throw new IllegalStateException("Please open before use");
    }

    public void close() {
        Set set = this.unionSet;
        if (set != null) {
            set.clear();
            this.unionSet = null;
            this.templateTestPublic = null;
            this.templateTestPrivate = null;
        }
    }

    public Object getTemplateTestPrivate() {
        return this.templateTestPrivate;
    }

    public Set<?> getUnionSet() {
        return this.unionSet;
    }

    public void open() {
        if (this.unionSet == null) {
            this.unionSet = new HashSet();
        }
    }
}
