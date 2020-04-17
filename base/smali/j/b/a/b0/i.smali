.class public final Lj/b/a/b0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lj/b/a/b0/g;

.field public b:Z

.field public c:Z

.field public d:Lj/b/a/b0/i$a;

.field public e:Landroid/app/Application;

.field public f:Lj/b/a/b0/h;

.field public final g:Lj/a/a/a/a/a/a;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lj/b/a/b0/h;Lj/a/a/a/a/a/a;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/b/a/b0/i;->e:Landroid/app/Application;

    iput-object p2, p0, Lj/b/a/b0/i;->f:Lj/b/a/b0/h;

    iput-object p3, p0, Lj/b/a/b0/i;->g:Lj/a/a/a/a/a/a;

    .line 2
    new-instance p1, Lj/b/a/b0/i$a;

    invoke-direct {p1, p0}, Lj/b/a/b0/i$a;-><init>(Lj/b/a/b0/i;)V

    iput-object p1, p0, Lj/b/a/b0/i;->d:Lj/b/a/b0/i$a;

    return-void

    :cond_0
    const-string p1, "bluetoothLeScanner"

    .line 3
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "scanListener"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "application"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    const-string v3, "startScanning"

    invoke-virtual {v2, v3, v1}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lj/b/a/b0/i;->a:Lj/b/a/b0/g;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lj/b/a/b0/g;

    iget-object v2, p0, Lj/b/a/b0/i;->e:Landroid/app/Application;

    iget-object v3, p0, Lj/b/a/b0/i;->f:Lj/b/a/b0/h;

    iget-object v4, p0, Lj/b/a/b0/i;->g:Lj/a/a/a/a/a/a;

    invoke-direct {v1, v2, v3, v4}, Lj/b/a/b0/g;-><init>(Landroid/app/Application;Lj/b/a/b0/h;Lj/a/a/a/a/a/a;)V

    iput-object v1, p0, Lj/b/a/b0/i;->a:Lj/b/a/b0/g;

    .line 4
    :cond_0
    iget-object v1, p0, Lj/b/a/b0/i;->a:Lj/b/a/b0/g;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Lj/b/a/b0/g;->a(Z)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    const-string v2, "stopScanning"

    invoke-virtual {v1, v2, v0}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lj/b/a/b0/i;->a:Lj/b/a/b0/g;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, v0, Lj/b/a/b0/g;->f:Lj/a/a/a/a/a/a;

    iget-object v2, v0, Lj/b/a/b0/g;->e:Lj/b/a/b0/j;

    invoke-virtual {v1, v2}, Lj/a/a/a/a/a/a;->a(Lj/a/a/a/a/a/g;)V

    .line 4
    iget-object v1, v0, Lj/b/a/b0/g;->f:Lj/a/a/a/a/a/a;

    iget-object v0, v0, Lj/b/a/b0/g;->e:Lj/b/a/b0/j;

    invoke-virtual {v1, v0}, Lj/a/a/a/a/a/a;->b(Lj/a/a/a/a/a/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v1, v0}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lj/b/a/b0/i;->a:Lj/b/a/b0/g;

    return-void
.end method
