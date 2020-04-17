package com.microsoft.azure.sdk.iot.device;

import com.microsoft.azure.sdk.iot.deps.serializer.ParserUtility;
import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethodCallback;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.PropertyCallBack;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.TwinPropertyCallBack;
import com.microsoft.azure.sdk.iot.device.TransportClient;
import com.microsoft.azure.sdk.iot.device.fileupload.FileUpload;
import com.microsoft.azure.sdk.iot.device.transport.amqps.IoTHubConnectionType;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import e.a.a.a.a;
import java.io.Closeable;
import java.io.IOError;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import javax.net.ssl.SSLContext;
import k.f.b;
import k.f.c;

public final class DeviceClient extends InternalClient implements Closeable {
    @Deprecated
    public static final Charset CONNECTION_STRING_CHARSET = StandardCharsets.UTF_8;
    @Deprecated
    public static final String DEVICE_ID_ATTRIBUTE = "DeviceId=";
    @Deprecated
    public static final String HOSTNAME_ATTRIBUTE = "HostName=";
    @Deprecated
    public static long RECEIVE_PERIOD_MILLIS_AMQPS = 10;
    @Deprecated
    public static long RECEIVE_PERIOD_MILLIS_HTTPS = 1500000;
    @Deprecated
    public static long RECEIVE_PERIOD_MILLIS_MQTT = 10;
    @Deprecated
    public static long SEND_PERIOD_MILLIS = 10;
    @Deprecated
    public static final String SHARED_ACCESS_KEY_ATTRIBUTE = "SharedAccessKey=";
    @Deprecated
    public static final String SHARED_ACCESS_TOKEN_ATTRIBUTE = "SharedAccessSignature=";
    public static final b log = c.a((Class<?>) DeviceClient.class);
    public long RECEIVE_PERIOD_MILLIS;
    public FileUpload fileUpload;
    public IoTHubConnectionType ioTHubConnectionType;
    public TransportClient transportClient;

