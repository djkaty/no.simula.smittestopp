.class public abstract Le/b/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/i$a;
    }
.end annotation


# instance fields
.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/b/a/a/i;->x:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/b/a/a/h;
    .locals 1

    .line 4
    new-instance v0, Le/b/a/a/h;

    invoke-direct {v0, p0, p1}, Le/b/a/a/h;-><init>(Le/b/a/a/i;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, v0, Le/b/a/a/h;->z:Le/b/a/a/s/f;

    return-object v0
.end method

.method public a(Le/b/a/a/i$a;)Z
    .locals 1

    .line 3
    iget v0, p0, Le/b/a/a/i;->x:I

    invoke-virtual {p1, v0}, Le/b/a/a/i$a;->enabledIn(I)Z

    move-result p1

    return p1
.end method

.method public a()[B
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/b;->b:Le/b/a/a/a;

    .line 2
    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/a;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Le/b/a/a/a;)[B
.end method

.method public abstract b()Le/b/a/a/g;
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract close()V
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/b/a/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Z
.end method

.method public abstract f()Le/b/a/a/l;
.end method

.method public abstract g()Le/b/a/a/l;
.end method
