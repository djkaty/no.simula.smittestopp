.class public final Le/c/a/a/b/i/k/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/b/i/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Le/c/a/a/b/i/k/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/h0<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Le/c/a/a/b/c;


# direct methods
.method public synthetic constructor <init>(Le/c/a/a/b/i/k/h0;Le/c/a/a/b/c;Le/c/a/a/b/i/k/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/c/a/a/b/i/k/c$b;->a:Le/c/a/a/b/i/k/h0;

    .line 3
    iput-object p2, p0, Le/c/a/a/b/i/k/c$b;->b:Le/c/a/a/b/c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    instance-of v1, p1, Le/c/a/a/b/i/k/c$b;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Le/c/a/a/b/i/k/c$b;

    .line 3
    iget-object v1, p0, Le/c/a/a/b/i/k/c$b;->a:Le/c/a/a/b/i/k/h0;

    iget-object v2, p1, Le/c/a/a/b/i/k/c$b;->a:Le/c/a/a/b/i/k/h0;

    invoke-static {v1, v2}, Ld/b/a/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/c/a/a/b/i/k/c$b;->b:Le/c/a/a/b/c;

    iget-object p1, p1, Le/c/a/a/b/i/k/c$b;->b:Le/c/a/a/b/c;

    .line 4
    invoke-static {v1, p1}, Ld/b/a/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/c/a/a/b/i/k/c$b;->a:Le/c/a/a/b/i/k/h0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/c/a/a/b/i/k/c$b;->b:Le/c/a/a/b/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ld/b/a/r;->c(Ljava/lang/Object;)Le/c/a/a/b/j/o;

    move-result-object v0

    iget-object v1, p0, Le/c/a/a/b/i/k/c$b;->a:Le/c/a/a/b/i/k/h0;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Le/c/a/a/b/j/o;->a(Ljava/lang/String;Ljava/lang/Object;)Le/c/a/a/b/j/o;

    iget-object v1, p0, Le/c/a/a/b/i/k/c$b;->b:Le/c/a/a/b/c;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Le/c/a/a/b/j/o;->a(Ljava/lang/String;Ljava/lang/Object;)Le/c/a/a/b/j/o;

    invoke-virtual {v0}, Le/c/a/a/b/j/o;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
