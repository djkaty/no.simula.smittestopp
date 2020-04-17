package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import e.c.c.g;
import e.c.c.j;
import e.c.c.l;
import e.c.c.m;
import e.c.c.o;
import e.c.c.p;
import e.c.c.s;
import e.c.c.v.a;
import e.c.c.v.c;
import java.util.Map;

public class MethodParser {
    public static final String CONNECT_TIMEOUT_IN_SECONDS_TAG = "connectTimeoutInSeconds";
    public static final String METHOD_NAME_TAG = "methodName";
    public static final String PAYLOAD_TAG = "payload";
    public static final String RESPONSE_TIMEOUT_IN_SECONDS_TAG = "responseTimeoutInSeconds";
    public static final String STATUS_TAG = "status";
    @a(deserialize = false, serialize = true)
    @c("connectTimeoutInSeconds")
    public Long connectTimeout;
    @a(deserialize = false, serialize = true)
    @c("methodName")
    public String name;
    @a(deserialize = false, serialize = false)
    public Operation operation;
    @c("payload")
    public Object payload;
    @a(deserialize = false, serialize = true)
    @c("responseTimeoutInSeconds")
    public Long responseTimeout;
    @a(deserialize = true, serialize = false)
    @c("status")
    public Integer status;

    public enum Operation {
        invoke,
        response,
        payload,
        none
    }

    public MethodParser() {
        this.name = null;
        this.responseTimeout = null;
        this.connectTimeout = null;
        this.status = null;
        this.payload = null;
        this.operation = Operation.none;
    }

    private j jsonizePayload(Object obj) {
        if (obj == null) {
            return new l();
        }
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj instanceof Map) {
            m mVar = new m();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                mVar.a((String) entry.getKey(), jsonizePayload(entry.getValue()));
            }
            return mVar;
        }
        o oVar = new o();
        try {
            String obj2 = obj.toString();
            j a = oVar.a(obj2);
            if (a != null) {
                return a instanceof l ? new p(obj2) : a;
            }
            throw null;
        } catch (s unused) {
            return new Gson().b(obj);
        }
    }

    private void validateKey(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Key cannot be null or empty");
        } else if (str.length() > 128) {
            throw new IllegalArgumentException("Key cannot be longer than 128 characters");
        } else if (str.contains("$") || str.contains(CryptoConstants.ALIAS_SEPARATOR) || str.contains(" ")) {
            throw new IllegalArgumentException("Key cannot contain '$', '.', or space");
        }
    }

    private void validateTimeout(Long l2) {
        if (l2.longValue() < 0) {
            throw new IllegalArgumentException("Negative timeout");
        }
    }

    public synchronized void fromJson(String str) {
        if (str != null) {
            if (!str.isEmpty()) {
                try {
                    j a = new o().a(str);
                    if (!(a instanceof p)) {
                        if (!(a instanceof g)) {
                            if (a instanceof m) {
                                m mVar = (m) a;
                                j a2 = mVar.a("status");
                                j a3 = mVar.a("methodName");
                                if (a3 == null) {
                                    if (a2 == null) {
                                        this.operation = Operation.payload;
                                        this.payload = ParserUtility.getJsonObjectValue(mVar);
                                    } else {
                                        this.operation = Operation.response;
                                        if (a2 instanceof p) {
                                            this.status = Integer.valueOf(a2.a());
                                        }
                                        j a4 = mVar.a("payload");
                                        if (a4 != null) {
                                            this.payload = ParserUtility.resolveJsonElement(a4);
                                        }
                                    }
                                } else if (a2 == null) {
                                    this.operation = Operation.invoke;
                                    this.name = a3.f();
                                    j a5 = mVar.a("responseTimeoutInSeconds");
                                    if (a5 != null) {
                                        this.responseTimeout = Long.valueOf(a5.e());
                                    }
                                    j a6 = mVar.a("connectTimeoutInSeconds");
                                    if (a6 != null) {
                                        this.connectTimeout = Long.valueOf(a6.e());
                                    }
                                    j a7 = mVar.a("payload");
                                    if (a7 != null) {
                                        this.payload = ParserUtility.resolveJsonElement(a7);
                                    }
                                } else {
                                    throw new IllegalArgumentException("Invoke method name and Status reported in the same json");
                                }
                            } else {
                                throw new IllegalArgumentException("Invalid json.");
                            }
                        }
                    }
                    this.operation = Operation.payload;
                    this.payload = ParserUtility.resolveJsonElement(a);
                } catch (Exception e2) {
                    throw new IllegalArgumentException("Malformed json.", e2);
                }
            }
        }
        throw new IllegalArgumentException("Invalid json.");
    }

    public Object getPayload() {
        Object obj = this.payload;
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (jVar == null) {
                throw null;
            } else if ((jVar instanceof p) && (((p) obj).a instanceof String)) {
                return ((p) obj).f();
            }
        }
        return this.payload;
    }

    public Integer getStatus() {
        if (this.operation == Operation.response) {
            return this.status;
        }
        throw new IllegalArgumentException("No response to report status");
    }

    public String toJson() {
        return toJsonElement().toString();
    }

    public j toJsonElement() {
        Operation operation2 = this.operation;
        if (operation2 == Operation.invoke) {
            String str = this.name;
            if (str == null || str.isEmpty()) {
                throw new IllegalArgumentException("cannot invoke method with null name");
            }
            m mVar = new m();
            mVar.a("methodName", mVar.a((Object) this.name));
            Long l2 = this.responseTimeout;
            if (l2 != null) {
                mVar.a("responseTimeoutInSeconds", mVar.a((Object) l2));
            }
            Long l3 = this.connectTimeout;
            if (l3 != null) {
                mVar.a("connectTimeoutInSeconds", mVar.a((Object) l3));
            }
            mVar.a("payload", jsonizePayload(this.payload));
            return mVar;
        } else if (operation2 == Operation.response) {
            m mVar2 = new m();
            mVar2.a("status", mVar2.a((Object) this.status));
            mVar2.a("payload", jsonizePayload(this.payload));
            return mVar2;
        } else if (operation2 == Operation.payload) {
            return jsonizePayload(this.payload);
        } else {
            throw new IllegalArgumentException("There is no content to parser");
        }
    }

    public MethodParser(String str, Long l2, Long l3, Object obj) {
        this();
        validateKey(str);
        if (l2 != null) {
            validateTimeout(l2);
        }
        if (l3 != null) {
            validateTimeout(l3);
        }
        this.name = str;
        this.responseTimeout = l2;
        this.connectTimeout = l3;
        this.payload = obj;
        this.operation = Operation.invoke;
    }

    public MethodParser(Object obj) {
        this();
        this.payload = obj;
        this.operation = Operation.payload;
    }
}
