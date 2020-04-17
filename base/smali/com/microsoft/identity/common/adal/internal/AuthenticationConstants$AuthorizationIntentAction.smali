.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$AuthorizationIntentAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorizationIntentAction"
.end annotation


# static fields
.field public static final CANCEL_INTERACTIVE_REQUEST:Ljava/lang/String; = "cancel_interactive_request"

.field public static final RETURN_INTERACTIVE_REQUEST_RESULT:Ljava/lang/String; = "return_interactive_request_result"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
