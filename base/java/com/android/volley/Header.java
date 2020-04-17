package com.android.volley;

import android.text.TextUtils;
import e.a.a.a.a;

public final class Header {
    public final String mName;
    public final String mValue;

    public Header(String str, String str2) {
        this.mName = str;
        this.mValue = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Header.class != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        if (!TextUtils.equals(this.mName, header.mName) || !TextUtils.equals(this.mValue, header.mValue)) {
            return false;
        }
        return true;
    }

    public final String getName() {
        return this.mName;
    }

    public final String getValue() {
        return this.mValue;
    }

    public int hashCode() {
        return this.mValue.hashCode() + (this.mName.hashCode() * 31);
    }

    public String toString() {
        StringBuilder a = a.a("Header[name=");
        a.append(this.mName);
        a.append(",value=");
        return a.a(a, this.mValue, "]");
    }
}
