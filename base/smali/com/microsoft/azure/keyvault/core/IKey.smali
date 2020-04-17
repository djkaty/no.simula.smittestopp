.class public interface abstract Lcom/microsoft/azure/keyvault/core/IKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract decryptAsync([B[B[B[BLjava/lang/String;)Le/c/b/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B[B",
            "Ljava/lang/String;",
            ")",
            "Le/c/b/a/a/a<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract encryptAsync([B[B[BLjava/lang/String;)Le/c/b/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B",
            "Ljava/lang/String;",
            ")",
            "Le/c/b/a/a/a<",
            "Ljava/lang/Object<",
            "[B[B",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDefaultEncryptionAlgorithm()Ljava/lang/String;
.end method

.method public abstract getDefaultKeyWrapAlgorithm()Ljava/lang/String;
.end method

.method public abstract getDefaultSignatureAlgorithm()Ljava/lang/String;
.end method

.method public abstract getKid()Ljava/lang/String;
.end method

.method public abstract signAsync([BLjava/lang/String;)Le/c/b/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Le/c/b/a/a/a<",
            "Lk/a/a/b/e/b<",
            "[B",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract unwrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Le/c/b/a/a/a<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract verifyAsync([B[BLjava/lang/String;)Le/c/b/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            ")",
            "Le/c/b/a/a/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract wrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Le/c/b/a/a/a<",
            "Lk/a/a/b/e/b<",
            "[B",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
