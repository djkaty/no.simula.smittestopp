package com.microsoft.azure.sdk.iot.device;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethodCallback;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceTwin;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.Pair;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.Property;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.PropertyCallBack;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.TwinPropertyCallBack;
import com.microsoft.azure.sdk.iot.device.auth.IotHubAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.transport.RetryPolicy;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import e.a.a.a.a;
import java.io.IOError;
import java.io.IOException;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.SSLContext;
import k.f.b;
import k.f.c;

public class InternalClient {
    public static final String SET_CERTIFICATE_AUTHORITY = "SetCertificateAuthority";
    public static final String SET_CERTIFICATE_PATH = "SetCertificatePath";
    public static final String SET_MINIMUM_POLLING_INTERVAL = "SetMinimumPollingInterval";
    public static final String SET_SAS_TOKEN_EXPIRY_TIME = "SetSASTokenExpiryTime";
    public static final String SET_SEND_INTERVAL = "SetSendInterval";
    public static final b log = c.a((Class<?>) InternalClient.class);
    public DeviceClientConfig config;
    public DeviceIO deviceIO;
    public DeviceMethod method;
    public DeviceTwin twin;

    public InternalClient(IotHubConnectionString iotHubConnectionString, IotHubClientProtocol iotHubClientProtocol, long j2, long j3) {
        commonConstructorVerification(iotHubConnectionString, iotHubClientProtocol);
        DeviceClientConfig deviceClientConfig = new DeviceClientConfig(iotHubConnectionString);
        this.config = deviceClientConfig;
        deviceClientConfig.setProtocol(iotHubClientProtocol);
        this.deviceIO = new DeviceIO(this.config, j2, j3);
    }

    private void commonConstructorVerification(IotHubConnectionString iotHubConnectionString, IotHubClientProtocol iotHubClientProtocol) {
        if (iotHubConnectionString == null) {
            throw new IllegalArgumentException("Connection string cannot be null");
        } else if (iotHubClientProtocol != null) {
            String gatewayHostName = iotHubConnectionString.getGatewayHostName();
            if (gatewayHostName != null && !gatewayHostName.isEmpty() && iotHubClientProtocol == IotHubClientProtocol.HTTPS) {
                throw new UnsupportedOperationException("Communication with edgehub only supported by MQTT/MQTT_WS and AMQPS/AMQPS_WS");
            }
        } else {
            throw new IllegalArgumentException("Protocol cannot be null.");
        }
    }

    public void close() {
        do {
        } while (!this.deviceIO.isEmpty());
        this.deviceIO.close();
    }

    public void closeNow() {
        this.deviceIO.close();
    }

    public DeviceClientConfig getConfig() {
        return this.config;
    }

    public DeviceIO getDeviceIO() {
        return this.deviceIO;
    }

    public ProductInfo getProductInfo() {
        return this.config.getProductInfo();
    }

    public void getTwinInternal() {
        if (this.twin == null) {
            throw new IOException("Start twin before using it");
        } else if (this.deviceIO.isOpen()) {
            this.twin.getDeviceTwin();
        } else {
            throw new IOException("Open the client connection before using it.");
        }
    }

    public void open() {
        if (this.config.getAuthenticationType() != DeviceClientConfig.AuthType.SAS_TOKEN || !this.config.getSasTokenAuthentication().isRenewalNecessary()) {
            this.deviceIO.open();
            return;
        }
        throw new SecurityException("Your SasToken is expired");
    }

    public void registerConnectionStatusChangeCallback(IotHubConnectionStatusChangeCallback iotHubConnectionStatusChangeCallback, Object obj) {
        this.deviceIO.registerConnectionStatusChangeCallback(iotHubConnectionStatusChangeCallback, obj);
    }

    public void sendEventAsync(Message message, IotHubEventCallback iotHubEventCallback, Object obj) {
        message.setConnectionDeviceId(this.config.getDeviceId());
        this.deviceIO.sendEventAsync(message, iotHubEventCallback, obj, this.config.getDeviceId());
    }

