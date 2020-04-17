.class public final Le/c/a/a/b/j/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/b/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:Ld/f/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/f/c<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Le/c/a/a/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/c/a/a/b/j/d$a;->c:I

    .line 3
    sget-object v0, Le/c/a/a/f/a;->i:Le/c/a/a/f/a;

    iput-object v0, p0, Le/c/a/a/b/j/d$a;->f:Le/c/a/a/f/a;

    return-void
.end method


# virtual methods
.method public final a()Le/c/a/a/b/j/d;
    .locals 11

    .line 1
    new-instance v10, Le/c/a/a/b/j/d;

    iget-object v1, p0, Le/c/a/a/b/j/d$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, Le/c/a/a/b/j/d$a;->b:Ld/f/c;

    iget v4, p0, Le/c/a/a/b/j/d$a;->c:I

    iget-object v6, p0, Le/c/a/a/b/j/d$a;->d:Ljava/lang/String;

    iget-object v7, p0, Le/c/a/a/b/j/d$a;->e:Ljava/lang/String;

    iget-object v8, p0, Le/c/a/a/b/j/d$a;->f:Le/c/a/a/f/a;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Le/c/a/a/b/j/d;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Le/c/a/a/f/a;Z)V

    return-object v10
.end method