    /* renamed from: com.microsoft.azure.sdk.iot.device.DeviceClient$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol;

        /* JADX WARNING: Can't wrap try/catch for region: R(13:0|(2:1|2)|3|5|6|7|8|9|11|12|13|14|16) */
        /* JADX WARNING: Can't wrap try/catch for region: R(14:0|1|2|3|5|6|7|8|9|11|12|13|14|16) */
        /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0024 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0016 */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol[] r0 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol = r0
                r1 = 1
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r2 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.HTTPS     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r3 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.AMQPS     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                int[] r1 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r2 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.AMQPS_WS     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 3
                r1[r2] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                r1 = 4
                int[] r2 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r3 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.MQTT     // Catch:{ NoSuchFieldError -> 0x0024 }
                r2[r0] = r1     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x002b }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r2 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.MQTT_WS     // Catch:{ NoSuchFieldError -> 0x002b }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002b }
            L_0x002b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.DeviceClient.AnonymousClass1.<clinit>():void");
        }
    }

    public DeviceClient(String str, TransportClient transportClient2) {
        this.ioTHubConnectionType = IoTHubConnectionType.UNKNOWN;
        this.config = new DeviceClientConfig(new IotHubConnectionString(str));
        this.deviceIO = null;
        if (transportClient2 != null) {
            this.ioTHubConnectionType = IoTHubConnectionType.USE_TRANSPORTCLIENT;
            this.transportClient = transportClient2;
            String moduleId = getConfig().getModuleId();
            if (moduleId == null || moduleId.isEmpty()) {
                getConfig().setProtocol(this.transportClient.getIotHubClientProtocol());
                this.transportClient.registerDeviceClient(this);
                return;
            }
            throw new UnsupportedOperationException("Multiplexing with module connection strings is not supported");
        }
        throw new IllegalArgumentException("Transport client cannot be null.");
    }

    private void commonConstructorSetup() {
        this.ioTHubConnectionType = IoTHubConnectionType.SINGLE_CLIENT;
        this.transportClient = null;
    }

    private void commonConstructorVerifications() {
        if (getConfig().getModuleId() != null && !getConfig().getModuleId().isEmpty()) {
            throw new UnsupportedOperationException("DeviceClient connection string cannot contain module id. Use ModuleClient instead.");
        }
    }

    public static DeviceClient createFromSecurityProvider(String str, String str2, SecurityProvider securityProvider, IotHubClientProtocol iotHubClientProtocol) {
        return new DeviceClient(str, str2, securityProvider, iotHubClientProtocol);
    }

    public static long getReceivePeriod(IotHubClientProtocol iotHubClientProtocol) {
        int ordinal = iotHubClientProtocol.ordinal();
        if (ordinal == 0) {
            return RECEIVE_PERIOD_MILLIS_HTTPS;
        }
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        throw new IllegalStateException("Invalid client protocol specified.");
                    }
                }
            }
            return RECEIVE_PERIOD_MILLIS_MQTT;
        }
        return RECEIVE_PERIOD_MILLIS_AMQPS;
    }

    @Deprecated
    public void close() {
        if (this.ioTHubConnectionType != IoTHubConnectionType.USE_TRANSPORTCLIENT) {
            log.c("Closing device client...");
            super.close();
        } else if (this.transportClient.getTransportClientState() != TransportClient.TransportClientState.OPENED) {
            log.c("Connection already closed by TransportClient.");
        } else {
            throw new IOException("Calling closeNow() when using TransportClient is not supported. Use TransportClient.closeNow() instead.");
        }
        log.c("Device client closed successfully");
    }

    public void closeFileUpload() {
        FileUpload fileUpload2 = this.fileUpload;
        if (fileUpload2 != null) {
            fileUpload2.closeNow();
        }
    }

    public void closeNow() {
        if (this.ioTHubConnectionType != IoTHubConnectionType.USE_TRANSPORTCLIENT) {
            log.c("Closing device client...");
            super.closeNow();
            closeFileUpload();
        } else if (this.transportClient.getTransportClientState() != TransportClient.TransportClientState.OPENED) {
            log.c("Connection already closed by TransportClient.");
        } else {
            throw new IOException("Calling closeNow() when using TransportClient is not supported. Use TransportClient.closeNow() instead.");
        }
        log.c("Device client closed successfully");
    }

    public void getDeviceTwin() {
        getTwinInternal();
    }

    public void open() {
        if (this.ioTHubConnectionType != IoTHubConnectionType.USE_TRANSPORTCLIENT) {
            super.open();
        } else if (this.transportClient.getTransportClientState() != TransportClient.TransportClientState.CLOSED) {
            log.b("Connection already opened by TransportClient.");
        } else {
            throw new IOException("Calling open() when using the TransportClient is not supported. Use TransportClient.open() instead.");
        }
        log.c("Device client opened successfully");
    }

    @Deprecated
    public void registerConnectionStateCallback(IotHubConnectionStateCallback iotHubConnectionStateCallback, Object obj) {
        if (iotHubConnectionStateCallback != null) {
            this.deviceIO.registerConnectionStateCallback(iotHubConnectionStateCallback, obj);
            return;
        }
        throw new IllegalArgumentException("Callback object cannot be null");
    }

    public DeviceClient setMessageCallback(MessageCallback messageCallback, Object obj) {
        setMessageCallbackInternal(messageCallback, obj);
        return this;
    }

    public void setOption(String str, Object obj) {
        if (str == null) {
            throw new IllegalArgumentException("optionName is null");
        } else if (obj != null) {
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1761978929:
                    if (str.equals(InternalClient.SET_SEND_INTERVAL)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1112537444:
                    if (str.equals(InternalClient.SET_MINIMUM_POLLING_INTERVAL)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 1380490682:
                    if (str.equals(InternalClient.SET_CERTIFICATE_PATH)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1741746870:
                    if (str.equals(InternalClient.SET_SAS_TOKEN_EXPIRY_TIME)) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 1960673998:
                    if (str.equals(InternalClient.SET_CERTIFICATE_AUTHORITY)) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            if (c2 != 0) {
                if (c2 != 1) {
                    if (c2 != 2) {
                        if (c2 != 3) {
                            if (c2 != 4) {
                                throw new IllegalArgumentException(a.b("optionName is unknown = ", str));
                            } else if (this.ioTHubConnectionType != IoTHubConnectionType.USE_TRANSPORTCLIENT) {
                                setOption_SetSASTokenExpiryTime(obj);
                                return;
                            } else if (this.transportClient.getTransportClientState() != TransportClient.TransportClientState.OPENED) {
                                setOption_SetSASTokenExpiryTime(obj);
                                return;
                            } else {
                                throw new IllegalStateException("setOption SetSASTokenExpiryTime with TransportClient only works when the transport client is closed");
                            }
                        } else if (this.ioTHubConnectionType == IoTHubConnectionType.USE_TRANSPORTCLIENT && this.transportClient.getTransportClientState() == TransportClient.TransportClientState.OPENED) {
                            throw new IllegalStateException("setOption SetCertificatePath only works when the transport is closed");
                        }
                    }
                } else if (this.ioTHubConnectionType == IoTHubConnectionType.USE_TRANSPORTCLIENT) {
                    throw new IllegalStateException("Setting send interval is not supported for single client if using TransportClient. Use TransportClient.setSendInterval() instead.");
                }
                if (this.ioTHubConnectionType == IoTHubConnectionType.USE_TRANSPORTCLIENT) {
                    if (this.transportClient.getTransportClientState() != TransportClient.TransportClientState.OPENED) {
                        setOption_SetCertificatePath(obj);
                        return;
                    }
                    throw new IllegalStateException("setOption SetCertificatePath only works when the transport is closed");
                }
            } else if (this.ioTHubConnectionType == IoTHubConnectionType.USE_TRANSPORTCLIENT) {
                throw new IllegalStateException("setOption SetMinimumPollingIntervalonly works with HTTP protocol");
            }
            super.setOption(str, obj);
        } else {
            throw new IllegalArgumentException("optionName is null");
        }
    }

    public void setOption_SetSASTokenExpiryTime(Object obj) {
        log.e("Setting SASTokenExpiryTime as {} seconds", obj);
        if (getConfig().getAuthenticationType() != DeviceClientConfig.AuthType.SAS_TOKEN) {
            throw new IllegalStateException("Cannot set sas token validity time when not using sas token authentication");
        } else if (obj == null) {
        } else {
            if (obj instanceof Long) {
                getConfig().getSasTokenAuthentication().setTokenValidSecs(((Long) obj).longValue());
                if (getDeviceIO() != null && getDeviceIO().isOpen()) {
                    try {
                        if (!getConfig().getSasTokenAuthentication().canRefreshToken()) {
                            return;
                        }
                        if (this.ioTHubConnectionType == IoTHubConnectionType.USE_TRANSPORTCLIENT) {
                            this.transportClient.closeNow();
                            this.transportClient.open();
                            return;
                        }
                        getDeviceIO().close();
                        getDeviceIO().open();
                    } catch (IOException e2) {
                        throw new IOError(e2);
                    }
                }
            } else {
                throw new IllegalArgumentException("value is not long = " + obj);
            }
        }
    }

    public void startDeviceTwin(IotHubEventCallback iotHubEventCallback, Object obj, PropertyCallBack propertyCallBack, Object obj2) {
        startTwinInternal(iotHubEventCallback, obj, propertyCallBack, obj2);
    }

    public void subscribeToDeviceMethod(DeviceMethodCallback deviceMethodCallback, Object obj, IotHubEventCallback iotHubEventCallback, Object obj2) {
        subscribeToMethodsInternal(deviceMethodCallback, obj, iotHubEventCallback, obj2);
    }

    public void uploadToBlobAsync(String str, InputStream inputStream, long j2, IotHubEventCallback iotHubEventCallback, Object obj) {
        if (iotHubEventCallback == null) {
            throw new IllegalArgumentException("Callback is null");
        } else if (inputStream == null) {
            throw new IllegalArgumentException("The input stream cannot be null.");
        } else if (j2 >= 0) {
            ParserUtility.validateBlobName(str);
            if (this.fileUpload == null) {
                this.fileUpload = new FileUpload(this.config);
            }
            this.fileUpload.uploadToBlobAsync(str, inputStream, j2, iotHubEventCallback, obj);
        } else {
            throw new IllegalArgumentException("Invalid stream size.");
        }
    }

    public void startDeviceTwin(IotHubEventCallback iotHubEventCallback, Object obj, TwinPropertyCallBack twinPropertyCallBack, Object obj2) {
        startTwinInternal(iotHubEventCallback, obj, twinPropertyCallBack, obj2);
    }

    public DeviceClient(String str, IotHubClientProtocol iotHubClientProtocol) {
        super(new IotHubConnectionString(str), iotHubClientProtocol, SEND_PERIOD_MILLIS, getReceivePeriod(iotHubClientProtocol));
        this.ioTHubConnectionType = IoTHubConnectionType.UNKNOWN;
        commonConstructorVerifications();
        commonConstructorSetup();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DeviceClient(String str, IotHubClientProtocol iotHubClientProtocol, String str2, boolean z, String str3, boolean z2) {
        super(new IotHubConnectionString(str), iotHubClientProtocol, str2, z, str3, z2, SEND_PERIOD_MILLIS, getReceivePeriod(iotHubClientProtocol));
        String str4 = str;
        this.ioTHubConnectionType = IoTHubConnectionType.UNKNOWN;
        commonConstructorVerifications();
        commonConstructorSetup();
    }

    public DeviceClient(String str, IotHubClientProtocol iotHubClientProtocol, SSLContext sSLContext) {
        super(new IotHubConnectionString(str), iotHubClientProtocol, sSLContext, SEND_PERIOD_MILLIS, getReceivePeriod(iotHubClientProtocol));
        this.ioTHubConnectionType = IoTHubConnectionType.UNKNOWN;
        commonConstructorVerifications();
        commonConstructorSetup();
    }

    public DeviceClient(String str, String str2, SecurityProvider securityProvider, IotHubClientProtocol iotHubClientProtocol) {
        super(str, str2, securityProvider, iotHubClientProtocol, SEND_PERIOD_MILLIS, getReceivePeriod(iotHubClientProtocol));
        this.ioTHubConnectionType = IoTHubConnectionType.UNKNOWN;
        commonConstructorSetup();
    }

    public DeviceClient() {
        this.ioTHubConnectionType = IoTHubConnectionType.UNKNOWN;
        this.transportClient = null;
    }
}
