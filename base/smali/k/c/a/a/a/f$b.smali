.class public Lk/c/a/a/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/c/a/a/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final synthetic b:Lk/c/a/a/a/f;


# direct methods
.method public constructor <init>(Lk/c/a/a/a/f;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/c/a/a/a/f$b;->b:Lk/c/a/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lk/c/a/a/a/f$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lk/c/a/a/a/f$b;->a:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lk/c/a/a/a/f$b;->b:Lk/c/a/a/a/f;

    iget-object v0, p1, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lk/c/a/a/a/f;->G:Z

    .line 4
    invoke-static {p1}, Lk/c/a/a/a/f;->a(Lk/c/a/a/a/f;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public deliveryComplete(Lk/c/a/a/a/c;)V
    .locals 0

    return-void
.end method

.method public messageArrived(Ljava/lang/String;Lk/c/a/a/a/l;)V
    .locals 0

    return-void
.end method
