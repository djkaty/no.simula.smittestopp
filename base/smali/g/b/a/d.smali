.class public final Lg/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/b/a/c;

.field public static final b:Lg/c/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lg/b/a/c;

    .line 2
    sget-object v1, Lg/c/m/a$a;->a:Lg/c/m/a;

    .line 3
    check-cast v1, Lg/c/m/c;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Lg/c/m/b;

    invoke-direct {v2, v1, v0}, Lg/c/m/b;-><init>(Lg/c/m/c;Ljava/lang/Class;)V

    .line 5
    invoke-static {}, Lg/c/d;->d()Lg/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/c/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, v2, Lg/c/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v2}, Lg/c/a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lg/b/a/c;

    sput-object v0, Lg/b/a/d;->a:Lg/b/a/c;

    .line 9
    check-cast v0, Lg/c/m/e;

    invoke-interface {v0}, Lg/c/m/e;->a()Lg/c/f;

    move-result-object v0

    .line 10
    sput-object v0, Lg/b/a/d;->b:Lg/c/f;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    throw v0
.end method
