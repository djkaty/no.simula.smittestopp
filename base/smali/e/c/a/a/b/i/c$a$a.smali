.class public Le/c/a/a/b/i/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/b/i/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Le/c/a/a/b/i/k/a;

.field public b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/c/a/a/b/i/c$a;
    .locals 4

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/c$a$a;->a:Le/c/a/a/b/i/k/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/c/a/a/b/i/k/a;

    invoke-direct {v0}, Le/c/a/a/b/i/k/a;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/i/c$a$a;->a:Le/c/a/a/b/i/k/a;

    .line 3
    :cond_0
    iget-object v0, p0, Le/c/a/a/b/i/c$a$a;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Le/c/a/a/b/i/c$a$a;->b:Landroid/os/Looper;

    .line 5
    :cond_1
    new-instance v0, Le/c/a/a/b/i/c$a;

    iget-object v1, p0, Le/c/a/a/b/i/c$a$a;->a:Le/c/a/a/b/i/k/a;

    const/4 v2, 0x0

    iget-object v3, p0, Le/c/a/a/b/i/c$a$a;->b:Landroid/os/Looper;

    invoke-direct {v0, v1, v2, v3}, Le/c/a/a/b/i/c$a;-><init>(Le/c/a/a/b/i/k/a;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-object v0
.end method
