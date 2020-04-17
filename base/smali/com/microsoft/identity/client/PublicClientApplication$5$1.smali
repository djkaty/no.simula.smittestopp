.class public Lcom/microsoft/identity/client/PublicClientApplication$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/identity/client/PublicClientApplication$5;

.field public final synthetic val$baseException:Lcom/microsoft/identity/common/exception/BaseException;

.field public final synthetic val$localAuthenticationCallback:Lcom/microsoft/identity/common/internal/controllers/CommandCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication$5;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;Lcom/microsoft/identity/common/exception/BaseException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$5$1;->this$1:Lcom/microsoft/identity/client/PublicClientApplication$5;

    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$5$1;->val$localAuthenticationCallback:Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    iput-object p3, p0, Lcom/microsoft/identity/client/PublicClientApplication$5$1;->val$baseException:Lcom/microsoft/identity/common/exception/BaseException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$5$1;->val$localAuthenticationCallback:Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$5$1;->val$baseException:Lcom/microsoft/identity/common/exception/BaseException;

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    return-void
.end method
