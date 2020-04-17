.class public Ld/s/k;
.super Ld/s/p;
.source "SourceFile"


# annotations
.annotation runtime Ld/s/p$b;
    value = "navigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/s/p<",
        "Ld/s/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ld/s/q;


# direct methods
.method public constructor <init>(Ld/s/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/s/p;-><init>()V

    .line 2
    iput-object p1, p0, Ld/s/k;->a:Ld/s/q;

    return-void
.end method


# virtual methods
.method public a()Ld/s/i;
    .locals 1

    .line 18
    new-instance v0, Ld/s/j;

    invoke-direct {v0, p0}, Ld/s/j;-><init>(Ld/s/p;)V

    return-object v0
.end method

.method public a(Ld/s/i;Landroid/os/Bundle;Ld/s/n;Ld/s/p$a;)Ld/s/i;
    .locals 2

    .line 1
    check-cast p1, Ld/s/j;

    .line 2
    iget v0, p1, Ld/s/j;->G:I

    if-nez v0, :cond_2

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "no start destination defined via app:startDestination for "

    invoke-static {p3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 4
    iget p4, p1, Ld/s/i;->z:I

    if-eqz p4, :cond_1

    .line 5
    iget-object v0, p1, Ld/s/i;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 6
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Ld/s/i;->A:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object p1, p1, Ld/s/i;->A:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "the root navigation"

    .line 8
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Ld/s/j;->a(IZ)Ld/s/i;

    move-result-object v0

    if-nez v0, :cond_4

    .line 10
    iget-object p2, p1, Ld/s/j;->H:Ljava/lang/String;

    if-nez p2, :cond_3

    .line 11
    iget p2, p1, Ld/s/j;->G:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ld/s/j;->H:Ljava/lang/String;

    .line 12
    :cond_3
    iget-object p1, p1, Ld/s/j;->H:Ljava/lang/String;

    .line 13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "navigation destination "

    const-string p4, " is not a direct child of this NavGraph"

    invoke-static {p3, p1, p4}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_4
    iget-object p1, p0, Ld/s/k;->a:Ld/s/q;

    .line 15
    iget-object v1, v0, Ld/s/i;->x:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v1}, Ld/s/q;->a(Ljava/lang/String;)Ld/s/p;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p2}, Ld/s/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3, p4}, Ld/s/p;->a(Ld/s/i;Landroid/os/Bundle;Ld/s/n;Ld/s/p$a;)Ld/s/i;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
