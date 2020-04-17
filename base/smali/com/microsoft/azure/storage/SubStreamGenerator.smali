.class public final Lcom/microsoft/azure/storage/SubStreamGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final blockSize:J

.field public blocksPending:I

.field public currentBlock:I

.field public lastBlockSize:J

.field public final mutex:Ljava/lang/Object;

.field public final wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->mutex:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->currentBlock:I

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->wrappedStream:Ljava/io/InputStream;

    .line 5
    iput p2, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->blocksPending:I

    .line 6
    iput-wide p3, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->blockSize:J

    .line 7
    iput-wide p3, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->lastBlockSize:J

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/storage/SubStreamGenerator;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->blocksPending:I

    return p0
.end method

.method public static synthetic access$110(Lcom/microsoft/azure/storage/SubStreamGenerator;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->blocksPending:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->blocksPending:I

    return v0
.end method

.method public static synthetic access$200(Lcom/microsoft/azure/storage/SubStreamGenerator;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->wrappedStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic access$308(Lcom/microsoft/azure/storage/SubStreamGenerator;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->currentBlock:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->currentBlock:I

    return v0
.end method

.method public static synthetic access$400(Lcom/microsoft/azure/storage/SubStreamGenerator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->blockSize:J

    return-wide v0
.end method

.method public static synthetic access$500(Lcom/microsoft/azure/storage/SubStreamGenerator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->lastBlockSize:J

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/microsoft/azure/storage/SubStreamGenerator;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->mutex:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;-><init>(Lcom/microsoft/azure/storage/SubStreamGenerator;Lcom/microsoft/azure/storage/SubStreamGenerator$1;)V

    return-object v0
.end method

.method public setLastBlockSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator;->lastBlockSize:J

    return-void
.end method
