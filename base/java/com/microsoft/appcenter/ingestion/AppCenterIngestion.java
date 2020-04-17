package com.microsoft.appcenter.ingestion;

import com.microsoft.appcenter.Constants;
import com.microsoft.appcenter.http.AbstractAppCallTemplate;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.http.ServiceCall;
import com.microsoft.appcenter.http.ServiceCallback;
import com.microsoft.appcenter.ingestion.models.LogContainer;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import e.a.a.a.a;
import java.util.HashMap;
import java.util.UUID;

public class AppCenterIngestion implements Ingestion {
    public static final String API_PATH = "/logs?api-version=1.0.0";
    public static final String DEFAULT_LOG_URL = "https://in.appcenter.ms";
    public static final String INSTALL_ID = "Install-ID";
    public final HttpClient mHttpClient;
    public final LogSerializer mLogSerializer;
    public String mLogUrl = DEFAULT_LOG_URL;

    public static class IngestionCallTemplate extends AbstractAppCallTemplate {
        public final LogContainer mLogContainer;
        public final LogSerializer mLogSerializer;

        public IngestionCallTemplate(LogSerializer logSerializer, LogContainer logContainer) {
            this.mLogSerializer = logSerializer;
            this.mLogContainer = logContainer;
        }

        public String buildRequestBody() {
            return this.mLogSerializer.serializeContainer(this.mLogContainer);
        }
    }

    public AppCenterIngestion(HttpClient httpClient, LogSerializer logSerializer) {
        this.mLogSerializer = logSerializer;
        this.mHttpClient = httpClient;
    }

    public void close() {
        this.mHttpClient.close();
    }

    public void reopen() {
        this.mHttpClient.reopen();
    }

    public ServiceCall sendAsync(String str, UUID uuid, LogContainer logContainer, ServiceCallback serviceCallback) {
        HashMap hashMap = new HashMap();
        hashMap.put(INSTALL_ID, uuid.toString());
        hashMap.put(Constants.APP_SECRET, str);
        return this.mHttpClient.callAsync(a.a(new StringBuilder(), this.mLogUrl, API_PATH), "POST", hashMap, new IngestionCallTemplate(this.mLogSerializer, logContainer), serviceCallback);
    }

    public void setLogUrl(String str) {
        this.mLogUrl = str;
    }
}
