.class public abstract Lh/k/b/j;
.super Lh/k/b/b;
.source "SourceFile"

# interfaces
.implements Lh/m/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh/k/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lh/k/b/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lh/k/b/j;

    .line 3
    move-object v1, p0

    check-cast v1, Lh/k/b/i;

    .line 4
    iget-object v3, v1, Lh/k/b/i;->A:Lh/m/c;

    .line 5
    move-object v4, p1

    check-cast v4, Lh/k/b/i;

    .line 6
    iget-object v5, v4, Lh/k/b/i;->A:Lh/m/c;

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, v1, Lh/k/b/i;->B:Ljava/lang/String;

    iget-object v5, v4, Lh/k/b/i;->B:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    iget-object v1, v1, Lh/k/b/i;->C:Ljava/lang/String;

    iget-object v3, v4, Lh/k/b/i;->C:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lh/k/b/b;->y:Ljava/lang/Object;

    iget-object p1, p1, Lh/k/b/b;->y:Ljava/lang/Object;

    .line 13
    invoke-static {v1, p1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 14
    :cond_2
    instance-of v0, p1, Lh/m/e;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lh/k/b/b;->a()Lh/m/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    move-object v0, p0

    check-cast v0, Lh/k/b/i;

    .line 2
    iget-object v1, v0, Lh/k/b/i;->A:Lh/m/c;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v2, v0, Lh/k/b/i;->B:Ljava/lang/String;

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 6
    iget-object v0, v0, Lh/k/b/i;->C:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lh/k/b/b;->a()Lh/m/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "property "

    .line 3
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lh/k/b/i;

    .line 4
    iget-object v1, v1, Lh/k/b/i;->B:Ljava/lang/String;

    const-string v2, " (Kotlin reflection is not available)"

    .line 5
    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
