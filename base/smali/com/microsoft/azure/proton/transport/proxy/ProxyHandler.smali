.class public interface abstract Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;
    }
.end annotation


# virtual methods
.method public abstract createProxyRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract validateProxyResponse(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;
.end method
