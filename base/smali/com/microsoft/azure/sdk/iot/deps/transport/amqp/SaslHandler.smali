.class public interface abstract Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;
    }
.end annotation


# virtual methods
.method public abstract chooseSaslMechanism([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInitPayload(Ljava/lang/String;)[B
.end method

.method public abstract getPlainPassword()Ljava/lang/String;
.end method

.method public abstract getPlainUsername()Ljava/lang/String;
.end method

.method public abstract handleChallenge([B)[B
.end method

.method public abstract handleOutcome(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;)V
.end method

.method public abstract setSasToken(Ljava/lang/String;)V
.end method
