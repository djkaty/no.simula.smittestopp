.class public Lcom/microsoft/azure/proton/transport/proxy/impl/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASIC:Ljava/lang/String; = "Basic"

.field public static final BASIC_LOWERCASE:Ljava/lang/String;

.field public static final CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final DIGEST:Ljava/lang/String; = "Digest"

.field public static final DIGEST_LOWERCASE:Ljava/lang/String;

.field public static final PROXY_AUTHENTICATE_HEADER:Ljava/lang/String; = "Proxy-Authenticate:"

.field public static final PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "Basic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/impl/Constants;->BASIC_LOWERCASE:Ljava/lang/String;

    .line 2
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "Digest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/impl/Constants;->DIGEST_LOWERCASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
