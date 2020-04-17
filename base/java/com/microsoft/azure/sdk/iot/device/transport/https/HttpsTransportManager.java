package com.microsoft.azure.sdk.iot.device.transport.https;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.IotHubMethod;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.ResponseMessage;
import com.microsoft.azure.sdk.iot.device.edge.MethodRequest;
import com.microsoft.azure.sdk.iot.device.edge.MethodResult;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.net.IotHubUri;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportManager;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import e.a.a.a.a;
import java.io.IOException;
import java.net.URI;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public class HttpsTransportManager implements IotHubTransportManager {
    public static final String DeviceMethodUriFormat = "/twins/%s/methods";
    public static final String MODULE_ID = "x-ms-edge-moduleId";
    public static final String ModuleMethodUriFormat = "/twins/%s/modules/%s/methods";
    public static final String PATH_FILES_STRING = "/files";
    public static final String PATH_NOTIFICATIONS_STRING = "/files/notifications";
    public DeviceClientConfig config;
    public HttpsIotHubConnection httpsIotHubConnection;

    /* renamed from: com.microsoft.azure.sdk.iot.device.transport.https.HttpsTransportManager$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMethod;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.IotHubMethod[] r0 = com.microsoft.azure.sdk.iot.device.IotHubMethod.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMethod = r0
                r1 = 1
                com.microsoft.azure.sdk.iot.device.IotHubMethod r2 = com.microsoft.azure.sdk.iot.device.IotHubMethod.GET     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMethod     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.sdk.iot.device.IotHubMethod r2 = com.microsoft.azure.sdk.iot.device.IotHubMethod.POST     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.https.HttpsTransportManager.AnonymousClass1.<clinit>():void");
        }
    }

    public HttpsTransportManager(DeviceClientConfig deviceClientConfig) {
        if (deviceClientConfig != null) {
            this.config = deviceClientConfig;
            return;
        }
        throw new IllegalArgumentException("config is null");
    }

    public static URI getDeviceMethodUri(String str) {
        return new URI(String.format(DeviceMethodUriFormat, new Object[]{URLEncoder.encode(str, "UTF-8")}));
    }

    public static URI getModuleMethodUri(String str, String str2) {
        return new URI(String.format(ModuleMethodUriFormat, new Object[]{URLEncoder.encode(str, "UTF-8"), URLEncoder.encode(str2, "UTF-8")}));
    }

    public void close() {
        this.httpsIotHubConnection = null;
    }

    public MethodResult invokeMethod(MethodRequest methodRequest, String str, String str2) {
        URI uri;
        if (str2 == null || str2.isEmpty()) {
            uri = getDeviceMethodUri(str);
        } else {
            uri = getModuleMethodUri(str, str2);
        }
        return invokeMethod(methodRequest, uri);
    }

    public void open() {
        this.httpsIotHubConnection = new HttpsIotHubConnection(this.config);
    }

    public Message receive() {
        try {
            return this.httpsIotHubConnection.receiveMessage();
        } catch (TransportException e2) {
            throw new IOException(e2);
        }
    }

    public ResponseMessage send(IotHubTransportMessage iotHubTransportMessage, Map<String, String> map) {
        HttpsMethod httpsMethod;
        HttpsSingleMessage parseHttpsJsonMessage = HttpsSingleMessage.parseHttpsJsonMessage(iotHubTransportMessage);
        if (iotHubTransportMessage.getIotHubMethod() == null || iotHubTransportMessage.getUriPath() == null) {
            throw new IllegalArgumentException("method or path is null");
        }
        int ordinal = iotHubTransportMessage.getIotHubMethod().ordinal();
        if (ordinal == 0) {
            httpsMethod = HttpsMethod.GET;
        } else if (ordinal == 1) {
            httpsMethod = HttpsMethod.POST;
        } else {
            StringBuilder a = a.a("Unknown IoT Hub type ");
            a.append(iotHubTransportMessage.getIotHubMethod().toString());
            throw new IllegalArgumentException(a.toString());
        }
        try {
            return this.httpsIotHubConnection.sendHttpsMessage(parseHttpsJsonMessage, httpsMethod, iotHubTransportMessage.getUriPath(), map);
        } catch (TransportException e2) {
            throw new IOException(e2);
        }
    }

    public ResponseMessage sendFileUploadMessage(IotHubTransportMessage iotHubTransportMessage) {
        iotHubTransportMessage.setUriPath(new IotHubUri("", this.config.getDeviceId(), PATH_FILES_STRING, this.config.getModuleId()).toStringWithoutApiVersion());
        return send(iotHubTransportMessage, new HashMap());
    }

    public ResponseMessage sendFileUploadNotification(IotHubTransportMessage iotHubTransportMessage) {
        iotHubTransportMessage.setUriPath(new IotHubUri("", this.config.getDeviceId(), PATH_NOTIFICATIONS_STRING, this.config.getModuleId()).toStringWithoutApiVersion());
        return send(iotHubTransportMessage, new HashMap());
    }

    public void open(String[] strArr) {
        this.httpsIotHubConnection = new HttpsIotHubConnection(this.config);
    }

    private MethodResult invokeMethod(MethodRequest methodRequest, URI uri) {
        if (methodRequest == null) {
            throw new IllegalArgumentException("direct method request cannot be null");
        } else if (uri == null || uri.toString().isEmpty()) {
            throw new IllegalArgumentException("uri cannot be null or be an empty path");
        } else {
            IotHubTransportMessage iotHubTransportMessage = new IotHubTransportMessage(methodRequest.toJson());
            iotHubTransportMessage.setIotHubMethod(IotHubMethod.POST);
            iotHubTransportMessage.setUriPath(uri.toString());
            HashMap hashMap = new HashMap();
            hashMap.put(MODULE_ID, this.config.getDeviceId() + "/" + this.config.getModuleId());
            ResponseMessage send = send(iotHubTransportMessage, hashMap);
            if (send.getStatus() == IotHubStatusCode.OK || send.getStatus() == IotHubStatusCode.OK_EMPTY) {
                return new MethodResult(new String(send.getBytes()));
            }
            throw IotHubStatusCode.getConnectionStatusException(send.getStatus(), new String(send.getBytes()));
        }
    }
}
