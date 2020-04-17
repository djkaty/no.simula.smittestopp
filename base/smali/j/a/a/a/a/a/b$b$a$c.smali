.class public Lj/a/a/a/a/a/b$b$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/a/a/a/a/b$b$a;->onScanFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:I

.field public final synthetic y:Lj/a/a/a/a/a/b$b$a;


# direct methods
.method public constructor <init>(Lj/a/a/a/a/a/b$b$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/a/a/a/a/b$b$a$c;->y:Lj/a/a/a/a/a/b$b$a;

    iput p2, p0, Lj/a/a/a/a/a/b$b$a$c;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lj/a/a/a/a/a/b$b$a$c;->y:Lj/a/a/a/a/a/b$b$a;

    iget-object v0, v0, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget-object v0, v0, Lj/a/a/a/a/a/a$a;->g:Lj/a/a/a/a/a/k;

    .line 2
    iget-boolean v1, v0, Lj/a/a/a/a/a/k;->G:Z

    if-eqz v1, :cond_0

    .line 3
    iget v1, v0, Lj/a/a/a/a/a/k;->A:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lj/a/a/a/a/a/k;->G:Z

    .line 5
    invoke-static {}, Lj/a/a/a/a/a/a;->a()Lj/a/a/a/a/a/a;

    move-result-object v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lj/a/a/a/a/a/b$b$a$c;->y:Lj/a/a/a/a/a/b$b$a;

    iget-object v1, v1, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget-object v1, v1, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    invoke-virtual {v0, v1}, Lj/a/a/a/a/a/a;->b(Lj/a/a/a/a/a/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :try_start_1
    iget-object v1, p0, Lj/a/a/a/a/a/b$b$a$c;->y:Lj/a/a/a/a/a/b$b$a;

    iget-object v1, v1, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget-object v1, v1, Lj/a/a/a/a/a/a$a;->f:Ljava/util/List;

    iget-object v2, p0, Lj/a/a/a/a/a/b$b$a$c;->y:Lj/a/a/a/a/a/b$b$a;

    iget-object v2, v2, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget-object v2, v2, Lj/a/a/a/a/a/a$a;->g:Lj/a/a/a/a/a/k;

    iget-object v3, p0, Lj/a/a/a/a/a/b$b$a$c;->y:Lj/a/a/a/a/a/b$b$a;

    iget-object v3, v3, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget-object v3, v3, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    iget-object v4, p0, Lj/a/a/a/a/a/b$b$a$c;->y:Lj/a/a/a/a/a/b$b$a;

    iget-object v4, v4, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget-object v4, v4, Lj/a/a/a/a/a/a$a;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lj/a/a/a/a/a/a;->a(Ljava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lj/a/a/a/a/a/b$b$a$c;->y:Lj/a/a/a/a/a/b$b$a;

    iget-object v0, v0, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget v1, p0, Lj/a/a/a/a/a/b$b$a$c;->x:I

    .line 9
    iget-object v0, v0, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    invoke-virtual {v0, v1}, Lj/a/a/a/a/a/g;->a(I)V

    return-void
.end method
