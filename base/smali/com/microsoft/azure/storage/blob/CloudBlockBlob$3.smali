.class public Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadFromMultiStream(Ljava/lang/Iterable;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

.field public final synthetic val$_accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$_operationContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final synthetic val$_requestOptions:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final synthetic val$blockId:Ljava/lang/String;

.field public final synthetic val$blockSize:J

.field public final synthetic val$sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$blockId:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$sourceStream:Ljava/io/InputStream;

    iput-wide p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$blockSize:J

    iput-object p6, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$_accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-object p7, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$_requestOptions:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p8, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$_operationContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$blockId:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$sourceStream:Ljava/io/InputStream;

    iget-wide v3, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$blockSize:J

    iget-object v5, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$_accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v6, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$_requestOptions:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v7, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$_operationContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadBlock(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;->val$sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    return-object v0
.end method
