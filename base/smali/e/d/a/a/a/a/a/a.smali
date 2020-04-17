.class public final synthetic Le/d/a/a/a/a/a/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic a:Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/a/a/a/a;->a:Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le/d/a/a/a/a/a/a;->a:Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
