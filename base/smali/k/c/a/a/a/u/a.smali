.class public Lk/c/a/a/a/u/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public x:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lk/c/a/a/a/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lk/c/a/a/a/u/a;->x:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lk/c/a/a/a/n;

    invoke-direct {v0}, Lk/c/a/a/a/n;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lk/c/a/a/a/u/a;->a()V

    .line 4
    iget-object v0, p0, Lk/c/a/a/a/u/a;->x:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lk/c/a/a/a/m;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/c/a/a/a/u/a;->a()V

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/u/a;->x:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lk/c/a/a/a/u/a;->x:Ljava/util/Hashtable;

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/u/a;->x:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method
