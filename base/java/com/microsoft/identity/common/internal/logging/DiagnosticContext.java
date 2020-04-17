package com.microsoft.identity.common.internal.logging;

public final class DiagnosticContext {
    public static final String CORRELATION_ID = "correlation_id";
    public static final ThreadLocal<IRequestContext> REQUEST_CONTEXT_THREAD_LOCAL = new ThreadLocal<IRequestContext>() {
        public RequestContext initialValue() {
            RequestContext requestContext = new RequestContext();
            requestContext.put("correlation_id", "UNSET");
            return requestContext;
        }
    };
    public static final String THREAD_ID = "thread_id";

    public static void clear() {
        REQUEST_CONTEXT_THREAD_LOCAL.remove();
    }

    public static IRequestContext getRequestContext() {
        if (!hasThreadId()) {
            setThreadId();
        }
        return REQUEST_CONTEXT_THREAD_LOCAL.get();
    }

    public static boolean hasThreadId() {
        return REQUEST_CONTEXT_THREAD_LOCAL.get().containsKey(THREAD_ID);
    }

    public static void setRequestContext(IRequestContext iRequestContext) {
        if (iRequestContext == null) {
            clear();
            return;
        }
        iRequestContext.put(THREAD_ID, String.valueOf(Thread.currentThread().getId()));
        REQUEST_CONTEXT_THREAD_LOCAL.set(iRequestContext);
    }

    public static void setThreadId() {
        REQUEST_CONTEXT_THREAD_LOCAL.get().put(THREAD_ID, String.valueOf(Thread.currentThread().getId()));
    }
}
