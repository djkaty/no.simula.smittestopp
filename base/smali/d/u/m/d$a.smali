.class public Ld/u/m/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/u/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/u/m/d$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ld/u/m/d$a;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Ld/u/m/d$a;->d:Z

    .line 5
    iput p4, p0, Ld/u/m/d$a;->e:I

    const/4 p1, 0x5

    if-nez p2, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "INT"

    .line 7
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x3

    goto :goto_2

    :cond_1
    const-string p3, "CHAR"

    .line 8
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "CLOB"

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "TEXT"

    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "BLOB"

    .line 11
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "REAL"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "FLOA"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "DOUB"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    :goto_0
    const/4 p1, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x2

    .line 15
    :goto_2
    iput p1, p0, Ld/u/m/d$a;->c:I

    .line 16
    iput-object p5, p0, Ld/u/m/d$a;->f:Ljava/lang/String;

    .line 17
    iput p6, p0, Ld/u/m/d$a;->g:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 1
    const-class v2, Ld/u/m/d$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Ld/u/m/d$a;

    .line 3
    iget v2, p0, Ld/u/m/d$a;->e:I

    iget v3, p1, Ld/u/m/d$a;->e:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Ld/u/m/d$a;->a:Ljava/lang/String;

    iget-object v3, p1, Ld/u/m/d$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-boolean v2, p0, Ld/u/m/d$a;->d:Z

    iget-boolean v3, p1, Ld/u/m/d$a;->d:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Ld/u/m/d$a;->g:I

    const/4 v3, 0x2

    if-ne v2, v0, :cond_5

    iget v2, p1, Ld/u/m/d$a;->g:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Ld/u/m/d$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v4, p1, Ld/u/m/d$a;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 8
    :cond_5
    iget v2, p0, Ld/u/m/d$a;->g:I

    if-ne v2, v3, :cond_6

    iget v2, p1, Ld/u/m/d$a;->g:I

    if-ne v2, v0, :cond_6

    iget-object v2, p1, Ld/u/m/d$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p0, Ld/u/m/d$a;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 10
    :cond_6
    iget v2, p0, Ld/u/m/d$a;->g:I

    if-eqz v2, :cond_8

    iget v3, p1, Ld/u/m/d$a;->g:I

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Ld/u/m/d$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Ld/u/m/d$a;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_7
    iget-object v2, p1, Ld/u/m/d$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_0
    return v1

    .line 12
    :cond_8
    iget v2, p0, Ld/u/m/d$a;->c:I

    iget p1, p1, Ld/u/m/d$a;->c:I

    if-ne v2, p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/u/m/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Ld/u/m/d$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Ld/u/m/d$a;->d:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Ld/u/m/d$a;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Column{name=\'"

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/u/m/d$a;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", type=\'"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Ld/u/m/d$a;->b:Ljava/lang/String;

    const-string v3, ", affinity=\'"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Ld/u/m/d$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", notNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ld/u/m/d$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primaryKeyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/u/m/d$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/u/m/d$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
