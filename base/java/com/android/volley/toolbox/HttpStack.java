package com.android.volley.toolbox;

import com.android.volley.Request;
import java.util.Map;
import org.apache.http.HttpResponse;

@Deprecated
public interface HttpStack {
    HttpResponse performRequest(Request<?> request, Map<String, String> map);
}
