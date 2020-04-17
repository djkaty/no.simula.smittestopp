.class public abstract Lg/e/e;
.super Lg/c/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/e$b;,
        Lg/e/e$a;
    }
.end annotation


# static fields
.field public static transient d:Lg/c/d$f;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lg/c/d;->d()Lg/c/d;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lg/c/d;->a:Lg/c/d$f;

    .line 3
    sput-object v0, Lg/e/e;->d:Lg/c/d$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lg/c/f$a;->a:Lg/c/f;

    .line 2
    invoke-direct {p0, v0}, Lg/c/g;-><init>(Lg/c/f;)V

    return-void
.end method

.method public static e()Lg/e/e;
    .locals 1

    .line 1
    invoke-static {}, Lg/c/d;->d()Lg/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/e/e$a;

    invoke-direct {v0}, Lg/e/e$a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lg/e/e$b;

    invoke-direct {v0}, Lg/e/e$b;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()Lg/a/d/e;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lg/e/e;->b()Lg/c/g$f;

    move-result-object v0

    invoke-virtual {v0}, Lg/c/g$f;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lg/a/d/e;->valueOf(J)Lg/a/d/e;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .line 6
    sget-object v0, Lg/e/e;->d:Lg/c/d$f;

    sget-object v1, Lg/c/d$f;->LINUX:Lg/c/d$f;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, ""

    .line 7
    iput-object p1, p0, Lg/e/e;->c:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lg/e/e;->c()Lg/c/g$i;

    move-result-object p1

    .line 9
    iget v0, p1, Lg/c/g$h;->d:I

    .line 10
    new-array v0, v0, [B

    .line 11
    invoke-virtual {p1}, Lg/c/g$a;->a()V

    invoke-virtual {p1}, Lg/c/g$a;->b()J

    throw v2

    .line 12
    :cond_1
    invoke-virtual {p0}, Lg/e/e;->c()Lg/c/g$i;

    move-result-object p1

    invoke-virtual {p1}, Lg/c/g$j;->c()Ljava/lang/String;

    throw v2
.end method

.method public final a(Lg/a/d/e;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/e/e;->b()Lg/c/g$f;

    move-result-object v0

    invoke-virtual {p1}, Lg/a/d/e;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/c/g$f;->a(Ljava/lang/Number;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lg/e/e;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lg/e/e;->c()Lg/c/g$i;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lg/c/g$a;->a()V

    invoke-virtual {p1}, Lg/c/g$a;->b()J

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract b()Lg/c/g$f;
.end method

.method public abstract c()Lg/c/g$i;
.end method

.method public d()I
    .locals 2

    .line 1
    sget-object v0, Lg/e/e;->d:Lg/c/d$f;

    sget-object v1, Lg/c/d$f;->LINUX:Lg/c/d$f;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/e/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lg/e/e;->c()Lg/c/g$i;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lg/c/g$a;->a()V

    invoke-virtual {v0}, Lg/c/g$a;->b()J

    const/4 v0, 0x0

    throw v0
.end method
