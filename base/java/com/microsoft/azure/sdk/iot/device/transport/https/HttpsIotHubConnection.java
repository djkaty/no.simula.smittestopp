package com.microsoft.azure.sdk.iot.device.transport.https;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.IotHubMessageResult;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageProperty;
import com.microsoft.azure.sdk.iot.device.ResponseMessage;
import com.microsoft.azure.sdk.iot.device.exceptions.IotHubServiceException;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.net.IotHubAbandonUri;
import com.microsoft.azure.sdk.iot.device.net.IotHubCompleteUri;
import com.microsoft.azure.sdk.iot.device.net.IotHubEventUri;
import com.microsoft.azure.sdk.iot.device.net.IotHubMessageUri;
import com.microsoft.azure.sdk.iot.device.net.IotHubRejectUri;
import com.microsoft.azure.sdk.iot.device.net.IotHubUri;
import com.microsoft.azure.sdk.iot.device.transport.IotHubListener;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportConnection;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.identity.client.internal.MsalUtils;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import javax.net.ssl.SSLContext;
import k.f.b;
import k.f.c;

public class HttpsIotHubConnection implements IotHubTransportConnection {
    public static final String HTTPS_HEAD_TAG = "https://";
    public static final String HTTPS_PROPERTY_AUTHORIZATION_TAG = "authorization";
    public static final String HTTPS_PROPERTY_CONTENT_TYPE_TAG = "content-type";
    public static final String HTTPS_PROPERTY_ETAG_TAG = "etag";
    public static final String HTTPS_PROPERTY_IF_MATCH_TAG = "if-match";
    public static final String HTTPS_PROPERTY_IOTHUB_MESSAGELOCKTIMEOUT_TAG = "iothub-messagelocktimeout";
    public static final String HTTPS_PROPERTY_IOTHUB_TO_TAG = "iothub-to";
    public static final b log = c.a((Class<?>) HttpsIotHubConnection.class);
    public final Object HTTPS_CONNECTION_LOCK = new Object();
    public final DeviceClientConfig config;
    public IotHubListener listener;
    public Map<Message, String> messageToETagMap = new HashMap();

