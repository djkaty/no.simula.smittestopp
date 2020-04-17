.class public Lcom/microsoft/appcenter/ingestion/models/one/Extensions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field public static final APP:Ljava/lang/String; = "app"

.field public static final DEVICE:Ljava/lang/String; = "device"

.field public static final LOC:Ljava/lang/String; = "loc"

.field public static final METADATA:Ljava/lang/String; = "metadata"

.field public static final NET:Ljava/lang/String; = "net"

.field public static final OS:Ljava/lang/String; = "os"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final SDK:Ljava/lang/String; = "sdk"

.field public static final USER:Ljava/lang/String; = "user"


# instance fields
.field public app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

.field public device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

.field public loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

.field public metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

.field public net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

.field public os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

.field public protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

.field public sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

.field public user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 1
    const-class v2, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_9

    .line 2
    :cond_1
    check-cast p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    .line 3
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 5
    :cond_5
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 6
    :cond_7
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 7
    :cond_9
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    .line 8
    :cond_b
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5

    :cond_c
    iget-object v2, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    if-eqz v2, :cond_d

    :goto_5
    return v1

    .line 9
    :cond_d
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_6

    :cond_e
    iget-object v2, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    if-eqz v2, :cond_f

    :goto_6
    return v1

    .line 10
    :cond_f
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_7

    :cond_10
    iget-object v2, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    if-eqz v2, :cond_11

    :goto_7
    return v1

    .line 11
    :cond_11
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    iget-object p1, p1, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    if-eqz v2, :cond_12

    invoke-virtual {v2, p1}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8

    :cond_12
    if-nez p1, :cond_13

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_14
    :goto_9
    return v1
.end method

.method public getApp()Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    return-object v0
.end method

.method public getDevice()Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    return-object v0
.end method

.method public getLoc()Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    return-object v0
.end method

.method public getMetadata()Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    return-object v0
.end method

.method public getNet()Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    return-object v0
.end method

.method public getOs()Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    return-object v0
.end method

.method public getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    return-object v0
.end method

.method public getSdk()Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    return-object v0
.end method

.method public getUser()Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "metadata"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->read(Lorg/json/JSONObject;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setMetadata(Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;)V

    :cond_0
    const-string v0, "protocol"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;-><init>()V

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->read(Lorg/json/JSONObject;)V

    .line 8
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setProtocol(Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;)V

    :cond_1
    const-string v0, "user"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;-><init>()V

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->read(Lorg/json/JSONObject;)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setUser(Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;)V

    :cond_2
    const-string v0, "device"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;-><init>()V

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;->read(Lorg/json/JSONObject;)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setDevice(Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;)V

    :cond_3
    const-string v0, "os"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;-><init>()V

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->read(Lorg/json/JSONObject;)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setOs(Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;)V

    :cond_4
    const-string v0, "app"

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;-><init>()V

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->read(Lorg/json/JSONObject;)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setApp(Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;)V

    :cond_5
    const-string v0, "net"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;-><init>()V

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->read(Lorg/json/JSONObject;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setNet(Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;)V

    :cond_6
    const-string v0, "sdk"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;-><init>()V

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->read(Lorg/json/JSONObject;)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setSdk(Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;)V

    :cond_7
    const-string v0, "loc"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 34
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;-><init>()V

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;->read(Lorg/json/JSONObject;)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setLoc(Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;)V

    :cond_8
    return-void
.end method

.method public setApp(Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->app:Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    return-void
.end method

.method public setDevice(Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->device:Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    return-void
.end method

.method public setLoc(Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->loc:Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    return-void
.end method

.method public setMetadata(Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->metadata:Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    return-void
.end method

.method public setNet(Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->net:Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    return-void
.end method

.method public setOs(Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->os:Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    return-void
.end method

.method public setProtocol(Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->protocol:Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    return-void
.end method

.method public setSdk(Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->sdk:Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    return-void
.end method

.method public setUser(Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->user:Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getMetadata()Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "metadata"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getMetadata()Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->write(Lorg/json/JSONStringer;)V

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "protocol"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->write(Lorg/json/JSONStringer;)V

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getUser()Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "user"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getUser()Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->write(Lorg/json/JSONStringer;)V

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getDevice()Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "device"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 15
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getDevice()Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;->write(Lorg/json/JSONStringer;)V

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getOs()Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "os"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 19
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getOs()Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->write(Lorg/json/JSONStringer;)V

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getApp()Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "app"

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 23
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getApp()Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->write(Lorg/json/JSONStringer;)V

    .line 24
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 25
    :cond_5
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getNet()Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "net"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 27
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getNet()Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->write(Lorg/json/JSONStringer;)V

    .line 28
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 29
    :cond_6
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getSdk()Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "sdk"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 31
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getSdk()Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->write(Lorg/json/JSONStringer;)V

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 33
    :cond_7
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getLoc()Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "loc"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getLoc()Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;->write(Lorg/json/JSONStringer;)V

    .line 36
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    :cond_8
    return-void
.end method
