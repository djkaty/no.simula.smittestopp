.class public abstract Lcom/microsoft/identity/client/AuthenticationScheme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/authscheme/INameable;


# instance fields
.field public final mSchemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/client/AuthenticationScheme;->mSchemeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AuthenticationScheme;->mSchemeName:Ljava/lang/String;

    return-object v0
.end method
