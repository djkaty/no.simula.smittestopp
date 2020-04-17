.class public Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATUS_NAME:Ljava/lang/String; = "status"


# instance fields
.field public status:Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationInfo;->status:Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    return-object v0
.end method

.method public setStatus(Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationInfo;->status:Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    return-void
.end method
