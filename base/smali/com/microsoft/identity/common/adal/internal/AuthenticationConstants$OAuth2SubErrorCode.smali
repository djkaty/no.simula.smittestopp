.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$OAuth2SubErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OAuth2SubErrorCode"
.end annotation


# static fields
.field public static final BAD_TOKEN:Ljava/lang/String; = "bad_token"

.field public static final DEVICE_AUTHENTICATION_FAILED:Ljava/lang/String; = "device_authentication_failed"

.field public static final PROTECTION_POLICY_REQUIRED:Ljava/lang/String; = "protection_policy_required"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
