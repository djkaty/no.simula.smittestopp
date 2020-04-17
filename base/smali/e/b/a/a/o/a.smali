.class public abstract Le/b/a/a/o/a;
.super Le/b/a/a/f;
.source "SourceFile"


# instance fields
.field public x:I

.field public y:Z

.field public z:Le/b/a/a/q/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/f$a;->WRITE_NUMBERS_AS_STRINGS:Le/b/a/a/f$a;

    invoke-virtual {v0}, Le/b/a/a/f$a;->getMask()I

    sget-object v0, Le/b/a/a/f$a;->ESCAPE_NON_ASCII:Le/b/a/a/f$a;

    invoke-virtual {v0}, Le/b/a/a/f$a;->getMask()I

    sget-object v0, Le/b/a/a/f$a;->STRICT_DUPLICATE_DETECTION:Le/b/a/a/f$a;

    invoke-virtual {v0}, Le/b/a/a/f$a;->getMask()I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Le/b/a/a/f;-><init>()V

    .line 2
    iput p1, p0, Le/b/a/a/o/a;->x:I

    .line 3
    sget-object v0, Le/b/a/a/f$a;->STRICT_DUPLICATE_DETECTION:Le/b/a/a/f$a;

    invoke-virtual {v0, p1}, Le/b/a/a/f$a;->enabledIn(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Le/b/a/a/q/b;

    invoke-direct {v0, p0}, Le/b/a/a/q/b;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    new-instance v2, Le/b/a/a/q/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Le/b/a/a/q/e;-><init>(ILe/b/a/a/q/e;Le/b/a/a/q/b;)V

    .line 6
    iput-object v2, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    .line 7
    sget-object v0, Le/b/a/a/f$a;->WRITE_NUMBERS_AS_STRINGS:Le/b/a/a/f$a;

    invoke-virtual {v0, p1}, Le/b/a/a/f$a;->enabledIn(I)Z

    move-result p1

    iput-boolean p1, p0, Le/b/a/a/o/a;->y:Z

    return-void
.end method


# virtual methods
.method public final a(Le/b/a/a/f$a;)Z
    .locals 1

    .line 1
    iget v0, p0, Le/b/a/a/o/a;->x:I

    invoke-virtual {p1}, Le/b/a/a/f$a;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public close()V
    .locals 0

    return-void
.end method
