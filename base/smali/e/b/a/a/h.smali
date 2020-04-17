.class public Le/b/a/a/h;
.super Le/b/a/a/j;
.source "SourceFile"


# instance fields
.field public transient y:Le/b/a/a/i;

.field public z:Le/b/a/a/s/f;


# direct methods
.method public constructor <init>(Le/b/a/a/i;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/b/a/a/i;->b()Le/b/a/a/g;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2, v0}, Le/b/a/a/j;-><init>(Ljava/lang/String;Le/b/a/a/g;)V

    .line 3
    iput-object p1, p0, Le/b/a/a/h;->y:Le/b/a/a/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le/b/a/a/g;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/a/a/j;-><init>(Ljava/lang/String;Le/b/a/a/g;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Le/b/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
