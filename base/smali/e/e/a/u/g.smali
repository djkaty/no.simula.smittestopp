.class public final Le/e/a/u/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final y:Le/e/a/u/g;

.field public static final z:Le/e/a/u/g;


# instance fields
.field public final x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/e/a/u/g;

    const-string v1, "sig"

    invoke-direct {v0, v1}, Le/e/a/u/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/e/a/u/g;->y:Le/e/a/u/g;

    .line 2
    new-instance v0, Le/e/a/u/g;

    const-string v1, "enc"

    invoke-direct {v0, v1}, Le/e/a/u/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/e/a/u/g;->z:Le/e/a/u/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Le/e/a/u/g;->x:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key use identifier must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Le/e/a/u/g;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Le/e/a/u/g;->y:Le/e/a/u/g;

    .line 2
    iget-object v0, v0, Le/e/a/u/g;->x:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Le/e/a/u/g;->y:Le/e/a/u/g;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Le/e/a/u/g;->z:Le/e/a/u/g;

    .line 6
    iget-object v0, v0, Le/e/a/u/g;->x:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p0, Le/e/a/u/g;->z:Le/e/a/u/g;

    return-object p0

    .line 9
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Le/e/a/u/g;

    invoke-direct {v0, p0}, Le/e/a/u/g;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_3
    new-instance p0, Ljava/text/ParseException;

    const/4 v0, 0x0

    const-string v1, "JWK use value must not be empty or blank"

    invoke-direct {p0, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Le/e/a/u/g;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Le/e/a/u/g;

    .line 3
    iget-object v0, p0, Le/e/a/u/g;->x:Ljava/lang/String;

    iget-object p1, p1, Le/e/a/u/g;->x:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/e/a/u/g;->x:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/e/a/u/g;->x:Ljava/lang/String;

    return-object v0
.end method
