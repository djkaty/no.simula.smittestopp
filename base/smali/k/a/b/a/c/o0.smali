.class public Lk/a/b/a/c/o0;
.super Lk/a/b/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/o0$c;,
        Lk/a/b/a/c/o0$b;,
        Lk/a/b/a/c/o0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/c<",
        "Lk/a/b/a/b/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Lk/a/b/a/c/o0$d;

.field public final b:Lk/a/b/a/c/o0$d;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/c/k0;",
            "Lk/a/b/a/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lk/a/b/a/c/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/c/r$b<",
            "Lk/a/b/a/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/o0;->e:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/c/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/a/b/a/c/o0;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Lk/a/b/a/c/o0$a;

    invoke-direct {v0, p0}, Lk/a/b/a/c/o0$a;-><init>(Lk/a/b/a/c/o0;)V

    iput-object v0, p0, Lk/a/b/a/c/o0;->d:Lk/a/b/a/c/r$b;

    .line 4
    new-instance v0, Lk/a/b/a/c/o0$b;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/o0$b;-><init>(Lk/a/b/a/c/o0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/o0;->a:Lk/a/b/a/c/o0$d;

    .line 5
    new-instance v0, Lk/a/b/a/c/o0$c;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/o0$c;-><init>(Lk/a/b/a/c/o0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/o0;->b:Lk/a/b/a/c/o0$d;

    .line 6
    const-class v0, Lk/a/b/a/b/f;

    .line 7
    iget-object p1, p1, Lk/a/b/a/c/x;->c:Ljava/util/Map;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, p0}, Lk/a/b/a/c/r;->a(Lk/a/b/a/c/i0;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/f;",
            ">;"
        }
    .end annotation

    .line 5
    const-class v0, Lk/a/b/a/b/f;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/j0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/f;

    .line 2
    invoke-virtual {p1}, Lk/a/b/a/b/f;->length()I

    move-result p1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lk/a/b/a/c/o0;->b:Lk/a/b/a/c/o0$d;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk/a/b/a/c/o0;->a:Lk/a/b/a/c/o0$d;

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 3
    check-cast p1, Lk/a/b/a/b/f;

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/b/f;->length()I

    move-result p1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lk/a/b/a/c/o0;->b:Lk/a/b/a/c/o0$d;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk/a/b/a/c/o0;->a:Lk/a/b/a/c/o0$d;

    :goto_0
    return-object p1
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/o0;->a:Lk/a/b/a/c/o0$d;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk/a/b/a/c/o0$d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk/a/b/a/c/o0$d;

    .line 1
    iget-object v1, p0, Lk/a/b/a/c/o0;->b:Lk/a/b/a/c/o0$d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/o0;->a:Lk/a/b/a/c/o0$d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