    /* renamed from: com.microsoft.azure.sdk.iot.device.transport.https.HttpsIotHubConnection$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMessageResult;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|(2:1|2)|3|5|6|7|8|10) */
        /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0016 */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult[] r0 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMessageResult = r0
                r1 = 1
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r2 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.COMPLETE     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMessageResult     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r3 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.ABANDON     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                int[] r1 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMessageResult     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r2 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.REJECT     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 3
                r1[r0] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.https.HttpsIotHubConnection.AnonymousClass1.<clinit>():void");
        }
    }

    public HttpsIotHubConnection(DeviceClientConfig deviceClientConfig) {
        synchronized (this.HTTPS_CONNECTION_LOCK) {
            this.config = deviceClientConfig;
        }
    }

    private URL buildUrlFromString(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e2) {
            throw new TransportException("Could not build HTTP url", e2);
        }
    }

    private String getHostName() {
        String gatewayHostname = this.config.getGatewayHostname();
        return (gatewayHostname == null || gatewayHostname.isEmpty()) ? this.config.getIotHubHostname() : gatewayHostname;
    }

    private SSLContext getSSLContext() {
        try {
            return this.config.getAuthenticationProvider().getSSLContext();
        } catch (IOException e2) {
            throw new TransportException((Throwable) e2);
        }
    }

    private String getSasToken() {
        try {
            return this.config.getSasTokenAuthentication().getRenewedSasToken(false, false);
        } catch (IOException e2) {
            throw new TransportException((Throwable) e2);
        }
    }

    public static String sanitizeEtag(String str) {
        return str.replace("\"", "");
    }

    private HttpsResponse sendRequest(HttpsRequest httpsRequest) {
        httpsRequest.setReadTimeoutMillis(this.config.getReadTimeoutMillis());
        if (this.config.getAuthenticationType() == DeviceClientConfig.AuthType.SAS_TOKEN) {
            httpsRequest.setHeaderField("authorization", getSasToken());
        }
        httpsRequest.setSSLContext(getSSLContext());
        return httpsRequest.send();
    }

    public void close() {
    }

    public String getConnectionId() {
        return "";
    }

    public void open(Queue<DeviceClientConfig> queue, ScheduledExecutorService scheduledExecutorService) {
    }

    public IotHubTransportMessage receiveMessage() {
        IotHubTransportMessage iotHubTransportMessage;
        synchronized (this.HTTPS_CONNECTION_LOCK) {
            IotHubMessageUri iotHubMessageUri = new IotHubMessageUri(getHostName(), this.config.getDeviceId(), this.config.getModuleId());
            HttpsRequest headerField = new HttpsRequest(buildUrlFromString("https://" + iotHubMessageUri.toString()), HttpsMethod.GET, new byte[0], this.config.getProductInfo().getUserAgentString(), this.config.getProxySettings()).setHeaderField("iothub-to", iotHubMessageUri.getPath()).setHeaderField(HTTPS_PROPERTY_IOTHUB_MESSAGELOCKTIMEOUT_TAG, Integer.toString(this.config.getMessageLockTimeoutSecs()));
            log.e("Sending http request to check if any messages are ready to be received...");
            HttpsResponse sendRequest = sendRequest(headerField);
            iotHubTransportMessage = null;
            if (IotHubStatusCode.getIotHubStatusCode(sendRequest.getStatus()) == IotHubStatusCode.OK) {
                String sanitizeEtag = sanitizeEtag(sendRequest.getHeaderField("etag"));
                Message message = HttpsSingleMessage.parseHttpsMessage(sendRequest).toMessage();
                IotHubTransportMessage iotHubTransportMessage2 = new IotHubTransportMessage(message.getBytes(), message.getMessageType(), message.getMessageId(), message.getCorrelationId(), message.getProperties());
                iotHubTransportMessage2.setMessageCallback(this.config.getDeviceTelemetryMessageCallback(message.getInputName()));
                iotHubTransportMessage2.setMessageCallbackContext(this.config.getDeviceTelemetryMessageContext(message.getInputName()));
                log.e("Received http message with etag {} in transport message ({})", sanitizeEtag, iotHubTransportMessage2);
                this.messageToETagMap.put(iotHubTransportMessage2, sanitizeEtag);
                iotHubTransportMessage = iotHubTransportMessage2;
            }
        }
        return iotHubTransportMessage;
    }

    public ResponseMessage sendHttpsMessage(HttpsMessage httpsMessage, HttpsMethod httpsMethod, String str, Map<String, String> map) {
        ResponseMessage responseMessage;
        synchronized (this.HTTPS_CONNECTION_LOCK) {
            HttpsRequest httpsRequest = new HttpsRequest(buildUrlFromString("https://" + getHostName() + str + MsalUtils.QUERY_STRING_SYMBOL + IotHubUri.API_VERSION), httpsMethod, httpsMessage.getBody(), this.config.getProductInfo().getUserAgentString(), this.config.getProxySettings());
            for (MessageProperty messageProperty : httpsMessage.getProperties()) {
                httpsRequest.setHeaderField(messageProperty.getName(), messageProperty.getValue());
            }
            httpsRequest.setHeaderField("iothub-to", str).setHeaderField(HTTPS_PROPERTY_CONTENT_TYPE_TAG, httpsMessage.getContentType());
            for (String next : map.keySet()) {
                httpsRequest.setHeaderField(next, map.get(next));
            }
            HttpsResponse sendRequest = sendRequest(httpsRequest);
            responseMessage = new ResponseMessage(sendRequest.getBody(), IotHubStatusCode.getIotHubStatusCode(sendRequest.getStatus()));
        }
        return responseMessage;
    }

    public IotHubStatusCode sendMessage(Message message) {
        IotHubStatusCode iotHubStatusCode;
        synchronized (this.HTTPS_CONNECTION_LOCK) {
            HttpsSingleMessage parseHttpsMessage = HttpsSingleMessage.parseHttpsMessage(message);
            IotHubEventUri iotHubEventUri = new IotHubEventUri(getHostName(), this.config.getDeviceId(), this.config.getModuleId());
            HttpsRequest httpsRequest = new HttpsRequest(buildUrlFromString("https://" + iotHubEventUri.toString()), HttpsMethod.POST, parseHttpsMessage.getBody(), this.config.getProductInfo().getUserAgentString(), this.config.getProxySettings());
            for (MessageProperty messageProperty : parseHttpsMessage.getProperties()) {
                httpsRequest.setHeaderField(messageProperty.getName(), messageProperty.getValue());
            }
            if (message.getContentEncoding() != null) {
                httpsRequest.setHeaderField("iothub-contentencoding", message.getContentEncoding());
            }
            if (message.getContentType() != null) {
                httpsRequest.setHeaderField("iothub-contenttype", message.getContentType());
            }
            if (message.getCreationTimeUTC() != null) {
                httpsRequest.setHeaderField(MessageProperty.IOTHUB_CREATION_TIME_UTC, message.getCreationTimeUTCString());
            }
            if (message.isSecurityMessage()) {
                httpsRequest.setHeaderField(MessageProperty.IOTHUB_SECURITY_INTERFACE_ID, MessageProperty.IOTHUB_SECURITY_INTERFACE_ID_VALUE);
            }
            Map<String, String> systemProperties = parseHttpsMessage.getSystemProperties();
            for (String next : systemProperties.keySet()) {
                httpsRequest.setHeaderField(next, systemProperties.get(next));
            }
            httpsRequest.setHeaderField("iothub-to", iotHubEventUri.getPath()).setHeaderField(HTTPS_PROPERTY_CONTENT_TYPE_TAG, parseHttpsMessage.getContentType());
            log.d("Sending message using http request ({})", (Object) message);
            iotHubStatusCode = IotHubStatusCode.getIotHubStatusCode(sendRequest(httpsRequest).getStatus());
            log.e("Iot Hub responded to http message for iot hub message ({}) with status code {}", message, iotHubStatusCode);
            IotHubTransportMessage iotHubTransportMessage = new IotHubTransportMessage(message.getBytes(), message.getMessageType(), message.getMessageId(), message.getCorrelationId(), message.getProperties());
            if (iotHubStatusCode != IotHubStatusCode.OK) {
                if (iotHubStatusCode != IotHubStatusCode.OK_EMPTY) {
                    this.listener.onMessageSent(iotHubTransportMessage, IotHubStatusCode.getConnectionStatusException(iotHubStatusCode, ""));
                }
            }
            this.listener.onMessageSent(iotHubTransportMessage, (Throwable) null);
        }
        return iotHubStatusCode;
    }

    public boolean sendMessageResult(Message message, IotHubMessageResult iotHubMessageResult) {
        String str;
        HttpsRequest httpsRequest;
        synchronized (this.HTTPS_CONNECTION_LOCK) {
            log.d("Checking if http layer can correlate the received iot hub message to a received etag {}", (Object) message);
            String str2 = this.messageToETagMap.get(message);
            if (str2 != null) {
                log.e("Http layer correlated the received iot hub message ({}) to etag {}", message, str2);
                log.e("Sending ACK with result {} for etag {}", iotHubMessageResult, str2);
                String hostName = getHostName();
                String deviceId = this.config.getDeviceId();
                int ordinal = iotHubMessageResult.ordinal();
                if (ordinal == 0) {
                    IotHubCompleteUri iotHubCompleteUri = new IotHubCompleteUri(hostName, deviceId, str2, this.config.getModuleId());
                    String str3 = "https://" + iotHubCompleteUri.toString();
                    str = iotHubCompleteUri.getPath();
                    httpsRequest = new HttpsRequest(buildUrlFromString(str3), HttpsMethod.DELETE, new byte[0], this.config.getProductInfo().getUserAgentString(), this.config.getProxySettings());
                } else if (ordinal == 1) {
                    IotHubAbandonUri iotHubAbandonUri = new IotHubAbandonUri(hostName, deviceId, str2, this.config.getModuleId());
                    String str4 = "https://" + iotHubAbandonUri.toString();
                    str = iotHubAbandonUri.getPath();
                    httpsRequest = new HttpsRequest(buildUrlFromString(str4), HttpsMethod.POST, new byte[1], this.config.getProductInfo().getUserAgentString(), this.config.getProxySettings());
                } else if (ordinal == 2) {
                    IotHubRejectUri iotHubRejectUri = new IotHubRejectUri(hostName, deviceId, str2, this.config.getModuleId());
                    String str5 = "https://" + iotHubRejectUri.toString();
                    str = iotHubRejectUri.getPath();
                    httpsRequest = new HttpsRequest(buildUrlFromString(str5), HttpsMethod.DELETE, new byte[0], this.config.getProductInfo().getUserAgentString(), this.config.getProxySettings());
                } else {
                    throw new IllegalStateException("Invalid message result specified.");
                }
                httpsRequest.setHeaderField("iothub-to", str).setHeaderField(HTTPS_PROPERTY_IF_MATCH_TAG, str2);
                IotHubStatusCode iotHubStatusCode = IotHubStatusCode.getIotHubStatusCode(sendRequest(httpsRequest).getStatus());
                if (iotHubStatusCode != IotHubStatusCode.OK_EMPTY) {
                    if (iotHubStatusCode != IotHubStatusCode.OK) {
                        throw new IotHubServiceException(String.format("Sending message result failed with status %s.%n", new Object[]{iotHubStatusCode.name()}));
                    }
                }
                log.d("Successfully sent ack for http message with etag {}. Removing it from saved list of outstanding messages to acknowledge", (Object) str2);
                this.messageToETagMap.remove(message);
            } else {
                throw new IllegalStateException("Cannot send a message result before a message is received or if the result was already sent");
            }
        }
        return true;
    }

    public void setListener(IotHubListener iotHubListener) {
        if (iotHubListener != null) {
            this.listener = iotHubListener;
            return;
        }
        throw new IllegalArgumentException("Listener cannot be null");
    }
}
