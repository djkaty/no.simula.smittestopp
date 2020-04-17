.class public final Ll/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/a/a$b;
    }
.end annotation


# static fields
.field public static final a:[Ll/a/a$b;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile c:[Ll/a/a$b;

.field public static final d:Ll/a/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ll/a/a$b;

    .line 1
    sput-object v0, Ll/a/a;->a:[Ll/a/a$b;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ll/a/a;->b:Ljava/util/List;

    .line 3
    sget-object v0, Ll/a/a;->a:[Ll/a/a$b;

    sput-object v0, Ll/a/a;->c:[Ll/a/a$b;

    .line 4
    new-instance v0, Ll/a/a$a;

    invoke-direct {v0}, Ll/a/a$a;-><init>()V

    sput-object v0, Ll/a/a;->d:Ll/a/a$b;

    return-void
.end method

.method public static a(Ll/a/a$b;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Ll/a/a;->d:Ll/a/a$b;

    if-eq p0, v0, :cond_0

    .line 2
    sget-object v0, Ll/a/a;->b:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ll/a/a;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p0, Ll/a/a;->b:Ljava/util/List;

    sget-object v1, Ll/a/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ll/a/a$b;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ll/a/a$b;

    sput-object p0, Ll/a/a;->c:[Ll/a/a$b;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot plant Timber into itself."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "tree == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
