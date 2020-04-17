package com.microsoft.azure.sdk.iot.device;

import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethodCallback;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.PropertyCallBack;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.TwinPropertyCallBack;
import com.microsoft.azure.sdk.iot.device.auth.IotHubAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.edge.HttpsHsmTrustBundleProvider;
import com.microsoft.azure.sdk.iot.device.edge.MethodRequest;
import com.microsoft.azure.sdk.iot.device.edge.MethodResult;
import com.microsoft.azure.sdk.iot.device.exceptions.ModuleClientException;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.hsm.HsmException;
import com.microsoft.azure.sdk.iot.device.hsm.HttpHsmSignatureProvider;
import com.microsoft.azure.sdk.iot.device.hsm.IotHubSasTokenHsmAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.transport.https.HttpsTransportManager;
import java.io.IOException;
import java.net.URISyntaxException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.net.ssl.SSLContext;
import k.f.b;
import k.f.c;

public class ModuleClient extends InternalClient {
    public static final String AuthSchemeVariableName = "IOTEDGE_AUTHSCHEME";
    public static final String DEFAULT_API_VERSION = "2018-06-28";
    public static int DEFAULT_SAS_TOKEN_BUFFER_PERCENTAGE = 85;
    public static int DEFAULT_SAS_TOKEN_TIME_TO_LIVE_SECONDS = 3600;
    public static final String DeviceIdVariableName = "IOTEDGE_DEVICEID";
    public static final String EdgeCaCertificateFileVariableName = "EdgeModuleCACertificateFile";
    public static final String EdgehubConnectionstringVariableName = "EdgeHubConnectionString";
    public static final String GatewayHostnameVariableName = "IOTEDGE_GATEWAYHOSTNAME";
    public static final String IotEdgedUriVariableName = "IOTEDGE_WORKLOADURI";
    public static final String IotHubHostnameVariableName = "IOTEDGE_IOTHUBHOSTNAME";
    public static final String IothubConnectionstringVariableName = "IotHubConnectionString";
    public static final String ModuleGenerationIdVariableName = "IOTEDGE_MODULEGENERATIONID";
    public static final String ModuleIdVariableName = "IOTEDGE_MODULEID";
    public static long RECEIVE_PERIOD_MILLIS_AMQPS = 10;
    public static long RECEIVE_PERIOD_MILLIS_HTTPS = 1500000;
    public static long RECEIVE_PERIOD_MILLIS_MQTT = 10;
    public static long SEND_PERIOD_MILLIS = 10;
    public static final String SasTokenAuthScheme = "sasToken";
    public static final b log = c.a((Class<?>) ModuleClient.class);

