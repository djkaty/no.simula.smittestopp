.class public final Le/e/a/u/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final A:Le/e/a/u/f;

.field public static final B:Le/e/a/u/f;

.field public static final y:Le/e/a/u/f;

.field public static final z:Le/e/a/u/f;


# instance fields
.field public final x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/e/a/u/f;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v2, "EC"

    invoke-direct {v0, v2, v1}, Le/e/a/u/f;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/u/f;->y:Le/e/a/u/f;

    .line 2
    new-instance v0, Le/e/a/u/f;

    sget-object v1, Le/e/a/r;->REQUIRED:Le/e/a/r;

    const-string v2, "RSA"

    invoke-direct {v0, v2, v1}, Le/e/a/u/f;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/u/f;->z:Le/e/a/u/f;

    .line 3
    new-instance v0, Le/e/a/u/f;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "oct"

    invoke-direct {v0, v2, v1}, Le/e/a/u/f;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/u/f;->A:Le/e/a/u/f;

    .line 4
    new-instance v0, Le/e/a/u/f;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "OKP"

    invoke-direct {v0, v2, v1}, Le/e/a/u/f;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/u/f;->B:Le/e/a/u/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le/e/a/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Le/e/a/u/f;->x:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The key type value must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Le/e/a/u/f;
    .locals 2

    if-eqz p0, :cond_4

    .line 2
    sget-object v0, Le/e/a/u/f;->y:Le/e/a/u/f;

    .line 3
    iget-object v0, v0, Le/e/a/u/f;->x:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p0, Le/e/a/u/f;->y:Le/e/a/u/f;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Le/e/a/u/f;->z:Le/e/a/u/f;

    .line 7
    iget-object v0, v0, Le/e/a/u/f;->x:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget-object p0, Le/e/a/u/f;->z:Le/e/a/u/f;

    return-object p0

    .line 10
    :cond_1
    sget-object v0, Le/e/a/u/f;->A:Le/e/a/u/f;

    .line 11
    iget-object v0, v0, Le/e/a/u/f;->x:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object p0, Le/e/a/u/f;->A:Le/e/a/u/f;

    return-object p0

    .line 14
    :cond_2
    sget-object v0, Le/e/a/u/f;->B:Le/e/a/u/f;

    .line 15
    iget-object v0, v0, Le/e/a/u/f;->x:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    sget-object p0, Le/e/a/u/f;->B:Le/e/a/u/f;

    return-object p0

    .line 18
    :cond_3
    new-instance v0, Le/e/a/u/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/e/a/u/f;-><init>(Ljava/lang/String;Le/e/a/r;)V

    return-object v0

    .line 19
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key type to parse must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/e/a/u/f;->x:Ljava/lang/String;

    invoke-static {v1}, Li/a/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Le/e/a/u/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/e/a/u/f;->x:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/e/a/u/f;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/e/a/u/f;->x:Ljava/lang/String;

    return-object v0
.end method
