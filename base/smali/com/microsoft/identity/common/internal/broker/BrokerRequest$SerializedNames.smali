.class public Lcom/microsoft/identity/common/internal/broker/BrokerRequest$SerializedNames;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SerializedNames"
.end annotation


# static fields
.field public static final AUTHENTICATION_SCHEME:Ljava/lang/String; = "authentication_scheme"

.field public static final AUTHORITY:Ljava/lang/String; = "authority"

.field public static final AUTHORIZATION_AGENT:Ljava/lang/String; = "authorization_agent"

.field public static final CLAIMS:Ljava/lang/String; = "claims"

.field public static final CLIENT_APP_NAME:Ljava/lang/String; = "client_app_name"

.field public static final CLIENT_APP_VERSION:Ljava/lang/String; = "client_app_version"

.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final CLIENT_VERSION:Ljava/lang/String; = "client_version"

.field public static final CORRELATION_ID:Ljava/lang/String; = "correlation_id"

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final EXTRA_QUERY_STRING_PARAMETER:Ljava/lang/String; = "extra_query_param"

.field public static final FORCE_REFRESH:Ljava/lang/String; = "force_refresh"

.field public static final HOME_ACCOUNT_ID:Ljava/lang/String; = "home_account_id"

.field public static final LOCAL_ACCOUNT_ID:Ljava/lang/String; = "local_account_id"

.field public static final MULTIPLE_CLOUDS_SUPPORTED:Ljava/lang/String; = "multiple_clouds_supported"

.field public static final PROMPT:Ljava/lang/String; = "prompt"

.field public static final REDIRECT:Ljava/lang/String; = "redirect_uri"

.field public static final SCOPE:Ljava/lang/String; = "scopes"

.field public static final USERNAME:Ljava/lang/String; = "username"


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/broker/BrokerRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/broker/BrokerRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$SerializedNames;->this$0:Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
