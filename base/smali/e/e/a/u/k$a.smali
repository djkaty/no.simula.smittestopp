.class public Le/e/a/u/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/u/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final x:Le/e/a/v/c;

.field public final y:Le/e/a/v/c;

.field public final z:Le/e/a/v/c;


# direct methods
.method public constructor <init>(Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    iput-object p1, p0, Le/e/a/u/k$a;->x:Le/e/a/v/c;

    if-eqz p2, :cond_1

    .line 3
    iput-object p2, p0, Le/e/a/u/k$a;->y:Le/e/a/v/c;

    if-eqz p3, :cond_0

    .line 4
    iput-object p3, p0, Le/e/a/u/k$a;->z:Le/e/a/v/c;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The factor CRT coefficient must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The factor CRT exponent must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The prime factor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/spec/RSAOtherPrimeInfo;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Ljava/security/spec/RSAOtherPrimeInfo;->getPrime()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v0

    iput-object v0, p0, Le/e/a/u/k$a;->x:Le/e/a/v/c;

    .line 10
    invoke-virtual {p1}, Ljava/security/spec/RSAOtherPrimeInfo;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v0

    iput-object v0, p0, Le/e/a/u/k$a;->y:Le/e/a/v/c;

    .line 11
    invoke-virtual {p1}, Ljava/security/spec/RSAOtherPrimeInfo;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object p1

    iput-object p1, p0, Le/e/a/u/k$a;->z:Le/e/a/v/c;

    return-void
.end method
