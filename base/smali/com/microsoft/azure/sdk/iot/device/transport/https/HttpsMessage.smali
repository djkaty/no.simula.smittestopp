.class public interface abstract Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HTTPS_APP_PROPERTY_PREFIX:Ljava/lang/String; = "iothub-app-"

.field public static final HTTPS_SYSTEM_PROPERTY_PREFIX:Ljava/lang/String; = "iothub-"


# virtual methods
.method public abstract getBody()[B
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;
.end method

.method public abstract getSystemProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
