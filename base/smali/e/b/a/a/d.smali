.class public Le/b/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/d$a;
    }
.end annotation


# static fields
.field public static final E:I

.field public static final F:I

.field public static final G:I

.field public static final H:Le/b/a/a/n;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Le/b/a/a/n;

.field public final transient x:Le/b/a/a/r/b;

.field public final transient y:Le/b/a/a/r/a;

.field public z:Le/b/a/a/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/b/a/a/d$a;->collectDefaults()I

    move-result v0

    sput v0, Le/b/a/a/d;->E:I

    .line 2
    invoke-static {}, Le/b/a/a/i$a;->collectDefaults()I

    move-result v0

    sput v0, Le/b/a/a/d;->F:I

    .line 3
    invoke-static {}, Le/b/a/a/f$a;->collectDefaults()I

    move-result v0

    sput v0, Le/b/a/a/d;->G:I

    .line 4
    sget-object v0, Le/b/a/a/s/d;->x:Le/b/a/a/p/g;

    sput-object v0, Le/b/a/a/d;->H:Le/b/a/a/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    const/4 v0, 0x1

    or-int/lit8 v1, v2, 0x1

    .line 3
    new-instance v2, Le/b/a/a/r/b;

    invoke-direct {v2, v1}, Le/b/a/a/r/b;-><init>(I)V

    .line 4
    iput-object v2, p0, Le/b/a/a/d;->x:Le/b/a/a/r/b;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v4, v1

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v4, v2

    or-int/lit8 v1, v4, 0x1

    .line 6
    new-instance v2, Le/b/a/a/r/a;

    const/16 v3, 0x40

    invoke-direct {v2, v3, v0, v1, v0}, Le/b/a/a/r/a;-><init>(IZIZ)V

    .line 7
    iput-object v2, p0, Le/b/a/a/d;->y:Le/b/a/a/r/a;

    .line 8
    sget v0, Le/b/a/a/d;->E:I

    iput v0, p0, Le/b/a/a/d;->A:I

    .line 9
    sget v0, Le/b/a/a/d;->F:I

    iput v0, p0, Le/b/a/a/d;->B:I

    .line 10
    sget v0, Le/b/a/a/d;->G:I

    iput v0, p0, Le/b/a/a/d;->C:I

    .line 11
    sget-object v0, Le/b/a/a/d;->H:Le/b/a/a/n;

    iput-object v0, p0, Le/b/a/a/d;->D:Le/b/a/a/n;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Le/b/a/a/d;->z:Le/b/a/a/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Le/b/a/a/i;
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le/b/a/a/d;->a(Ljava/lang/Object;Z)Le/b/a/a/p/b;

    move-result-object v0

    .line 2
    new-instance v1, Le/b/a/a/q/f;

    iget v2, p0, Le/b/a/a/d;->B:I

    iget-object v3, p0, Le/b/a/a/d;->x:Le/b/a/a/r/b;

    iget v4, p0, Le/b/a/a/d;->A:I

    invoke-virtual {v3, v4}, Le/b/a/a/r/b;->b(I)Le/b/a/a/r/b;

    move-result-object v3

    invoke-direct {v1, v0, v2, p1, v3}, Le/b/a/a/q/f;-><init>(Le/b/a/a/p/b;ILjava/io/Reader;Le/b/a/a/r/b;)V

    return-object v1
.end method

.method public a(Ljava/lang/Object;Z)Le/b/a/a/p/b;
    .locals 4

    .line 3
    new-instance v0, Le/b/a/a/p/b;

    .line 4
    sget-object v1, Le/b/a/a/d$a;->USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING:Le/b/a/a/d$a;

    iget v2, p0, Le/b/a/a/d;->A:I

    invoke-virtual {v1, v2}, Le/b/a/a/d$a;->enabledIn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Le/b/a/a/s/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/s/a;

    :goto_0
    if-nez v1, :cond_2

    .line 7
    new-instance v1, Le/b/a/a/s/a;

    invoke-direct {v1}, Le/b/a/a/s/a;-><init>()V

    .line 8
    sget-object v2, Le/b/a/a/s/b;->a:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v1, Le/b/a/a/s/a;

    invoke-direct {v1}, Le/b/a/a/s/a;-><init>()V

    .line 10
    :cond_2
    :goto_1
    invoke-direct {v0, v1, p1, p2}, Le/b/a/a/p/b;-><init>(Le/b/a/a/s/a;Ljava/lang/Object;Z)V

    return-object v0
.end method
