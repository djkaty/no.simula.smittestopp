.class public Lk/b/a/l2/i;
.super Lk/b/a/n;
.source "SourceFile"

# interfaces
.implements Lk/b/a/d;


# instance fields
.field public x:Lk/b/a/e;

.field public y:I


# direct methods
.method public constructor <init>(Lk/b/a/b0;)V
    .locals 2

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    .line 1
    iget v0, p1, Lk/b/a/b0;->x:I

    .line 2
    iput v0, p0, Lk/b/a/l2/i;->y:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lk/b/a/l2/m;->a(Lk/b/a/b0;Z)Lk/b/a/l2/m;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lk/b/a/x;->a(Lk/b/a/b0;Z)Lk/b/a/x;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lk/b/a/l2/i;->x:Lk/b/a/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public c()Lk/b/a/t;
    .locals 4

    new-instance v0, Lk/b/a/h1;

    iget v1, p0, Lk/b/a/l2/i;->y:I

    iget-object v2, p0, Lk/b/a/l2/i;->x:Lk/b/a/e;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lk/b/j/f;->a:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DistributionPointName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lk/b/a/l2/i;->y:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lk/b/a/l2/i;->x:Lk/b/a/e;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullName"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lk/b/a/l2/i;->x:Lk/b/a/e;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nameRelativeToCRLIssuer"

    :goto_0
    invoke-virtual {p0, v1, v0, v3, v2}, Lk/b/a/l2/i;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
