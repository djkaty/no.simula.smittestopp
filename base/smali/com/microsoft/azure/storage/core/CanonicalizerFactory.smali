.class public final Lcom/microsoft/azure/storage/core/CanonicalizerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLOB_QUEUE_FILE_V2_INSTANCE:Lcom/microsoft/azure/storage/core/BlobQueueFileCanonicalizer;

.field public static final TABLE_INSTANCE:Lcom/microsoft/azure/storage/core/TableCanonicalizer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/BlobQueueFileCanonicalizer;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/BlobQueueFileCanonicalizer;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/core/CanonicalizerFactory;->BLOB_QUEUE_FILE_V2_INSTANCE:Lcom/microsoft/azure/storage/core/BlobQueueFileCanonicalizer;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/core/TableCanonicalizer;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/TableCanonicalizer;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/core/CanonicalizerFactory;->TABLE_INSTANCE:Lcom/microsoft/azure/storage/core/TableCanonicalizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlobQueueFileCanonicalizer(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/core/Canonicalizer;
    .locals 0

    .line 1
    sget-object p0, Lcom/microsoft/azure/storage/core/CanonicalizerFactory;->BLOB_QUEUE_FILE_V2_INSTANCE:Lcom/microsoft/azure/storage/core/BlobQueueFileCanonicalizer;

    return-object p0
.end method

.method public static getTableCanonicalizer(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/core/Canonicalizer;
    .locals 0

    .line 1
    sget-object p0, Lcom/microsoft/azure/storage/core/CanonicalizerFactory;->TABLE_INSTANCE:Lcom/microsoft/azure/storage/core/TableCanonicalizer;

    return-object p0
.end method
