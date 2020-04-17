.class public Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/SubStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubStreamIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/SubStreamGenerator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/azure/storage/SubStreamGenerator;Lcom/microsoft/azure/storage/SubStreamGenerator$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;-><init>(Lcom/microsoft/azure/storage/SubStreamGenerator;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;

    invoke-static {v0}, Lcom/microsoft/azure/storage/SubStreamGenerator;->access$100(Lcom/microsoft/azure/storage/SubStreamGenerator;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/microsoft/azure/storage/blob/SubStream;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;

    invoke-static {v0}, Lcom/microsoft/azure/storage/SubStreamGenerator;->access$110(Lcom/microsoft/azure/storage/SubStreamGenerator;)I

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/SubStream;

    iget-object v1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;

    .line 4
    invoke-static {v1}, Lcom/microsoft/azure/storage/SubStreamGenerator;->access$200(Lcom/microsoft/azure/storage/SubStreamGenerator;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;

    .line 5
    invoke-static {v1}, Lcom/microsoft/azure/storage/SubStreamGenerator;->access$308(Lcom/microsoft/azure/storage/SubStreamGenerator;)I

    move-result v1

    int-to-long v3, v1

    iget-object v1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;

    invoke-static {v1}, Lcom/microsoft/azure/storage/SubStreamGenerator;->access$400(Lcom/microsoft/azure/storage/SubStreamGenerator;)J

    move-result-wide v5

    mul-long v3, v3, v5

    iget-object v1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;

    .line 6
    invoke-static {v1}, Lcom/microsoft/azure/storage/SubStreamGenerator;->access$100(Lcom/microsoft/azure/storage/SubStreamGenerator;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;

    invoke-static {v1}, Lcom/microsoft/azure/storage/SubStreamGenerator;->access$400(Lcom/microsoft/azure/storage/SubStreamGenerator;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;

    invoke-static {v1}, Lcom/microsoft/azure/storage/SubStreamGenerator;->access$500(Lcom/microsoft/azure/storage/SubStreamGenerator;)J

    move-result-wide v5

    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->this$0:Lcom/microsoft/azure/storage/SubStreamGenerator;

    .line 7
    invoke-static {v1}, Lcom/microsoft/azure/storage/SubStreamGenerator;->access$600(Lcom/microsoft/azure/storage/SubStreamGenerator;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/storage/blob/SubStream;-><init>(Ljava/io/InputStream;JJLjava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SubStreamGenerator$SubStreamIterator;->next()Lcom/microsoft/azure/storage/blob/SubStream;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
