.class public Li/a/b/m/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/b/m/l$i;
    }
.end annotation


# static fields
.field public static final c:Li/a/b/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/m/n<",
            "Li/a/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Li/a/b/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/m/n<",
            "Li/a/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Li/a/b/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/m/n<",
            "Li/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Li/a/b/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/m/n<",
            "Li/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Li/a/b/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/m/n<",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final h:Li/a/b/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/m/n<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final i:Li/a/b/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/m/n<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final j:Li/a/b/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/m/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Li/a/b/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/m/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Li/a/b/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/m/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Li/a/b/m/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Li/a/b/m/l$i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/b/m/l$a;

    invoke-direct {v0}, Li/a/b/m/l$a;-><init>()V

    sput-object v0, Li/a/b/m/l;->c:Li/a/b/m/n;

    .line 2
    new-instance v0, Li/a/b/m/l$b;

    invoke-direct {v0}, Li/a/b/m/l$b;-><init>()V

    sput-object v0, Li/a/b/m/l;->d:Li/a/b/m/n;

    .line 3
    new-instance v0, Li/a/b/m/l$c;

    invoke-direct {v0}, Li/a/b/m/l$c;-><init>()V

    sput-object v0, Li/a/b/m/l;->e:Li/a/b/m/n;

    .line 4
    new-instance v0, Li/a/b/m/l$d;

    invoke-direct {v0}, Li/a/b/m/l$d;-><init>()V

    sput-object v0, Li/a/b/m/l;->f:Li/a/b/m/n;

    .line 5
    new-instance v0, Li/a/b/m/l$e;

    invoke-direct {v0}, Li/a/b/m/l$e;-><init>()V

    sput-object v0, Li/a/b/m/l;->g:Li/a/b/m/n;

    .line 6
    new-instance v0, Li/a/b/m/l$f;

    invoke-direct {v0}, Li/a/b/m/l$f;-><init>()V

    sput-object v0, Li/a/b/m/l;->h:Li/a/b/m/n;

    .line 7
    new-instance v0, Li/a/b/m/l$g;

    invoke-direct {v0}, Li/a/b/m/l$g;-><init>()V

    sput-object v0, Li/a/b/m/l;->i:Li/a/b/m/n;

    .line 8
    new-instance v0, Li/a/b/m/b;

    invoke-direct {v0}, Li/a/b/m/b;-><init>()V

    sput-object v0, Li/a/b/m/l;->j:Li/a/b/m/n;

    .line 9
    new-instance v0, Li/a/b/m/a;

    invoke-direct {v0}, Li/a/b/m/a;-><init>()V

    sput-object v0, Li/a/b/m/l;->k:Li/a/b/m/n;

    .line 10
    new-instance v0, Li/a/b/m/l$h;

    invoke-direct {v0}, Li/a/b/m/l$h;-><init>()V

    sput-object v0, Li/a/b/m/l;->l:Li/a/b/m/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Li/a/b/m/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Li/a/b/m/l;->b:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Li/a/b/m/m;

    invoke-direct {v0, p0}, Li/a/b/m/m;-><init>(Li/a/b/m/l;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6
    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 7
    new-instance v0, Li/a/b/m/c;

    invoke-direct {v0, p0}, Li/a/b/m/c;-><init>(Li/a/b/m/l;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 8
    const-class v3, Ljava/lang/Double;

    aput-object v3, v2, v4

    .line 9
    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 10
    new-instance v0, Li/a/b/m/d;

    invoke-direct {v0, p0}, Li/a/b/m/d;-><init>(Li/a/b/m/l;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 11
    const-class v3, Ljava/util/Date;

    aput-object v3, v2, v4

    .line 12
    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 13
    new-instance v0, Li/a/b/m/e;

    invoke-direct {v0, p0}, Li/a/b/m/e;-><init>(Li/a/b/m/l;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 14
    const-class v3, Ljava/lang/Float;

    aput-object v3, v2, v4

    .line 15
    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 16
    sget-object v0, Li/a/b/m/l;->l:Li/a/b/m/n;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-class v5, Ljava/lang/Byte;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-class v5, Ljava/lang/Short;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-class v5, Ljava/math/BigInteger;

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-class v5, Ljava/math/BigDecimal;

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 17
    sget-object v0, Li/a/b/m/l;->l:Li/a/b/m/n;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 18
    new-instance v0, Li/a/b/m/f;

    invoke-direct {v0, p0}, Li/a/b/m/f;-><init>(Li/a/b/m/l;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 19
    const-class v3, [I

    aput-object v3, v2, v4

    .line 20
    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 21
    new-instance v0, Li/a/b/m/g;

    invoke-direct {v0, p0}, Li/a/b/m/g;-><init>(Li/a/b/m/l;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 22
    const-class v3, [S

    aput-object v3, v2, v4

    .line 23
    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 24
    new-instance v0, Li/a/b/m/h;

    invoke-direct {v0, p0}, Li/a/b/m/h;-><init>(Li/a/b/m/l;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 25
    const-class v3, [J

    aput-object v3, v2, v4

    .line 26
    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 27
    new-instance v0, Li/a/b/m/i;

    invoke-direct {v0, p0}, Li/a/b/m/i;-><init>(Li/a/b/m/l;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 28
    const-class v3, [F

    aput-object v3, v2, v4

    .line 29
    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 30
    new-instance v0, Li/a/b/m/j;

    invoke-direct {v0, p0}, Li/a/b/m/j;-><init>(Li/a/b/m/l;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 31
    const-class v3, [D

    aput-object v3, v2, v4

    .line 32
    invoke-virtual {p0, v0, v2}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 33
    new-instance v0, Li/a/b/m/k;

    invoke-direct {v0, p0}, Li/a/b/m/k;-><init>(Li/a/b/m/l;)V

    new-array v1, v1, [Ljava/lang/Class;

    .line 34
    const-class v2, [Z

    aput-object v2, v1, v4

    .line 35
    invoke-virtual {p0, v0, v1}, Li/a/b/m/l;->a(Li/a/b/m/n;[Ljava/lang/Class;)V

    .line 36
    const-class v0, Li/a/b/f;

    sget-object v1, Li/a/b/m/l;->d:Li/a/b/m/n;

    .line 37
    iget-object v2, p0, Li/a/b/m/l;->b:Ljava/util/LinkedList;

    new-instance v3, Li/a/b/m/l$i;

    invoke-direct {v3, v0, v1}, Li/a/b/m/l$i;-><init>(Ljava/lang/Class;Li/a/b/m/n;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 38
    const-class v0, Li/a/b/e;

    sget-object v1, Li/a/b/m/l;->c:Li/a/b/m/n;

    .line 39
    iget-object v2, p0, Li/a/b/m/l;->b:Ljava/util/LinkedList;

    new-instance v3, Li/a/b/m/l$i;

    invoke-direct {v3, v0, v1}, Li/a/b/m/l$i;-><init>(Ljava/lang/Class;Li/a/b/m/n;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 40
    const-class v0, Li/a/b/c;

    sget-object v1, Li/a/b/m/l;->e:Li/a/b/m/n;

    .line 41
    iget-object v2, p0, Li/a/b/m/l;->b:Ljava/util/LinkedList;

    new-instance v3, Li/a/b/m/l$i;

    invoke-direct {v3, v0, v1}, Li/a/b/m/l$i;-><init>(Ljava/lang/Class;Li/a/b/m/n;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 42
    const-class v0, Li/a/b/b;

    sget-object v1, Li/a/b/m/l;->f:Li/a/b/m/n;

    .line 43
    iget-object v2, p0, Li/a/b/m/l;->b:Ljava/util/LinkedList;

    new-instance v3, Li/a/b/m/l$i;

    invoke-direct {v3, v0, v1}, Li/a/b/m/l$i;-><init>(Ljava/lang/Class;Li/a/b/m/n;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 44
    const-class v0, Ljava/util/Map;

    sget-object v1, Li/a/b/m/l;->i:Li/a/b/m/n;

    .line 45
    iget-object v2, p0, Li/a/b/m/l;->b:Ljava/util/LinkedList;

    new-instance v3, Li/a/b/m/l$i;

    invoke-direct {v3, v0, v1}, Li/a/b/m/l$i;-><init>(Ljava/lang/Class;Li/a/b/m/n;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 46
    const-class v0, Ljava/lang/Iterable;

    sget-object v1, Li/a/b/m/l;->g:Li/a/b/m/n;

    .line 47
    iget-object v2, p0, Li/a/b/m/l;->b:Ljava/util/LinkedList;

    new-instance v3, Li/a/b/m/l$i;

    invoke-direct {v3, v0, v1}, Li/a/b/m/l$i;-><init>(Ljava/lang/Class;Li/a/b/m/n;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 48
    const-class v0, Ljava/lang/Enum;

    sget-object v1, Li/a/b/m/l;->h:Li/a/b/m/n;

    .line 49
    iget-object v2, p0, Li/a/b/m/l;->b:Ljava/util/LinkedList;

    new-instance v3, Li/a/b/m/l$i;

    invoke-direct {v3, v0, v1}, Li/a/b/m/l$i;-><init>(Ljava/lang/Class;Li/a/b/m/n;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 50
    const-class v0, Ljava/lang/Number;

    sget-object v1, Li/a/b/m/l;->l:Li/a/b/m/n;

    .line 51
    iget-object v2, p0, Li/a/b/m/l;->b:Ljava/util/LinkedList;

    new-instance v3, Li/a/b/m/l$i;

    invoke-direct {v3, v0, v1}, Li/a/b/m/l$i;-><init>(Ljava/lang/Class;Li/a/b/m/n;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Appendable;Li/a/b/g;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 3
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p3, Li/a/b/g;->e:Li/a/b/j$f;

    invoke-interface {v0, p0}, Li/a/b/j$f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    .line 6
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 7
    invoke-static {p0, p2, p3}, Li/a/b/i;->a(Ljava/lang/String;Ljava/lang/Appendable;Li/a/b/g;)V

    .line 8
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    if-eqz p3, :cond_3

    const/16 p0, 0x3a

    .line 9
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 10
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Li/a/b/g;->a(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p1, p2, p3}, Li/a/b/i;->a(Ljava/lang/Object;Ljava/lang/Appendable;Li/a/b/g;)V

    :goto_1
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 13
    throw p0
.end method


# virtual methods
.method public varargs a(Li/a/b/m/n;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/b/m/n<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p2, v1

    .line 2
    iget-object v3, p0, Li/a/b/m/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