    /* renamed from: com.microsoft.azure.sdk.iot.device.ModuleClient$1  reason: invalid class name */
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
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.ModuleClient.AnonymousClass1.<clinit>():void");
        }
    }

    public ModuleClient(String str, IotHubClientProtocol iotHubClientProtocol) {
        super(new IotHubConnectionString(str), iotHubClientProtocol, SEND_PERIOD_MILLIS, getReceivePeriod(iotHubClientProtocol));
        commonConstructorVerifications(iotHubClientProtocol, this.config);
    }

    public static void commonConstructorVerifications(IotHubClientProtocol iotHubClientProtocol, DeviceClientConfig deviceClientConfig) {
        if (iotHubClientProtocol == IotHubClientProtocol.HTTPS) {
            throw new UnsupportedOperationException("Only MQTT, MQTT_WS, AMQPS and AMQPS_WS are supported for ModuleClient.");
        } else if (deviceClientConfig.getModuleId() == null || deviceClientConfig.getModuleId().isEmpty()) {
            throw new IllegalArgumentException("Connection string must contain field for ModuleId");
        }
    }

    public static ModuleClient createFromEnvironment() {
        return createFromEnvironment(IotHubClientProtocol.AMQPS);
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

    public void getTwin() {
        getTwinInternal();
    }

    public MethodResult invokeMethod(String str, MethodRequest methodRequest) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("DeviceId cannot be null or empty");
        }
        try {
            HttpsTransportManager httpsTransportManager = new HttpsTransportManager(this.config);
            httpsTransportManager.open();
            return httpsTransportManager.invokeMethod(methodRequest, str, "");
        } catch (TransportException | IOException | URISyntaxException e2) {
            throw new ModuleClientException("Could not invoke method", e2);
        }
    }

    public void sendEventAsync(Message message, IotHubEventCallback iotHubEventCallback, Object obj, String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("outputName cannot be null or empty");
        }
        message.setOutputName(str);
        sendEventAsync(message, iotHubEventCallback, obj);
    }

    public ModuleClient setMessageCallback(MessageCallback messageCallback, Object obj) {
        setMessageCallbackInternal(messageCallback, obj);
        return this;
    }

    public void startTwin(IotHubEventCallback iotHubEventCallback, Object obj, PropertyCallBack propertyCallBack, Object obj2) {
        startTwinInternal(iotHubEventCallback, obj, propertyCallBack, obj2);
    }

    public void subscribeToMethod(DeviceMethodCallback deviceMethodCallback, Object obj, IotHubEventCallback iotHubEventCallback, Object obj2) {
        subscribeToMethodsInternal(deviceMethodCallback, obj, iotHubEventCallback, obj2);
    }

    public static ModuleClient createFromEnvironment(IotHubClientProtocol iotHubClientProtocol) {
        IotHubClientProtocol iotHubClientProtocol2 = iotHubClientProtocol;
        log.b("Creating module client from environment with protocol {}...", (Object) iotHubClientProtocol2);
        Map<String, String> map = System.getenv();
        log.b("Checking for an edgehub connection string...");
        String str = map.get(EdgehubConnectionstringVariableName);
        if (str == null) {
            log.b("No edgehub connection string was configured, checking for an IoThub connection string...");
            str = map.get(IothubConnectionstringVariableName);
        }
        if (str != null) {
            log.b("Creating module client with the provided connection string");
            try {
                ModuleClient moduleClient = new ModuleClient(str, iotHubClientProtocol2);
                String str2 = map.get(EdgeCaCertificateFileVariableName);
                if (str2 != null && !str2.isEmpty()) {
                    log.b("Configuring module client to use the configured alternative trusted certificate");
                    moduleClient.setOption_SetCertificatePath(str2);
                }
                return moduleClient;
            } catch (URISyntaxException e2) {
                throw new ModuleClientException("Could not create module client", e2);
            }
        } else {
            log.c("No connection string was configured for this module, so it will get its credentials from the edgelet");
            String str3 = map.get(IotEdgedUriVariableName);
            String str4 = map.get(DeviceIdVariableName);
            String str5 = map.get(ModuleIdVariableName);
            String str6 = map.get(IotHubHostnameVariableName);
            String str7 = map.get(AuthSchemeVariableName);
            String str8 = map.get(GatewayHostnameVariableName);
            String str9 = map.get(ModuleGenerationIdVariableName);
            if (str3 == null) {
                throw new ModuleClientException("Environment variable IOTEDGE_WORKLOADURI is required.");
            } else if (str4 == null) {
                throw new ModuleClientException("Environment variable IOTEDGE_DEVICEID is required.");
            } else if (str5 == null) {
                throw new ModuleClientException("Environment variable IOTEDGE_MODULEID is required.");
            } else if (str6 == null) {
                throw new ModuleClientException("Environment variable IOTEDGE_IOTHUBHOSTNAME is required.");
            } else if (str7 == null) {
                throw new ModuleClientException("Environment variable IOTEDGE_AUTHSCHEME is required.");
            } else if (str9 == null) {
                throw new ModuleClientException("Environment variable IOTEDGE_MODULEGENERATIONID is required");
            } else if (str7.equalsIgnoreCase("sasToken")) {
                try {
                    try {
                        IotHubClientProtocol iotHubClientProtocol3 = iotHubClientProtocol;
                        ModuleClient moduleClient2 = new ModuleClient(IotHubSasTokenHsmAuthenticationProvider.create(new HttpHsmSignatureProvider(str3, DEFAULT_API_VERSION), str4, str5, str6, str8, str9, DEFAULT_SAS_TOKEN_TIME_TO_LIVE_SECONDS, DEFAULT_SAS_TOKEN_BUFFER_PERCENTAGE), iotHubClientProtocol3, SEND_PERIOD_MILLIS, getReceivePeriod(iotHubClientProtocol));
                        if (str8 != null && !str8.isEmpty()) {
                            moduleClient2.setTrustedCertificates(new HttpsHsmTrustBundleProvider().getTrustBundleCerts(str3, DEFAULT_API_VERSION));
                        }
                        return moduleClient2;
                    } catch (TransportException | HsmException | IOException | URISyntaxException e3) {
                        throw new ModuleClientException(e3);
                    }
                } catch (URISyntaxException | NoSuchAlgorithmException e4) {
                    throw new ModuleClientException("Could not use Hsm Signature Provider", e4);
                }
            } else {
                throw new ModuleClientException("Unsupported authentication scheme. Supported scheme is sasToken.");
            }
        }
    }

    public ModuleClient setMessageCallback(String str, MessageCallback messageCallback, Object obj) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("InputName must not be null or empty");
        } else if (messageCallback != null || obj == null) {
            this.config.setMessageCallback(str, messageCallback, obj);
            return this;
        } else {
            throw new IllegalArgumentException("Cannot give non-null context for a null callback.");
        }
    }

    public void startTwin(IotHubEventCallback iotHubEventCallback, Object obj, TwinPropertyCallBack twinPropertyCallBack, Object obj2) {
        startTwinInternal(iotHubEventCallback, obj, twinPropertyCallBack, obj2);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ModuleClient(String str, IotHubClientProtocol iotHubClientProtocol, String str2, boolean z, String str3, boolean z2) {
        super(new IotHubConnectionString(str), iotHubClientProtocol, str2, z, str3, z2, SEND_PERIOD_MILLIS, getReceivePeriod(iotHubClientProtocol));
        String str4 = str;
        IotHubClientProtocol iotHubClientProtocol2 = iotHubClientProtocol;
        commonConstructorVerifications(iotHubClientProtocol, getConfig());
    }

    public ModuleClient(String str, IotHubClientProtocol iotHubClientProtocol, SSLContext sSLContext) {
        super(new IotHubConnectionString(str), iotHubClientProtocol, sSLContext, SEND_PERIOD_MILLIS, getReceivePeriod(iotHubClientProtocol));
        commonConstructorVerifications(iotHubClientProtocol, getConfig());
    }

    public void sendEventAsync(Message message, IotHubEventCallback iotHubEventCallback, Object obj) {
        message.setConnectionModuleId(this.config.getModuleId());
        super.sendEventAsync(message, iotHubEventCallback, obj);
    }

    public ModuleClient(IotHubAuthenticationProvider iotHubAuthenticationProvider, IotHubClientProtocol iotHubClientProtocol, long j2, long j3) {
        super(iotHubAuthenticationProvider, iotHubClientProtocol, j2, j3);
    }

    public MethodResult invokeMethod(String str, String str2, MethodRequest methodRequest) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("DeviceId cannot be null or empty");
        } else if (str2 == null || str2.isEmpty()) {
            throw new IllegalArgumentException("DeviceId cannot be null or empty");
        } else {
            try {
                HttpsTransportManager httpsTransportManager = new HttpsTransportManager(this.config);
                httpsTransportManager.open();
                return httpsTransportManager.invokeMethod(methodRequest, str, str2);
            } catch (TransportException | IOException | URISyntaxException e2) {
                throw new ModuleClientException("Could not invoke method", e2);
            }
        }
    }
}
