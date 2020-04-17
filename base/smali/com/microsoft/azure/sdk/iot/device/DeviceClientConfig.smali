.class public final Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;
    }
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE_LOCK_TIMEOUT_SECS:I = 0xb4

.field public static final DEFAULT_OPERATION_TIMEOUT:J = 0x3a980L

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x3a980

.field public static final log:Lk/f/b;


# instance fields
.field public authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

.field public defaultDeviceTelemetryMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

.field public defaultDeviceTelemetryMessageContext:Ljava/lang/Object;

.field public deviceMethodsMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

.field public deviceMethodsMessageContext:Ljava/lang/Object;

.field public deviceTwinMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

.field public deviceTwinMessageContext:Ljava/lang/Object;

.field public inputChannelMessageCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair<",
            "Lcom/microsoft/azure/sdk/iot/device/MessageCallback;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public operationTimeout:J

.field public productInfo:Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

.field public protocol:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

.field public proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

.field public retryPolicy:Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

.field public useWebsocket:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    const-wide/32 v0, 0x3a980

    .line 84
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->operationTimeout:J

    .line 85
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->retryPolicy:Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    .line 87
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceMethodsMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    .line 88
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->defaultDeviceTelemetryMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    .line 89
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceTwinMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    .line 90
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceMethodsMessageContext:Ljava/lang/Object;

    .line 91
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->defaultDeviceTelemetryMessageContext:Ljava/lang/Object;

    .line 92
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceTwinMessageContext:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->useWebsocket:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    const-wide/32 v0, 0x3a980

    .line 3
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->operationTimeout:J

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->retryPolicy:Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

    .line 5
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->commonConstructorSetup(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->assertConnectionStringIsNotX509(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V

    .line 7
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getGatewayHostName()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getModuleId()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getSharedAccessKey()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getSharedAccessToken()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    .line 14
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->log:Lk/f/b;

    const-string v0, "Device configured to use software based SAS authentication provider"

    invoke-interface {p1, v0}, Lk/f/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;)V
    .locals 8

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    const-wide/32 v0, 0x3a980

    .line 58
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->operationTimeout:J

    .line 59
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->retryPolicy:Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

    .line 60
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->commonConstructorSetup(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V

    if-eqz p2, :cond_3

    .line 61
    instance-of v0, p2, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderTpm;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenHardwareAuthenticationProvider;

    .line 63
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getGatewayHostName()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getModuleId()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenHardwareAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    goto :goto_0

    .line 67
    :cond_0
    instance-of v0, p2, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;

    .line 69
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getGatewayHostName()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getModuleId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    check-cast p2, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;

    .line 73
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;->getSymmetricKey()[B

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    goto :goto_0

    .line 74
    :cond_1
    instance-of v0, p2, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509HardwareAuthenticationProvider;

    .line 76
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getGatewayHostName()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getModuleId()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509HardwareAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    :goto_0
    return-void

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The provided security provider is not supported."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "security provider cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 10

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    const-wide/32 v0, 0x3a980

    .line 26
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->operationTimeout:J

    .line 27
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->retryPolicy:Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

    .line 28
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->commonConstructorSetup(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->assertConnectionStringIsX509(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V

    .line 30
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;

    .line 31
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getGatewayHostName()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getModuleId()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    .line 35
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->log:Lk/f/b;

    const-string p2, "Device configured to use software based x509 authentication provider"

    invoke-interface {p1, p2}, Lk/f/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Ljavax/net/ssl/SSLContext;)V
    .locals 9

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    const-wide/32 v0, 0x3a980

    .line 38
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->operationTimeout:J

    .line 39
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->retryPolicy:Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

    .line 40
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->commonConstructorSetup(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V

    .line 41
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->isUsingX509()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;

    .line 43
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getGatewayHostName()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getModuleId()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    .line 47
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->log:Lk/f/b;

    const-string p2, "Device configured to use software based x509 authentication provider with custom SSLContext"

    invoke-interface {p1, p2}, Lk/f/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance v8, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;

    .line 49
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getGatewayHostName()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getModuleId()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getSharedAccessKey()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getSharedAccessToken()Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V

    iput-object v8, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    .line 55
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->log:Lk/f/b;

    const-string p2, "Device configured to use software based SAS authentication provider with custom SSLContext"

    invoke-interface {p1, p2}, Lk/f/b;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    const-wide/32 v0, 0x3a980

    .line 17
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->operationTimeout:J

    .line 18
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->retryPolicy:Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

    .line 19
    instance-of v0, p1, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    if-eqz v0, :cond_0

    .line 20
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->useWebsocket:Z

    .line 22
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    invoke-direct {p1}, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->productInfo:Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This constructor only support sas token authentication currently"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private assertConnectionStringIsNotX509(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->isUsingX509()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use this constructor for x509 connection strings. Use constructor that takes public key certificate and private key or takes an SSLContext instance instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private assertConnectionStringIsX509(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->isUsingX509()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use this constructor for connection strings that don\'t use x509 authentication."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private commonConstructorSetup(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    invoke-direct {p1}, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->productInfo:Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->useWebsocket:Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "connection string cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAuthenticationProvider()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    return-object v0
.end method

.method public getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    instance-of v0, v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->X509_CERTIFICATE:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceMethodsMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceMethodsMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    return-object v0
.end method

.method public getDeviceMethodsMessageContext()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceMethodsMessageContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getDeviceTelemetryMessageCallback(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/MessageCallback;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    return-object p1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->defaultDeviceTelemetryMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    return-object p1
.end method

.method public getDeviceTelemetryMessageContext(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->defaultDeviceTelemetryMessageContext:Ljava/lang/Object;

    return-object p1
.end method

.method public getDeviceTwinMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceTwinMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    return-object v0
.end method

.method public getDeviceTwinMessageContext()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceTwinMessageContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getGatewayHostname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->getGatewayHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIotHubHostname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIotHubName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->parseHubName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageLockTimeoutSecs()I
    .locals 1

    const/16 v0, 0xb4

    return v0
.end method

.method public getModuleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->getModuleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperationTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->operationTimeout:J

    return-wide v0
.end method

.method public getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->productInfo:Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    return-object v0
.end method

.method public getProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->protocol:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    return-object v0
.end method

.method public getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    return-object v0
.end method

.method public getReadTimeoutMillis()I
    .locals 1

    const v0, 0x3a980

    return v0
.end method

.method public getRetryPolicy()Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->retryPolicy:Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

    return-object v0
.end method

.method public getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->authenticationProvider:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    instance-of v1, v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isUseWebsocket()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->useWebsocket:Z

    return v0
.end method

.method public setDeviceMethodsMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceMethodsMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceMethodsMessageContext:Ljava/lang/Object;

    return-void
.end method

.method public setDeviceTwinMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceTwinMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->deviceTwinMessageContext:Ljava/lang/Object;

    return-void
.end method

.method public setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->defaultDeviceTelemetryMessageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->defaultDeviceTelemetryMessageContext:Ljava/lang/Object;

    return-void
.end method

.method public setMessageCallback(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->inputChannelMessageCallbacks:Ljava/util/Map;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;

    invoke-direct {v1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setOperationTimeout(J)V
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->operationTimeout:J

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Operation timeout cannot be 0 or negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProtocol(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->protocol:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    return-void
.end method

.method public setProxy(Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    return-void
.end method

.method public setRetryPolicy(Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->retryPolicy:Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Retry Policy cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUseWebsocket(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->useWebsocket:Z

    return-void
.end method
