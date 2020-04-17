.class public final Lg/e/e$b;
.super Lg/e/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final e:Lg/c/g$k;

.field public final f:Lg/c/g$i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lg/e/e;-><init>()V

    .line 2
    new-instance v0, Lg/c/g$k;

    invoke-direct {v0, p0}, Lg/c/g$k;-><init>(Lg/c/g;)V

    iput-object v0, p0, Lg/e/e$b;->e:Lg/c/g$k;

    .line 3
    new-instance v0, Lg/c/g$i;

    const/16 v1, 0x6c

    invoke-direct {v0, p0, v1}, Lg/c/g$i;-><init>(Lg/c/g;I)V

    iput-object v0, p0, Lg/e/e$b;->f:Lg/c/g$i;

    return-void
.end method


# virtual methods
.method public b()Lg/c/g$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/e$b;->e:Lg/c/g$k;

    return-object v0
.end method

.method public c()Lg/c/g$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/e$b;->f:Lg/c/g$i;

    return-object v0
.end method
