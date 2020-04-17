.class public final Lk/a/b/a/b/n/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk/a/b/a/b/f;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/b/f;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    .line 4
    iput-object p2, p0, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/f;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the condition field is mandatory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lk/a/b/a/b/n/j;)V
    .locals 1

    .line 3
    iget-object v0, p1, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    iput-object v0, p0, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    .line 4
    iget-object v0, p1, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lk/a/b/a/b/n/j;->c:Ljava/util/Map;

    iput-object p1, p0, Lk/a/b/a/b/n/j;->c:Ljava/util/Map;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 1
    const-class v2, Lk/a/b/a/b/n/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    check-cast p1, Lk/a/b/a/b/n/j;

    .line 3
    iget-object v2, p0, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 5
    :cond_5
    iget-object v2, p0, Lk/a/b/a/b/n/j;->c:Ljava/util/Map;

    iget-object p1, p1, Lk/a/b/a/b/n/j;->c:Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    :goto_2
    return v1

    :cond_7
    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/a/b/a/b/f;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lk/a/b/a/b/n/j;->c:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Error{condition="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", info="

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lk/a/b/a/b/n/j;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
