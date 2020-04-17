.class public Lj/a/a/a/a/a/b$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/a/a/a/a/b$b$a;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Landroid/bluetooth/le/ScanResult;

.field public final synthetic y:I

.field public final synthetic z:Lj/a/a/a/a/a/b$b$a;


# direct methods
.method public constructor <init>(Lj/a/a/a/a/a/b$b$a;Landroid/bluetooth/le/ScanResult;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/a/a/a/a/b$b$a$a;->z:Lj/a/a/a/a/a/b$b$a;

    iput-object p2, p0, Lj/a/a/a/a/a/b$b$a$a;->x:Landroid/bluetooth/le/ScanResult;

    iput p3, p0, Lj/a/a/a/a/a/b$b$a$a;->y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lj/a/a/a/a/a/a;->a()Lj/a/a/a/a/a/a;

    move-result-object v0

    check-cast v0, Lj/a/a/a/a/a/b;

    .line 2
    iget-object v1, p0, Lj/a/a/a/a/a/b$b$a$a;->x:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0, v1}, Lj/a/a/a/a/a/b;->a(Landroid/bluetooth/le/ScanResult;)Lj/a/a/a/a/a/j;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lj/a/a/a/a/a/b$b$a$a;->z:Lj/a/a/a/a/a/b$b$a;

    iget-object v1, v1, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget v2, p0, Lj/a/a/a/a/a/b$b$a$a;->y:I

    invoke-virtual {v1, v2, v0}, Lj/a/a/a/a/a/a$a;->a(ILj/a/a/a/a/a/j;)V

    return-void
.end method
