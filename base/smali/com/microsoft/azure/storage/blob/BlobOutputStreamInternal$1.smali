.class public Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->dispatchWrite()V
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
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;

.field public final synthetic val$blockID:Ljava/lang/String;

.field public final synthetic val$bufferRef:Ljava/io/ByteArrayInputStream;

.field public final synthetic val$writeLength:I


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;->this$0:Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;

    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;->val$bufferRef:Ljava/io/ByteArrayInputStream;

    iput-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;->val$blockID:Ljava/lang/String;

    iput p4, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;->val$writeLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;->this$0:Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;->val$bufferRef:Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;->val$blockID:Ljava/lang/String;

    iget v3, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;->val$writeLength:I

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->access$000(Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;Ljava/io/ByteArrayInputStream;Ljava/lang/String;J)V

    const/4 v0, 0x0

    return-object v0
.end method
