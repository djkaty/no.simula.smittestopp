.class public final Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/JWSBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JwsHeader"
.end annotation


# instance fields
.field public mAlgorithm:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "alg"
    .end annotation
.end field

.field public mCert:[Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "x5c"
    .end annotation
.end field

.field public mType:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "typ"
    .end annotation
.end field

.field public final synthetic this$0:Lcom/microsoft/identity/common/adal/internal/JWSBuilder;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/adal/internal/JWSBuilder;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;->this$0:Lcom/microsoft/identity/common/adal/internal/JWSBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/adal/internal/JWSBuilder;Lcom/microsoft/identity/common/adal/internal/JWSBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;-><init>(Lcom/microsoft/identity/common/adal/internal/JWSBuilder;)V

    return-void
.end method

.method public static synthetic access$502(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;->mAlgorithm:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;->mType:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;->mCert:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;->mCert:[Ljava/lang/String;

    return-object p1
.end method
