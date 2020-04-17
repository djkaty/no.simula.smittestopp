.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty$Property;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Property"
.end annotation


# instance fields
.field public metadata:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;

.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty$Property;->this$0:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty$Property;->value:Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;

    invoke-direct {p1, p3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty$Property;->metadata:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;Ljava/lang/Object;Ljava/lang/Integer;Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty$Property;-><init>(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty;Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty$Property;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty$Property;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty$Property;)Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinProperty$Property;->metadata:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;

    return-object p0
.end method
