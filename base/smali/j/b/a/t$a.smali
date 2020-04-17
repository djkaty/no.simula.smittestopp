.class public Lj/b/a/t$a;
.super Ld/u/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b/a/t;-><init>(Ld/u/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/u/b<",
        "Lj/b/a/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lj/b/a/t;Ld/u/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ld/u/b;-><init>(Ld/u/g;)V

    return-void
.end method


# virtual methods
.method public a(Ld/w/a/f/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lj/b/a/r;

    .line 2
    iget-object v0, p2, Lj/b/a/r;->a:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .line 5
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :goto_0
    const/4 v0, 0x2

    .line 6
    iget-wide v1, p2, Lj/b/a/r;->d:J

    .line 7
    iget-object v3, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 8
    iget-object v0, p2, Lj/b/a/r;->e:Ljava/lang/Double;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 11
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 12
    :goto_1
    iget-object v0, p2, Lj/b/a/r;->f:Ljava/lang/Double;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 15
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 16
    :goto_2
    iget-object v0, p2, Lj/b/a/r;->g:Ljava/lang/Double;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 19
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 20
    :goto_3
    iget-object v0, p2, Lj/b/a/r;->h:Ljava/lang/Double;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 21
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 22
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 23
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 24
    :goto_4
    iget-object v0, p2, Lj/b/a/r;->i:Ljava/lang/Double;

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 25
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 26
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 27
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 28
    :goto_5
    iget-object v0, p2, Lj/b/a/r;->j:Ljava/lang/Double;

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 29
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 30
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 31
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 32
    :goto_6
    iget-object v0, p2, Lj/b/a/r;->k:Ljava/lang/Double;

    const/16 v1, 0x9

    if-nez v0, :cond_7

    .line 33
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_7

    .line 34
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 35
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 36
    :goto_7
    iget-boolean p2, p2, Lj/b/a/r;->l:Z

    const/16 v0, 0xa

    int-to-long v1, p2

    .line 37
    iget-object p1, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `Measurement` (`id`,`timestamp`,`latitude`,`longitude`,`latLongAccuracy`,`altitude`,`altitudeAccuracy`,`speed`,`speedAccuracy`,`isUploaded`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
