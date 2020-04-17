.class public abstract Le/b/a/a/q/c;
.super Le/b/a/a/o/a;
.source "SourceFile"


# static fields
.field public static final F:[I


# instance fields
.field public final A:Le/b/a/a/p/b;

.field public B:[I

.field public C:I

.field public D:Le/b/a/a/n;

.field public E:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/p/a;->h:[I

    .line 2
    sput-object v0, Le/b/a/a/q/c;->F:[I

    return-void
.end method

.method public constructor <init>(Le/b/a/a/p/b;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Le/b/a/a/o/a;-><init>(I)V

    .line 2
    sget-object v0, Le/b/a/a/q/c;->F:[I

    iput-object v0, p0, Le/b/a/a/q/c;->B:[I

    .line 3
    sget-object v0, Le/b/a/a/s/d;->x:Le/b/a/a/p/g;

    iput-object v0, p0, Le/b/a/a/q/c;->D:Le/b/a/a/n;

    .line 4
    iput-object p1, p0, Le/b/a/a/q/c;->A:Le/b/a/a/p/b;

    .line 5
    sget-object p1, Le/b/a/a/f$a;->ESCAPE_NON_ASCII:Le/b/a/a/f$a;

    invoke-virtual {p1, p2}, Le/b/a/a/f$a;->enabledIn(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x7f

    .line 6
    iput p1, p0, Le/b/a/a/q/c;->C:I

    .line 7
    :cond_0
    sget-object p1, Le/b/a/a/f$a;->QUOTE_FIELD_NAMES:Le/b/a/a/f$a;

    invoke-virtual {p1, p2}, Le/b/a/a/f$a;->enabledIn(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Le/b/a/a/q/c;->E:Z

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    iget-object p1, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {p1}, Le/b/a/a/k;->e()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Can not %s, expecting field name (context: %s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Le/b/a/a/e;

    invoke-direct {v0, p1, p0}, Le/b/a/a/e;-><init>(Ljava/lang/String;Le/b/a/a/f;)V

    throw v0
.end method
