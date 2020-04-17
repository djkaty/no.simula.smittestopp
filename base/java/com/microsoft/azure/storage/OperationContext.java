package com.microsoft.azure.storage;

import java.net.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import k.f.b;
import k.f.c;

public final class OperationContext {
    public static final String defaultLoggerName = "ROOT";
    public static boolean enableLoggingByDefault = false;
    public static StorageEventMultiCaster<ErrorReceivingResponseEvent, StorageEvent<ErrorReceivingResponseEvent>> globalErrorReceivingResponseEventHandler = new StorageEventMultiCaster<>();
    public static StorageEventMultiCaster<RequestCompletedEvent, StorageEvent<RequestCompletedEvent>> globalRequestCompletedEventHandler = new StorageEventMultiCaster<>();
    public static StorageEventMultiCaster<ResponseReceivedEvent, StorageEvent<ResponseReceivedEvent>> globalResponseReceivedEventHandler = new StorageEventMultiCaster<>();
    public static StorageEventMultiCaster<RetryingEvent, StorageEvent<RetryingEvent>> globalRetryingEventHandler = new StorageEventMultiCaster<>();
    public static StorageEventMultiCaster<SendingRequestEvent, StorageEvent<SendingRequestEvent>> globalSendingRequestEventHandler = new StorageEventMultiCaster<>();
    public static Proxy proxyDefault;
    public String clientRequestID = UUID.randomUUID().toString();
    public long clientTimeInMs;
    public Boolean enableLogging;
    public StorageEventMultiCaster<ErrorReceivingResponseEvent, StorageEvent<ErrorReceivingResponseEvent>> errorReceivingResponseEventHandler = new StorageEventMultiCaster<>();
    public b logger;
    public Proxy proxy;
    public StorageEventMultiCaster<RequestCompletedEvent, StorageEvent<RequestCompletedEvent>> requestCompletedEventHandler = new StorageEventMultiCaster<>();
    public final ArrayList<RequestResult> requestResults = new ArrayList<>();
    public StorageEventMultiCaster<ResponseReceivedEvent, StorageEvent<ResponseReceivedEvent>> responseReceivedEventHandler = new StorageEventMultiCaster<>();
    public StorageEventMultiCaster<RetryingEvent, StorageEvent<RetryingEvent>> retryingEventHandler = new StorageEventMultiCaster<>();
    public StorageEventMultiCaster<SendingRequestEvent, StorageEvent<SendingRequestEvent>> sendingRequestEventHandler = new StorageEventMultiCaster<>();
    public HashMap<String, String> userHeaders;

    public static Proxy getDefaultProxy() {
        return proxyDefault;
    }

    public static StorageEventMultiCaster<ErrorReceivingResponseEvent, StorageEvent<ErrorReceivingResponseEvent>> getGlobalErrorReceivingResponseEventHandler() {
        return globalErrorReceivingResponseEventHandler;
    }

    public static StorageEventMultiCaster<RequestCompletedEvent, StorageEvent<RequestCompletedEvent>> getGlobalRequestCompletedEventHandler() {
        return globalRequestCompletedEventHandler;
    }

    public static StorageEventMultiCaster<ResponseReceivedEvent, StorageEvent<ResponseReceivedEvent>> getGlobalResponseReceivedEventHandler() {
        return globalResponseReceivedEventHandler;
    }

    public static StorageEventMultiCaster<RetryingEvent, StorageEvent<RetryingEvent>> getGlobalRetryingEventHandler() {
        return globalRetryingEventHandler;
    }

    public static StorageEventMultiCaster<SendingRequestEvent, StorageEvent<SendingRequestEvent>> getGlobalSendingRequestEventHandler() {
        return globalSendingRequestEventHandler;
    }

    public static boolean isLoggingEnabledByDefault() {
        return enableLoggingByDefault;
    }

    private synchronized void setDefaultLoggerSynchronized() {
        if (this.logger == null) {
            this.logger = c.a(defaultLoggerName);
        }
    }

    public static void setDefaultProxy(Proxy proxy2) {
        proxyDefault = proxy2;
    }

    public static void setGlobalErrorReceivingResponseEventHandler(StorageEventMultiCaster<ErrorReceivingResponseEvent, StorageEvent<ErrorReceivingResponseEvent>> storageEventMultiCaster) {
        globalErrorReceivingResponseEventHandler = storageEventMultiCaster;
    }

    public static void setGlobalRequestCompletedEventHandler(StorageEventMultiCaster<RequestCompletedEvent, StorageEvent<RequestCompletedEvent>> storageEventMultiCaster) {
        globalRequestCompletedEventHandler = storageEventMultiCaster;
    }

