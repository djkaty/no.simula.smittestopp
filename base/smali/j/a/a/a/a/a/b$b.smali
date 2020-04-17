.class public Lj/a/a/a/a/a/b$b;
.super Lj/a/a/a/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/a/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final o:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method public synthetic constructor <init>(ZZLjava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;Landroid/os/Handler;Lj/a/a/a/a/a/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lj/a/a/a/a/a/a$a;-><init>(ZZLjava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;Landroid/os/Handler;)V

    .line 2
    new-instance p1, Lj/a/a/a/a/a/b$b$a;

    invoke-direct {p1, p0}, Lj/a/a/a/a/a/b$b$a;-><init>(Lj/a/a/a/a/a/b$b;)V

    iput-object p1, p0, Lj/a/a/a/a/a/b$b;->o:Landroid/bluetooth/le/ScanCallback;

    return-void
.end method
