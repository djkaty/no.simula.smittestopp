.class public final Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/JWSBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Claims"
.end annotation


# instance fields
.field public mAudience:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "aud"
    .end annotation
.end field

.field public mIssueAt:J
    .annotation runtime Le/c/c/v/c;
        value = "iat"
    .end annotation
.end field

.field public mNonce:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "nonce"
    .end annotation
.end field

.field public final synthetic this$0:Lcom/microsoft/identity/common/adal/internal/JWSBuilder;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/adal/internal/JWSBuilder;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;->this$0:Lcom/microsoft/identity/common/adal/internal/JWSBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/adal/internal/JWSBuilder;Lcom/microsoft/identity/common/adal/internal/JWSBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;-><init>(Lcom/microsoft/identity/common/adal/internal/JWSBuilder;)V

    return-void
.end method

.method public static synthetic access$102(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;->mNonce:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;->mAudience:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;->mIssueAt:J

    return-wide p1
.end method