    public static void setGlobalResponseReceivedEventHandler(StorageEventMultiCaster<ResponseReceivedEvent, StorageEvent<ResponseReceivedEvent>> storageEventMultiCaster) {
        globalResponseReceivedEventHandler = storageEventMultiCaster;
    }

    public static void setGlobalRetryingEventHandler(StorageEventMultiCaster<RetryingEvent, StorageEvent<RetryingEvent>> storageEventMultiCaster) {
        globalRetryingEventHandler = storageEventMultiCaster;
    }

    public static void setGlobalSendingRequestEventHandler(StorageEventMultiCaster<SendingRequestEvent, StorageEvent<SendingRequestEvent>> storageEventMultiCaster) {
        globalSendingRequestEventHandler = storageEventMultiCaster;
    }

    public static void setLoggingEnabledByDefault(boolean z) {
        enableLoggingByDefault = z;
    }

    public synchronized void appendRequestResult(RequestResult requestResult) {
        this.requestResults.add(requestResult);
    }

    public String getClientRequestID() {
        return this.clientRequestID;
    }

    public long getClientTimeInMs() {
        return this.clientTimeInMs;
    }

    public StorageEventMultiCaster<ErrorReceivingResponseEvent, StorageEvent<ErrorReceivingResponseEvent>> getErrorReceivingResponseEventHandler() {
        return this.errorReceivingResponseEventHandler;
    }

    public synchronized RequestResult getLastResult() {
        if (this.requestResults != null) {
            if (this.requestResults.size() != 0) {
                return this.requestResults.get(this.requestResults.size() - 1);
            }
        }
        return null;
    }

    public b getLogger() {
        if (this.logger == null) {
            setDefaultLoggerSynchronized();
        }
        return this.logger;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public StorageEventMultiCaster<RequestCompletedEvent, StorageEvent<RequestCompletedEvent>> getRequestCompletedEventHandler() {
        return this.requestCompletedEventHandler;
    }

    public ArrayList<RequestResult> getRequestResults() {
        return this.requestResults;
    }

    public StorageEventMultiCaster<ResponseReceivedEvent, StorageEvent<ResponseReceivedEvent>> getResponseReceivedEventHandler() {
        return this.responseReceivedEventHandler;
    }

    public StorageEventMultiCaster<RetryingEvent, StorageEvent<RetryingEvent>> getRetryingEventHandler() {
        return this.retryingEventHandler;
    }

    public StorageEventMultiCaster<SendingRequestEvent, StorageEvent<SendingRequestEvent>> getSendingRequestEventHandler() {
        return this.sendingRequestEventHandler;
    }

    public HashMap<String, String> getUserHeaders() {
        return this.userHeaders;
    }

    public void initialize() {
        setClientTimeInMs(0);
        this.requestResults.clear();
    }

    public boolean isLoggingEnabled() {
        Boolean bool = this.enableLogging;
        if (bool == null) {
            return enableLoggingByDefault;
        }
        return bool.booleanValue();
    }

    public void setClientRequestID(String str) {
        this.clientRequestID = str;
    }

    public void setClientTimeInMs(long j2) {
        this.clientTimeInMs = j2;
    }

    public void setErrorReceivingResponseEventHandler(StorageEventMultiCaster<ErrorReceivingResponseEvent, StorageEvent<ErrorReceivingResponseEvent>> storageEventMultiCaster) {
        this.errorReceivingResponseEventHandler = storageEventMultiCaster;
    }

    public void setLogger(b bVar) {
        this.logger = bVar;
    }

    public void setLoggingEnabled(boolean z) {
        this.enableLogging = Boolean.valueOf(z);
    }

    public void setProxy(Proxy proxy2) {
        this.proxy = proxy2;
    }

    public void setRequestCompletedEventHandler(StorageEventMultiCaster<RequestCompletedEvent, StorageEvent<RequestCompletedEvent>> storageEventMultiCaster) {
        this.requestCompletedEventHandler = storageEventMultiCaster;
    }

    public void setResponseReceivedEventHandler(StorageEventMultiCaster<ResponseReceivedEvent, StorageEvent<ResponseReceivedEvent>> storageEventMultiCaster) {
        this.responseReceivedEventHandler = storageEventMultiCaster;
    }

    public void setRetryingEventHandler(StorageEventMultiCaster<RetryingEvent, StorageEvent<RetryingEvent>> storageEventMultiCaster) {
        this.retryingEventHandler = storageEventMultiCaster;
    }

    public void setSendingRequestEventHandler(StorageEventMultiCaster<SendingRequestEvent, StorageEvent<SendingRequestEvent>> storageEventMultiCaster) {
        this.sendingRequestEventHandler = storageEventMultiCaster;
    }

    public void setUserHeaders(HashMap<String, String> hashMap) {
        this.userHeaders = hashMap;
    }
}
