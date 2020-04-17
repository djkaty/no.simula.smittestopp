.class public final Lno/simula/corona/MeasurementDatabase$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/simula/corona/MeasurementDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public synthetic constructor <init>(Lh/k/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lno/simula/corona/MeasurementDatabase;
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    sget-object v0, Lno/simula/corona/MeasurementDatabase;->j:Lno/simula/corona/MeasurementDatabase;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    const-class v0, Lno/simula/corona/MeasurementDatabase;

    const-string v1, "measurement_database"

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Ld/u/g$a;

    invoke-direct {v2, p1, v0, v1}, Ld/u/g$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v2, Ld/u/g$a;->g:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, v2, Ld/u/g$a;->i:Z

    .line 9
    iput-boolean p1, v2, Ld/u/g$a;->j:Z

    .line 10
    invoke-virtual {v2}, Ld/u/g$a;->a()Ld/u/g;

    move-result-object p1

    const-string v0, "Room.databaseBuilder(\n  \u2026                 .build()"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast p1, Lno/simula/corona/MeasurementDatabase;

    .line 12
    sput-object p1, Lno/simula/corona/MeasurementDatabase;->j:Lno/simula/corona/MeasurementDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-object p1

    .line 14
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    throw p1

    :cond_2
    const-string p1, "context"

    .line 16
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
