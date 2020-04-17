.class public Lcom/microsoft/identity/client/AcquireTokenParameters;
.super Lcom/microsoft/identity/client/TokenParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;
    }
.end annotation


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mCallback:Lcom/microsoft/identity/client/AuthenticationCallback;

.field public mExtraQueryStringParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mExtraScopesToConsent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFragment:Landroidx/fragment/app/Fragment;

.field public mLoginHint:Ljava/lang/String;

.field public mPrompt:Lcom/microsoft/identity/client/Prompt;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/TokenParameters;-><init>(Lcom/microsoft/identity/client/TokenParameters$Builder;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$000(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mActivity:Landroid/app/Activity;

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$100(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mFragment:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$200(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mLoginHint:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$300(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Lcom/microsoft/identity/client/Prompt;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mPrompt:Lcom/microsoft/identity/client/Prompt;

    .line 6
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$400(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mExtraScopesToConsent:Ljava/util/List;

    .line 7
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$500(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mExtraQueryStringParameters:Ljava/util/List;

    .line 8
    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->access$600(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mCallback:Lcom/microsoft/identity/client/AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mCallback:Lcom/microsoft/identity/client/AuthenticationCallback;

    return-object v0
.end method

.method public getExtraQueryStringParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mExtraQueryStringParameters:Ljava/util/List;

    return-object v0
.end method

.method public getExtraScopesToConsent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mExtraScopesToConsent:Ljava/util/List;

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getLoginHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mLoginHint:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Lcom/microsoft/identity/client/Prompt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mPrompt:Lcom/microsoft/identity/client/Prompt;

    return-object v0
.end method

.method public setLoginHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenParameters;->mLoginHint:Ljava/lang/String;

    return-void
.end method
