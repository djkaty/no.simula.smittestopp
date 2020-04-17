.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$OAuth2ErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OAuth2ErrorCode"
.end annotation


# static fields
.field public static final INTERACTION_REQUIRED:Ljava/lang/String; = "interaction_required"

.field public static final INVALID_GRANT:Ljava/lang/String; = "invalid_grant"

.field public static final UNAUTHORIZED_CLIENT:Ljava/lang/String; = "unauthorized_client"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
