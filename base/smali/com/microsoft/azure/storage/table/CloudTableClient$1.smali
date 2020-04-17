.class public Lcom/microsoft/azure/storage/table/CloudTableClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/table/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/table/CloudTableClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/azure/storage/table/EntityResolver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/table/CloudTableClient;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/table/CloudTableClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$1;->this$0:Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/azure/storage/table/CloudTableClient$1;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, "TableName"

    .line 2
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
