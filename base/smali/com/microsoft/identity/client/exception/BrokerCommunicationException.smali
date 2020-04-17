.class public Lcom/microsoft/identity/client/exception/BrokerCommunicationException;
.super Lcom/microsoft/identity/common/exception/BaseException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "io_error"

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/common/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
