package com.android.volley.toolbox;

import com.android.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class HttpResponse {
    public final InputStream mContent;
    public final int mContentLength;
    public final List<Header> mHeaders;
    public final int mStatusCode;

    public HttpResponse(int i2, List<Header> list) {
        this(i2, list, -1, (InputStream) null);
    }

    public final InputStream getContent() {
        return this.mContent;
    }

    public final int getContentLength() {
        return this.mContentLength;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.mHeaders);
    }

    public final int getStatusCode() {
        return this.mStatusCode;
    }

    public HttpResponse(int i2, List<Header> list, int i3, InputStream inputStream) {
        this.mStatusCode = i2;
        this.mHeaders = list;
        this.mContentLength = i3;
        this.mContent = inputStream;
    }
}
