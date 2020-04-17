package com.microsoft.azure.sdk.iot.device;

import com.microsoft.azure.sdk.iot.device.DeviceTwin.Pair;
import com.microsoft.azure.sdk.iot.device.auth.IotHubAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.auth.IotHubSasTokenAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.auth.IotHubSasTokenHardwareAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.auth.IotHubSasTokenSoftwareAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.auth.IotHubX509HardwareAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.auth.IotHubX509SoftwareAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.transport.ExponentialBackoffWithJitter;
import com.microsoft.azure.sdk.iot.device.transport.RetryPolicy;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProviderSymmetricKey;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProviderTpm;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProviderX509;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.SSLContext;
import k.f.b;
import k.f.c;

public final class DeviceClientConfig {
    public static final int DEFAULT_MESSAGE_LOCK_TIMEOUT_SECS = 180;
    public static final long DEFAULT_OPERATION_TIMEOUT = 240000;
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 240000;
    public static final b log = c.a((Class<?>) DeviceClientConfig.class);
    public IotHubAuthenticationProvider authenticationProvider;
    public MessageCallback defaultDeviceTelemetryMessageCallback;
    public Object defaultDeviceTelemetryMessageContext;
    public MessageCallback deviceMethodsMessageCallback;
    public Object deviceMethodsMessageContext;
    public MessageCallback deviceTwinMessageCallback;
    public Object deviceTwinMessageContext;
    public Map<String, Pair<MessageCallback, Object>> inputChannelMessageCallbacks;
    public long operationTimeout;
    public ProductInfo productInfo;
    public IotHubClientProtocol protocol;
    public ProxySettings proxySettings;
    public RetryPolicy retryPolicy;
    public boolean useWebsocket;

    public enum AuthType {
        X509_CERTIFICATE,
        SAS_TOKEN
    }

    public DeviceClientConfig(IotHubConnectionString iotHubConnectionString) {
        this.inputChannelMessageCallbacks = new HashMap();
        this.operationTimeout = DEFAULT_OPERATION_TIMEOUT;
        this.retryPolicy = new ExponentialBackoffWithJitter();
        commonConstructorSetup(iotHubConnectionString);
        assertConnectionStringIsNotX509(iotHubConnectionString);
        this.authenticationProvider = new IotHubSasTokenSoftwareAuthenticationProvider(iotHubConnectionString.getHostName(), iotHubConnectionString.getGatewayHostName(), iotHubConnectionString.getDeviceId(), iotHubConnectionString.getModuleId(), iotHubConnectionString.getSharedAccessKey(), iotHubConnectionString.getSharedAccessToken());
        log.b("Device configured to use software based SAS authentication provider");
    }

    private void assertConnectionStringIsNotX509(IotHubConnectionString iotHubConnectionString) {
        if (iotHubConnectionString.isUsingX509()) {
            throw new IllegalArgumentException("Cannot use this constructor for x509 connection strings. Use constructor that takes public key certificate and private key or takes an SSLContext instance instead");
        }
    }

    private void assertConnectionStringIsX509(IotHubConnectionString iotHubConnectionString) {
        if (!iotHubConnectionString.isUsingX509()) {
            throw new IllegalArgumentException("Cannot use this constructor for connection strings that don't use x509 authentication.");
        }
    }

    private void commonConstructorSetup(IotHubConnectionString iotHubConnectionString) {
        if (iotHubConnectionString != null) {
            this.productInfo = new ProductInfo();
            this.useWebsocket = false;
            return;
        }
        throw new IllegalArgumentException("connection string cannot be null");
    }

    public IotHubAuthenticationProvider getAuthenticationProvider() {
        return this.authenticationProvider;
    }

    public AuthType getAuthenticationType() {
        if (this.authenticationProvider instanceof IotHubSasTokenAuthenticationProvider) {
            return AuthType.SAS_TOKEN;
        }
        return AuthType.X509_CERTIFICATE;
    }

    public String getDeviceId() {
        return this.authenticationProvider.getDeviceId();
    }

    public MessageCallback getDeviceMethodsMessageCallback() {
        return this.deviceMethodsMessageCallback;
    }

    public Object getDeviceMethodsMessageContext() {
        return this.deviceMethodsMessageContext;
    }

    public MessageCallback getDeviceTelemetryMessageCallback(String str) {
        if (str == null || !this.inputChannelMessageCallbacks.containsKey(str)) {
            return this.defaultDeviceTelemetryMessageCallback;
        }
        return (MessageCallback) this.inputChannelMessageCallbacks.get(str).getKey();
    }

