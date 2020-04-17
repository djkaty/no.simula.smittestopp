.class public abstract Ld/u/b;
.super Ld/u/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld/u/k;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld/u/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ld/u/k;-><init>(Ld/u/g;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ld/w/a/f/f;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/w/a/f/f;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final a([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld/u/k;->a()Ld/w/a/f/f;

    move-result-object v0

    .line 2
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {p0, v0, v3}, Ld/u/b;->a(Ld/w/a/f/f;Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Ld/w/a/f/f;->y:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Ld/u/k;->a(Ld/w/a/f/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Ld/u/k;->a(Ld/w/a/f/f;)V

    .line 6
    throw p1
.end method
