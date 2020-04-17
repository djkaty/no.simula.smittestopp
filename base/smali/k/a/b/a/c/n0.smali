.class public Lk/a/b/a/c/n0;
.super Lk/a/b/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/n0$c;,
        Lk/a/b/a/c/n0$b;,
        Lk/a/b/a/c/n0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lk/a/b/a/c/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/c/r$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lk/a/b/a/c/n0$d;

.field public final b:Lk/a/b/a/c/n0$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk/a/b/a/c/n0$a;

    invoke-direct {v0}, Lk/a/b/a/c/n0$a;-><init>()V

    sput-object v0, Lk/a/b/a/c/n0;->c:Lk/a/b/a/c/r$b;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/c/c;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/n0$b;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/n0$b;-><init>(Lk/a/b/a/c/n0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/n0;->a:Lk/a/b/a/c/n0$d;

    .line 3
    new-instance v0, Lk/a/b/a/c/n0$c;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/n0$c;-><init>(Lk/a/b/a/c/n0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/n0;->b:Lk/a/b/a/c/n0$d;

    .line 4
    const-class v0, Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lk/a/b/a/c/x;->c:Ljava/util/Map;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2, p0}, Lk/a/b/a/c/r;->a(Lk/a/b/a/c/i0;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v0, :cond_3

    move v2, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xff80

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    const v4, 0xf800

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    const v4, 0xd800

    and-int v5, v3, v4

    if-ne v5, v4, :cond_1

    const v4, 0xdc00

    if-ge v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/j0;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lk/a/b/a/c/n0;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lk/a/b/a/c/n0;->b:Lk/a/b/a/c/n0$d;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk/a/b/a/c/n0;->a:Lk/a/b/a/c/n0$d;

    .line 4
    :goto_0
    invoke-interface {v1, p1, v0}, Lk/a/b/a/c/n0$d;->a(Ljava/lang/String;I)V

    return-object v1
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 2

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lk/a/b/a/c/n0;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lk/a/b/a/c/n0;->b:Lk/a/b/a/c/n0$d;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk/a/b/a/c/n0;->a:Lk/a/b/a/c/n0$d;

    .line 8
    :goto_0
    invoke-interface {v1, p1, v0}, Lk/a/b/a/c/n0$d;->a(Ljava/lang/String;I)V

    return-object v1
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/n0;->a:Lk/a/b/a/c/n0$d;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk/a/b/a/c/n0$d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk/a/b/a/c/n0$d;

    .line 1
    iget-object v1, p0, Lk/a/b/a/c/n0;->b:Lk/a/b/a/c/n0$d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/n0;->a:Lk/a/b/a/c/n0$d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
