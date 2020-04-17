.class public Lj/a/a/a/a/a/d$a;
.super Lj/a/a/a/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/a/a/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final o:Lj/a/a/a/a/a/f;


# direct methods
.method public constructor <init>(ZZLjava/util/List;Lj/a/a/a/a/a/k;Landroid/app/PendingIntent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/h;",
            ">;",
            "Lj/a/a/a/a/a/k;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v5, Lj/a/a/a/a/a/f;

    invoke-direct {v5, p5, p4}, Lj/a/a/a/a/a/f;-><init>(Landroid/app/PendingIntent;Lj/a/a/a/a/a/k;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lj/a/a/a/a/a/a$a;-><init>(ZZLjava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;Landroid/os/Handler;)V

    .line 2
    iget-object p1, p0, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    check-cast p1, Lj/a/a/a/a/a/f;

    iput-object p1, p0, Lj/a/a/a/a/a/d$a;->o:Lj/a/a/a/a/a/f;

    return-void
.end method