    public Object getDeviceTelemetryMessageContext(String str) {
        if (str == null || !this.inputChannelMessageCallbacks.containsKey(str)) {
            return this.defaultDeviceTelemetryMessageContext;
        }
        return this.inputChannelMessageCallbacks.get(str).getValue();
    }

    public MessageCallback getDeviceTwinMessageCallback() {
        return this.deviceTwinMessageCallback;
    }

    public Object getDeviceTwinMessageContext() {
        return this.deviceTwinMessageContext;
    }

    public String getGatewayHostname() {
        return this.authenticationProvider.getGatewayHostname();
    }

    public String getIotHubHostname() {
        return this.authenticationProvider.getHostname();
    }

    public String getIotHubName() {
        return IotHubConnectionString.parseHubName(this.authenticationProvider.getHostname());
    }

    public int getMessageLockTimeoutSecs() {
        return DEFAULT_MESSAGE_LOCK_TIMEOUT_SECS;
    }

    public String getModuleId() {
        return this.authenticationProvider.getModuleId();
    }

    public long getOperationTimeout() {
        return this.operationTimeout;
    }

    public ProductInfo getProductInfo() {
        return this.productInfo;
    }

    public IotHubClientProtocol getProtocol() {
        return this.protocol;
    }

    public ProxySettings getProxySettings() {
        return this.proxySettings;
    }

    public int getReadTimeoutMillis() {
        return DEFAULT_READ_TIMEOUT_MILLIS;
    }

    public RetryPolicy getRetryPolicy() {
        return this.retryPolicy;
    }

    public IotHubSasTokenAuthenticationProvider getSasTokenAuthentication() {
        IotHubAuthenticationProvider iotHubAuthenticationProvider = this.authenticationProvider;
        if (iotHubAuthenticationProvider instanceof IotHubSasTokenAuthenticationProvider) {
            return (IotHubSasTokenAuthenticationProvider) iotHubAuthenticationProvider;
        }
        return null;
    }

    public boolean isUseWebsocket() {
        return this.useWebsocket;
    }

    public void setDeviceMethodsMessageCallback(MessageCallback messageCallback, Object obj) {
        this.deviceMethodsMessageCallback = messageCallback;
        this.deviceMethodsMessageContext = obj;
    }

    public void setDeviceTwinMessageCallback(MessageCallback messageCallback, Object obj) {
        this.deviceTwinMessageCallback = messageCallback;
        this.deviceTwinMessageContext = obj;
    }

    public void setMessageCallback(MessageCallback messageCallback, Object obj) {
        this.defaultDeviceTelemetryMessageCallback = messageCallback;
        this.defaultDeviceTelemetryMessageContext = obj;
    }

    public void setOperationTimeout(long j2) {
        if (j2 >= 1) {
            this.operationTimeout = j2;
            return;
        }
        throw new IllegalArgumentException("Operation timeout cannot be 0 or negative");
    }

    public void setProtocol(IotHubClientProtocol iotHubClientProtocol) {
        this.protocol = iotHubClientProtocol;
    }

    public void setProxy(ProxySettings proxySettings2) {
        this.proxySettings = proxySettings2;
    }

    public void setRetryPolicy(RetryPolicy retryPolicy2) {
        if (retryPolicy2 != null) {
            this.retryPolicy = retryPolicy2;
            return;
        }
        throw new IllegalArgumentException("Retry Policy cannot be null.");
    }

    public void setUseWebsocket(boolean z) {
        this.useWebsocket = z;
    }

    public void setMessageCallback(String str, MessageCallback messageCallback, Object obj) {
        if (!this.inputChannelMessageCallbacks.containsKey(str) || messageCallback != null) {
            this.inputChannelMessageCallbacks.put(str, new Pair(messageCallback, obj));
        } else {
            this.inputChannelMessageCallbacks.remove(str);
        }
    }

    public DeviceClientConfig(IotHubAuthenticationProvider iotHubAuthenticationProvider) {
        this.inputChannelMessageCallbacks = new HashMap();
        this.operationTimeout = DEFAULT_OPERATION_TIMEOUT;
        this.retryPolicy = new ExponentialBackoffWithJitter();
        if (iotHubAuthenticationProvider instanceof IotHubSasTokenAuthenticationProvider) {
            this.authenticationProvider = iotHubAuthenticationProvider;
            this.useWebsocket = false;
            this.productInfo = new ProductInfo();
            return;
        }
        throw new UnsupportedOperationException("This constructor only support sas token authentication currently");
    }

