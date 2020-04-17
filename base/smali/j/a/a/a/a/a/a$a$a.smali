.class public Lj/a/a/a/a/a/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/a/a/a/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Lj/a/a/a/a/a/a$a;


# direct methods
.method public constructor <init>(Lj/a/a/a/a/a/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/a/a/a/a/a$a$a;->x:Lj/a/a/a/a/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lj/a/a/a/a/a/a$a$a;->x:Lj/a/a/a/a/a/a$a;

    .line 2
    iget-boolean v1, v0, Lj/a/a/a/a/a/a$a;->e:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lj/a/a/a/a/a/a$a;->b()V

    .line 4
    iget-object v0, p0, Lj/a/a/a/a/a/a$a$a;->x:Lj/a/a/a/a/a/a$a;

    iget-object v1, v0, Lj/a/a/a/a/a/a$a;->i:Landroid/os/Handler;

    iget-object v0, v0, Lj/a/a/a/a/a/a$a;->g:Lj/a/a/a/a/a/k;

    .line 5
    iget-wide v2, v0, Lj/a/a/a/a/a/k;->B:J

    .line 6
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
