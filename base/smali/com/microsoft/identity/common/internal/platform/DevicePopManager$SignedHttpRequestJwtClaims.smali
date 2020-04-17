.class public final Lcom/microsoft/identity/common/internal/platform/DevicePopManager$SignedHttpRequestJwtClaims;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/platform/DevicePopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignedHttpRequestJwtClaims"
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "at"

.field public static final CNF:Ljava/lang/String; = "cnf"

.field public static final HTTP_HOST:Ljava/lang/String; = "u"

.field public static final HTTP_METHOD:Ljava/lang/String; = "m"

.field public static final HTTP_PATH:Ljava/lang/String; = "p"

.field public static final NONCE:Ljava/lang/String; = "nonce"

.field public static final TIMESTAMP:Ljava/lang/String; = "ts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
