.class public Ld/w/a/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/w/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/w/a/f/c$a;
    }
.end annotation


# instance fields
.field public final a:Ld/w/a/f/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ld/w/a/c$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ld/w/a/f/a;

    .line 2
    new-instance v1, Ld/w/a/f/c$a;

    invoke-direct {v1, p1, p2, v0, p3}, Ld/w/a/f/c$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Ld/w/a/f/a;Ld/w/a/c$a;)V

    .line 3
    iput-object v1, p0, Ld/w/a/f/c;->a:Ld/w/a/f/c$a;

    return-void
.end method


# virtual methods
.method public a()Ld/w/a/b;
    .locals 1

    .line 2
    iget-object v0, p0, Ld/w/a/f/c;->a:Ld/w/a/f/c$a;

    invoke-virtual {v0}, Ld/w/a/f/c$a;->a()Ld/w/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/w/a/f/c;->a:Ld/w/a/f/c$a;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/w/a/f/c;->a:Ld/w/a/f/c$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
