.class public final Le/c/a/a/e/a$a;
.super Le/c/a/a/d/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/c/a/a/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/g/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/c/a/a/g/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/g/b<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/a/a/d/c/e;-><init>()V

    iput-object p1, p0, Le/c/a/a/e/a$a;->a:Le/c/a/a/g/b;

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/d/c/b;)V
    .locals 2

    .line 1
    iget-object p1, p1, Le/c/a/a/d/c/b;->x:Lcom/google/android/gms/common/api/Status;

    .line 2
    iget-object v0, p0, Le/c/a/a/e/a$a;->a:Le/c/a/a/g/b;

    .line 3
    iget v1, p1, Lcom/google/android/gms/common/api/Status;->y:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object p1, v0, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/c/a/a/g/h;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v1, Le/c/a/a/b/i/b;

    invoke-direct {v1, p1}, Le/c/a/a/b/i/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 6
    iget-object p1, v0, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {p1, v1}, Le/c/a/a/g/h;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
