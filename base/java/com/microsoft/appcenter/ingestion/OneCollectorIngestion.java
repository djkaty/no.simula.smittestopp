package com.microsoft.appcenter.ingestion;

import com.microsoft.appcenter.Constants;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.http.HttpUtils;
import com.microsoft.appcenter.http.ServiceCall;
import com.microsoft.appcenter.http.ServiceCallback;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.LogContainer;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import com.microsoft.appcenter.ingestion.models.one.CommonSchemaLog;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.TicketCache;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class OneCollectorIngestion implements Ingestion {
    public static final String API_KEY = "apikey";
    public static final String CLIENT_VERSION_FORMAT = "ACS-Android-Java-no-%s-no";
    public static final String CLIENT_VERSION_KEY = "Client-Version";
    public static final String CONTENT_TYPE_VALUE = "application/x-json-stream; charset=utf-8";
    public static final String DEFAULT_LOG_URL = "https://mobile.events.data.microsoft.com/OneCollector/1.0";
    public static final String STRICT = "Strict";
    public static final String TICKETS = "Tickets";
    public static final String UPLOAD_TIME_KEY = "Upload-Time";
    public final HttpClient mHttpClient;
    public final LogSerializer mLogSerializer;
    public String mLogUrl = DEFAULT_LOG_URL;

    public static class IngestionCallTemplate implements HttpClient.CallTemplate {
        public final LogContainer mLogContainer;
        public final LogSerializer mLogSerializer;

        public IngestionCallTemplate(LogSerializer logSerializer, LogContainer logContainer) {
            this.mLogSerializer = logSerializer;
            this.mLogContainer = logContainer;
        }

        public String buildRequestBody() {
            StringBuilder sb = new StringBuilder();
            for (Log serializeLog : this.mLogContainer.getLogs()) {
                sb.append(this.mLogSerializer.serializeLog(serializeLog));
                sb.append(10);
            }
            return sb.toString();
        }

        public void onBeforeCalling(URL url, Map<String, String> map) {
            if (AppCenterLog.getLogLevel() <= 2) {
                AppCenterLog.verbose("AppCenter", "Calling " + url + "...");
                HashMap hashMap = new HashMap(map);
                String str = (String) hashMap.get(OneCollectorIngestion.API_KEY);
                if (str != null) {
                    hashMap.put(OneCollectorIngestion.API_KEY, HttpUtils.hideApiKeys(str));
                }
                String str2 = (String) hashMap.get(OneCollectorIngestion.TICKETS);
                if (str2 != null) {
                    hashMap.put(OneCollectorIngestion.TICKETS, HttpUtils.hideTickets(str2));
                }
                AppCenterLog.verbose("AppCenter", "Headers: " + hashMap);
            }
        }
    }

    public OneCollectorIngestion(HttpClient httpClient, LogSerializer logSerializer) {
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
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Log transmissionTargetTokens : logContainer.getLogs()) {
            linkedHashSet.addAll(transmissionTargetTokens.getTransmissionTargetTokens());
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append(",");
        }
        if (!linkedHashSet.isEmpty()) {
            sb.deleteCharAt(sb.length() - 1);
        }
        hashMap.put(API_KEY, sb.toString());
        JSONObject jSONObject = new JSONObject();
        Iterator<Log> it2 = logContainer.getLogs().iterator();
        while (it2.hasNext()) {
            List<String> ticketKeys = ((CommonSchemaLog) it2.next()).getExt().getProtocol().getTicketKeys();
            if (ticketKeys != null) {
                for (String next : ticketKeys) {
                    String ticket = TicketCache.getTicket(next);
                    if (ticket != null) {
                        try {
                            jSONObject.put(next, ticket);
                        } catch (JSONException e2) {
                            AppCenterLog.error("AppCenter", "Cannot serialize tickets, sending log anonymously", e2);
                        }
                    }
                }
            }
        }
        if (jSONObject.length() > 0) {
            hashMap.put(TICKETS, jSONObject.toString());
            if (Constants.APPLICATION_DEBUGGABLE) {
                hashMap.put(STRICT, Boolean.TRUE.toString());
            }
        }
        hashMap.put("Content-Type", CONTENT_TYPE_VALUE);
        hashMap.put(CLIENT_VERSION_KEY, String.format(CLIENT_VERSION_FORMAT, new Object[]{"3.1.0"}));
        hashMap.put(UPLOAD_TIME_KEY, String.valueOf(System.currentTimeMillis()));
        return this.mHttpClient.callAsync(this.mLogUrl, "POST", hashMap, new IngestionCallTemplate(this.mLogSerializer, logContainer), serviceCallback);
    }

    public void setLogUrl(String str) {
        this.mLogUrl = str;
    }
}
