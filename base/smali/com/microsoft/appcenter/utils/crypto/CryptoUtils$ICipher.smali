.class public interface abstract Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICipher"
.end annotation


# virtual methods
.method public abstract doFinal([B)[B
.end method

.method public abstract doFinal([BII)[B
.end method

.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getBlockSize()I
.end method

.method public abstract getIV()[B
.end method

.method public abstract getProvider()Ljava/lang/String;
.end method

.method public abstract init(ILjava/security/Key;)V
.end method

.method public abstract init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
.end method