    public DeviceClientConfig(IotHubConnectionString iotHubConnectionString, String str, boolean z, String str2, boolean z2) {
        this.inputChannelMessageCallbacks = new HashMap();
        this.operationTimeout = DEFAULT_OPERATION_TIMEOUT;
        this.retryPolicy = new ExponentialBackoffWithJitter();
        commonConstructorSetup(iotHubConnectionString);
        assertConnectionStringIsX509(iotHubConnectionString);
        this.authenticationProvider = new IotHubX509SoftwareAuthenticationProvider(iotHubConnectionString.getHostName(), iotHubConnectionString.getGatewayHostName(), iotHubConnectionString.getDeviceId(), iotHubConnectionString.getModuleId(), str, z, str2, z2);
        log.b("Device configured to use software based x509 authentication provider");
    }

    public DeviceClientConfig(IotHubConnectionString iotHubConnectionString, SSLContext sSLContext) {
        this.inputChannelMessageCallbacks = new HashMap();
        this.operationTimeout = DEFAULT_OPERATION_TIMEOUT;
        this.retryPolicy = new ExponentialBackoffWithJitter();
        commonConstructorSetup(iotHubConnectionString);
        if (iotHubConnectionString.isUsingX509()) {
            this.authenticationProvider = new IotHubX509SoftwareAuthenticationProvider(iotHubConnectionString.getHostName(), iotHubConnectionString.getGatewayHostName(), iotHubConnectionString.getDeviceId(), iotHubConnectionString.getModuleId(), sSLContext);
            log.b("Device configured to use software based x509 authentication provider with custom SSLContext");
            return;
        }
        this.authenticationProvider = new IotHubSasTokenSoftwareAuthenticationProvider(iotHubConnectionString.getHostName(), iotHubConnectionString.getGatewayHostName(), iotHubConnectionString.getDeviceId(), iotHubConnectionString.getModuleId(), iotHubConnectionString.getSharedAccessKey(), iotHubConnectionString.getSharedAccessToken(), sSLContext);
        log.b("Device configured to use software based SAS authentication provider with custom SSLContext");
    }

    public DeviceClientConfig(IotHubConnectionString iotHubConnectionString, SecurityProvider securityProvider) {
        this.inputChannelMessageCallbacks = new HashMap();
        this.operationTimeout = DEFAULT_OPERATION_TIMEOUT;
        this.retryPolicy = new ExponentialBackoffWithJitter();
        commonConstructorSetup(iotHubConnectionString);
        if (securityProvider == null) {
            throw new IllegalArgumentException("security provider cannot be null");
        } else if (securityProvider instanceof SecurityProviderTpm) {
            this.authenticationProvider = new IotHubSasTokenHardwareAuthenticationProvider(iotHubConnectionString.getHostName(), iotHubConnectionString.getGatewayHostName(), iotHubConnectionString.getDeviceId(), iotHubConnectionString.getModuleId(), securityProvider);
        } else if (securityProvider instanceof SecurityProviderSymmetricKey) {
            this.authenticationProvider = new IotHubSasTokenSoftwareAuthenticationProvider(iotHubConnectionString.getHostName(), iotHubConnectionString.getGatewayHostName(), iotHubConnectionString.getDeviceId(), iotHubConnectionString.getModuleId(), new String(((SecurityProviderSymmetricKey) securityProvider).getSymmetricKey()), (String) null);
        } else if (securityProvider instanceof SecurityProviderX509) {
            this.authenticationProvider = new IotHubX509HardwareAuthenticationProvider(iotHubConnectionString.getHostName(), iotHubConnectionString.getGatewayHostName(), iotHubConnectionString.getDeviceId(), iotHubConnectionString.getModuleId(), securityProvider);
        } else {
            throw new UnsupportedOperationException("The provided security provider is not supported.");
        }
    }

    public DeviceClientConfig() {
        this.inputChannelMessageCallbacks = new HashMap();
        this.operationTimeout = DEFAULT_OPERATION_TIMEOUT;
        this.retryPolicy = new ExponentialBackoffWithJitter();
        this.authenticationProvider = null;
        this.deviceMethodsMessageCallback = null;
        this.defaultDeviceTelemetryMessageCallback = null;
        this.deviceTwinMessageCallback = null;
        this.deviceMethodsMessageContext = null;
        this.defaultDeviceTelemetryMessageContext = null;
        this.deviceTwinMessageContext = null;
        this.useWebsocket = false;
    }
}
