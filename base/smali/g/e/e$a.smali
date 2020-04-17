.class public final Lg/e/e$a;
.super Lg/e/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lg/c/g$l;

.field public final f:Lg/c/g$l;

.field public final g:Lg/c/g$i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lg/e/e;-><init>()V

    .line 2
    new-instance v0, Lg/c/g$l;

    invoke-direct {v0, p0}, Lg/c/g$l;-><init>(Lg/c/g;)V

    iput-object v0, p0, Lg/e/e$a;->e:Lg/c/g$l;

    .line 3
    new-instance v0, Lg/c/g$l;

    invoke-direct {v0, p0}, Lg/c/g$l;-><init>(Lg/c/g;)V

    iput-object v0, p0, Lg/e/e$a;->f:Lg/c/g$l;

    .line 4
    new-instance v0, Lg/c/g$i;

    const/16 v1, 0x6c

    invoke-direct {v0, p0, v1}, Lg/c/g$i;-><init>(Lg/c/g;I)V

    iput-object v0, p0, Lg/e/e$a;->g:Lg/c/g$i;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/e;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lg/e/e;->c()Lg/c/g$i;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lg/c/g$a;->a()V

    invoke-virtual {p1}, Lg/c/g$a;->b()J

    const/4 p1, 0x0

    throw p1
.end method

.method public b()Lg/c/g$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/e$a;->f:Lg/c/g$l;

    return-object v0
.end method

.method public c()Lg/c/g$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/e$a;->g:Lg/c/g$i;

    return-object v0
.end method
