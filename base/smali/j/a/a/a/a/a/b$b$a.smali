.class public Lj/a/a/a/a/a/b$b$a;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/a/a/a/a/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lj/a/a/a/a/a/b$b;


# direct methods
.method public constructor <init>(Lj/a/a/a/a/a/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget-object v0, v0, Lj/a/a/a/a/a/a$a;->i:Landroid/os/Handler;

    new-instance v1, Lj/a/a/a/a/a/b$b$a$b;

    invoke-direct {v1, p0, p1}, Lj/a/a/a/a/a/b$b$a$b;-><init>(Lj/a/a/a/a/a/b$b$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScanFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget-object v0, v0, Lj/a/a/a/a/a/a$a;->i:Landroid/os/Handler;

    new-instance v1, Lj/a/a/a/a/a/b$b$a$c;

    invoke-direct {v1, p0, p1}, Lj/a/a/a/a/a/b$b$a$c;-><init>(Lj/a/a/a/a/a/b$b$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget-object v0, v0, Lj/a/a/a/a/a/a$a;->i:Landroid/os/Handler;

    new-instance v1, Lj/a/a/a/a/a/b$b$a$a;

    invoke-direct {v1, p0, p2, p1}, Lj/a/a/a/a/a/b$b$a$a;-><init>(Lj/a/a/a/a/a/b$b$a;Landroid/bluetooth/le/ScanResult;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