    public void sendReportedProperties(Set<Property> set) {
        if (this.twin == null) {
            throw new IOException("Start twin before using it");
        } else if (!this.deviceIO.isOpen()) {
            throw new IOException("Open the client connection before using it.");
        } else if (set == null || set.isEmpty()) {
            throw new IllegalArgumentException("Reported properties set cannot be null or empty.");
        } else {
            this.twin.updateReportedProperties(set);
        }
    }

    public void setDeviceIO(DeviceIO deviceIO2) {
        this.deviceIO = deviceIO2;
    }

    public void setMessageCallbackInternal(MessageCallback messageCallback, Object obj) {
        if (messageCallback != null || obj == null) {
            this.config.setMessageCallback(messageCallback, obj);
            return;
        }
        throw new IllegalArgumentException("Cannot give non-null context for a null callback.");
    }

    public void setOperationTimeout(long j2) {
        this.config.setOperationTimeout(j2);
    }

    public void setOption(String str, Object obj) {
        if (str == null) {
            throw new IllegalArgumentException("optionName is null");
        } else if (obj != null) {
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1761978929:
                    if (str.equals(SET_SEND_INTERVAL)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1112537444:
                    if (str.equals(SET_MINIMUM_POLLING_INTERVAL)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 1380490682:
                    if (str.equals(SET_CERTIFICATE_PATH)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1741746870:
                    if (str.equals(SET_SAS_TOKEN_EXPIRY_TIME)) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 1960673998:
                    if (str.equals(SET_CERTIFICATE_AUTHORITY)) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            if (c2 != 0) {
                if (c2 == 1) {
                    setOption_SetSendInterval(obj);
                } else if (c2 == 2) {
                    DeviceIO deviceIO2 = this.deviceIO;
                    if (deviceIO2 != null && deviceIO2.isOpen()) {
                        throw new IllegalStateException("setOption SetCertificatePath only works when the transport is closed");
                    } else if (this.deviceIO.getProtocol() != IotHubClientProtocol.HTTPS) {
                        setOption_SetCertificatePath(obj);
                    } else {
                        throw new IllegalArgumentException("option SetCertificatePath cannot be invoked when using HTTPS protocol");
                    }
                } else if (c2 == 3) {
                    DeviceIO deviceIO3 = this.deviceIO;
                    if (deviceIO3 == null || !deviceIO3.isOpen()) {
                        setTrustedCertificates((String) obj);
                        return;
                    }
                    throw new IllegalStateException("setOption SetCertificatePath only works when the transport is closed");
                } else if (c2 == 4) {
                    setOption_SetSASTokenExpiryTime(obj);
                } else {
                    throw new IllegalArgumentException(a.b("optionName is unknown = ", str));
                }
            } else if (this.deviceIO.isOpen()) {
                throw new IllegalStateException("setOption SetMinimumPollingIntervalonly works when the transport is closed");
            } else if (this.deviceIO.getProtocol() == IotHubClientProtocol.HTTPS) {
                setOption_SetMinimumPollingInterval(obj);
            } else {
                throw new IllegalArgumentException("optionName is unknown = " + str + " for " + this.deviceIO.getProtocol().toString());
            }
        } else {
            throw new IllegalArgumentException("optionName is null");
        }
    }

    public void setOption_SetCertificatePath(Object obj) {
        if (obj != null) {
            this.config.getAuthenticationProvider().setPathToIotHubTrustedCert((String) obj);
        }
    }

    public void setOption_SetMinimumPollingInterval(Object obj) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Long) {
            try {
                this.deviceIO.setReceivePeriodInMilliseconds(((Long) obj).longValue());
            } catch (IOException e2) {
                throw new IOError(e2);
            }
        } else {
            throw new IllegalArgumentException("value is not long = " + obj);
        }
    }

    public void setOption_SetSASTokenExpiryTime(Object obj) {
        if (this.config.getAuthenticationType() != DeviceClientConfig.AuthType.SAS_TOKEN) {
            throw new IllegalStateException("Cannot set sas token validity time when not using sas token authentication");
        } else if (obj == null) {
        } else {
            if (obj instanceof Long) {
                this.config.getSasTokenAuthentication().setTokenValidSecs(((Long) obj).longValue());
                DeviceIO deviceIO2 = this.deviceIO;
                if (deviceIO2 != null && deviceIO2.isOpen()) {
                    try {
                        if (this.config.getSasTokenAuthentication().canRefreshToken()) {
                            this.deviceIO.close();
                            this.deviceIO.open();
                        }
                    } catch (IOException e2) {
                        throw new IOError(e2);
                    }
                }
            } else {
                throw new IllegalArgumentException("value is not long = " + obj);
            }
        }
    }

    public void setOption_SetSendInterval(Object obj) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Long) {
            try {
                this.deviceIO.setSendPeriodInMilliseconds(((Long) obj).longValue());
            } catch (IOException e2) {
                throw new IOError(e2);
            }
        } else {
            throw new IllegalArgumentException("value is not long = " + obj);
        }
    }

    public void setProxySettings(ProxySettings proxySettings) {
        if (!this.deviceIO.isOpen()) {
            IotHubClientProtocol protocol = this.deviceIO.getProtocol();
            if (protocol == IotHubClientProtocol.HTTPS || protocol == IotHubClientProtocol.AMQPS_WS || protocol == IotHubClientProtocol.MQTT_WS) {
                this.config.setProxy(proxySettings);
                return;
            }
            throw new IllegalArgumentException("Use of proxies is unsupported unless using HTTPS, MQTT_WS or AMQPS_WS");
        }
        throw new IllegalStateException("Cannot set proxy after connection was already opened");
    }

    public void setRetryPolicy(RetryPolicy retryPolicy) {
        this.config.setRetryPolicy(retryPolicy);
    }

    public void setTrustedCertificates(String str) {
        this.config.getAuthenticationProvider().setIotHubTrustedCert(str);
    }

    public void startTwinInternal(IotHubEventCallback iotHubEventCallback, Object obj, PropertyCallBack propertyCallBack, Object obj2) {
        if (!this.deviceIO.isOpen()) {
            throw new IOException("Open the client connection before using it.");
        } else if (iotHubEventCallback == null || propertyCallBack == null) {
            throw new IllegalArgumentException("Callback cannot be null");
        } else if (this.twin == null) {
            DeviceTwin deviceTwin = new DeviceTwin(this.deviceIO, this.config, iotHubEventCallback, obj, propertyCallBack, obj2);
            this.twin = deviceTwin;
            deviceTwin.getDeviceTwin();
        } else {
            throw new UnsupportedOperationException("You have already initialised twin");
        }
    }

    public void subscribeToDesiredProperties(Map<Property, Pair<PropertyCallBack<String, Object>, Object>> map) {
        if (this.twin == null) {
            throw new IOException("Start twin before using it");
        } else if (this.deviceIO.isOpen()) {
            this.twin.subscribeDesiredPropertiesNotification(map);
        } else {
            throw new IOException("Open the client connection before using it.");
        }
    }

    public void subscribeToMethodsInternal(DeviceMethodCallback deviceMethodCallback, Object obj, IotHubEventCallback iotHubEventCallback, Object obj2) {
        if (!this.deviceIO.isOpen()) {
            throw new IOException("Open the client connection before using it.");
        } else if (deviceMethodCallback == null || iotHubEventCallback == null) {
            throw new IllegalArgumentException("Callback cannot be null");
        } else {
            if (this.method == null) {
                this.method = new DeviceMethod(this.deviceIO, this.config, iotHubEventCallback, obj2);
            }
            this.method.subscribeToDeviceMethod(deviceMethodCallback, obj);
        }
    }

    public void subscribeToTwinDesiredProperties(Map<Property, Pair<TwinPropertyCallBack, Object>> map) {
        if (this.twin == null) {
            throw new IOException("Start twin before using it");
        } else if (this.deviceIO.isOpen()) {
            this.twin.subscribeDesiredPropertiesTwinPropertyNotification(map);
        } else {
            throw new IOException("Open the client connection before using it.");
        }
    }

    public InternalClient(IotHubAuthenticationProvider iotHubAuthenticationProvider, IotHubClientProtocol iotHubClientProtocol, long j2, long j3) {
        DeviceClientConfig deviceClientConfig = new DeviceClientConfig(iotHubAuthenticationProvider);
        this.config = deviceClientConfig;
        deviceClientConfig.setProtocol(iotHubClientProtocol);
        this.deviceIO = new DeviceIO(this.config, j2, j3);
    }

    public void sendReportedProperties(Set<Property> set, int i2) {
        if (this.twin == null) {
            throw new IOException("Start twin before using it");
        } else if (!this.deviceIO.isOpen()) {
            throw new IOException("Open the client connection before using it.");
        } else if (set == null || set.isEmpty()) {
            throw new IllegalArgumentException("Reported properties set cannot be null or empty.");
        } else if (i2 >= 0) {
            this.twin.updateReportedProperties(set, Integer.valueOf(i2));
        } else {
            throw new IllegalArgumentException("Version cannot be null.");
        }
    }

    public void startTwinInternal(IotHubEventCallback iotHubEventCallback, Object obj, TwinPropertyCallBack twinPropertyCallBack, Object obj2) {
        if (!this.deviceIO.isOpen()) {
            throw new IOException("Open the client connection before using it.");
        } else if (iotHubEventCallback == null || twinPropertyCallBack == null) {
            throw new IllegalArgumentException("Callback cannot be null");
        } else if (this.twin == null) {
            DeviceTwin deviceTwin = new DeviceTwin(this.deviceIO, this.config, iotHubEventCallback, obj, twinPropertyCallBack, obj2);
            this.twin = deviceTwin;
            deviceTwin.getDeviceTwin();
        } else {
            throw new UnsupportedOperationException("You have already initialised twin");
        }
    }

    public InternalClient(IotHubConnectionString iotHubConnectionString, IotHubClientProtocol iotHubClientProtocol, String str, boolean z, String str2, boolean z2, long j2, long j3) {
        commonConstructorVerification(iotHubConnectionString, iotHubClientProtocol);
        DeviceClientConfig deviceClientConfig = new DeviceClientConfig(iotHubConnectionString, str, z, str2, z2);
        this.config = deviceClientConfig;
        IotHubClientProtocol iotHubClientProtocol2 = iotHubClientProtocol;
        deviceClientConfig.setProtocol(iotHubClientProtocol);
        this.deviceIO = new DeviceIO(this.config, j2, j3);
    }

    public InternalClient(IotHubConnectionString iotHubConnectionString, IotHubClientProtocol iotHubClientProtocol, SSLContext sSLContext, long j2, long j3) {
        commonConstructorVerification(iotHubConnectionString, iotHubClientProtocol);
        DeviceClientConfig deviceClientConfig = new DeviceClientConfig(iotHubConnectionString, sSLContext);
        this.config = deviceClientConfig;
        deviceClientConfig.setProtocol(iotHubClientProtocol);
        this.deviceIO = new DeviceIO(this.config, j2, j3);
    }

    public InternalClient(String str, String str2, SecurityProvider securityProvider, IotHubClientProtocol iotHubClientProtocol, long j2, long j3) {
        if (iotHubClientProtocol == null) {
            throw new IllegalArgumentException("The transport protocol cannot be null");
        } else if (securityProvider == null) {
            throw new IllegalArgumentException("securityProvider cannot be null");
        } else if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("URI cannot be null or empty");
        } else if (str2 == null || str2.isEmpty()) {
            throw new IllegalArgumentException("deviceId cannot be null or empty");
        } else {
            DeviceClientConfig deviceClientConfig = new DeviceClientConfig(new IotHubConnectionString(str, str2, (String) null, (String) null), securityProvider);
            this.config = deviceClientConfig;
            deviceClientConfig.setProtocol(iotHubClientProtocol);
            this.deviceIO = new DeviceIO(this.config, j2, j3);
        }
    }

    public InternalClient() {
        this.config = null;
        this.deviceIO = null;
    }
}
