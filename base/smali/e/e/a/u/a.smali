.class public final Le/e/a/u/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final A:Le/e/a/u/a;

.field public static final B:Le/e/a/u/a;

.field public static final C:Le/e/a/u/a;

.field public static final D:Le/e/a/u/a;

.field public static final E:Le/e/a/u/a;

.field public static final F:Le/e/a/u/a;

.field public static final y:Le/e/a/u/a;

.field public static final z:Le/e/a/u/a;


# instance fields
.field public final x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/e/a/u/a;

    const-string v1, "P-256"

    const-string v2, "secp256r1"

    const-string v3, "1.2.840.10045.3.1.7"

    invoke-direct {v0, v1, v2, v3}, Le/e/a/u/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/e/a/u/a;->y:Le/e/a/u/a;

    .line 2
    new-instance v0, Le/e/a/u/a;

    const-string v1, "P-256K"

    const-string v2, "secp256k1"

    const-string v3, "1.3.132.0.10"

    invoke-direct {v0, v1, v2, v3}, Le/e/a/u/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/e/a/u/a;->z:Le/e/a/u/a;

    .line 3
    new-instance v0, Le/e/a/u/a;

    const-string v1, "P-384"

    const-string v2, "secp384r1"

    const-string v3, "1.3.132.0.34"

    invoke-direct {v0, v1, v2, v3}, Le/e/a/u/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/e/a/u/a;->A:Le/e/a/u/a;

    .line 4
    new-instance v0, Le/e/a/u/a;

    const-string v1, "P-521"

    const-string v2, "secp521r1"

    const-string v3, "1.3.132.0.35"

    invoke-direct {v0, v1, v2, v3}, Le/e/a/u/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/e/a/u/a;->B:Le/e/a/u/a;

    .line 5
    new-instance v0, Le/e/a/u/a;

    const-string v1, "Ed25519"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Le/e/a/u/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/e/a/u/a;->C:Le/e/a/u/a;

    .line 6
    new-instance v0, Le/e/a/u/a;

    const-string v1, "Ed448"

    invoke-direct {v0, v1, v1, v2}, Le/e/a/u/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/e/a/u/a;->D:Le/e/a/u/a;

    .line 7
    new-instance v0, Le/e/a/u/a;

    const-string v1, "X25519"

    invoke-direct {v0, v1, v1, v2}, Le/e/a/u/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/e/a/u/a;->E:Le/e/a/u/a;

    .line 8
    new-instance v0, Le/e/a/u/a;

    const-string v1, "X448"

    invoke-direct {v0, v1, v1, v2}, Le/e/a/u/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/e/a/u/a;->F:Le/e/a/u/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Le/e/a/u/a;->x:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JOSE cryptographic curve name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Le/e/a/u/a;
    .locals 2

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    sget-object v0, Le/e/a/u/a;->y:Le/e/a/u/a;

    .line 3
    iget-object v0, v0, Le/e/a/u/a;->x:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p0, Le/e/a/u/a;->y:Le/e/a/u/a;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Le/e/a/u/a;->z:Le/e/a/u/a;

    .line 7
    iget-object v0, v0, Le/e/a/u/a;->x:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget-object p0, Le/e/a/u/a;->z:Le/e/a/u/a;

    return-object p0

    .line 10
    :cond_1
    sget-object v0, Le/e/a/u/a;->A:Le/e/a/u/a;

    .line 11
    iget-object v0, v0, Le/e/a/u/a;->x:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object p0, Le/e/a/u/a;->A:Le/e/a/u/a;

    return-object p0

    .line 14
    :cond_2
    sget-object v0, Le/e/a/u/a;->B:Le/e/a/u/a;

    .line 15
    iget-object v0, v0, Le/e/a/u/a;->x:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    sget-object p0, Le/e/a/u/a;->B:Le/e/a/u/a;

    return-object p0

    .line 18
    :cond_3
    sget-object v0, Le/e/a/u/a;->C:Le/e/a/u/a;

    .line 19
    iget-object v0, v0, Le/e/a/u/a;->x:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    sget-object p0, Le/e/a/u/a;->C:Le/e/a/u/a;

    return-object p0

    .line 22
    :cond_4
    sget-object v0, Le/e/a/u/a;->D:Le/e/a/u/a;

    .line 23
    iget-object v0, v0, Le/e/a/u/a;->x:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    sget-object p0, Le/e/a/u/a;->D:Le/e/a/u/a;

    return-object p0

    .line 26
    :cond_5
    sget-object v0, Le/e/a/u/a;->E:Le/e/a/u/a;

    .line 27
    iget-object v0, v0, Le/e/a/u/a;->x:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    sget-object p0, Le/e/a/u/a;->E:Le/e/a/u/a;

    return-object p0

    .line 30
    :cond_6
    sget-object v0, Le/e/a/u/a;->F:Le/e/a/u/a;

    .line 31
    iget-object v0, v0, Le/e/a/u/a;->x:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    sget-object p0, Le/e/a/u/a;->F:Le/e/a/u/a;

    return-object p0

    .line 34
    :cond_7
    new-instance v0, Le/e/a/u/a;

    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, p0, v1, v1}, Le/e/a/u/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 36
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The cryptographic curve string must not be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Le/e/a/u/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/e/a/u/a;->x:Ljava/lang/String;

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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/e/a/u/a;->x:Ljava/lang/String;

    return-object v0
.end method
