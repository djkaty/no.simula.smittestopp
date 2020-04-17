.class public Li/a/b/m/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/m/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/a/b/m/n<",
        "[Z>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Li/a/b/m/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Appendable;Li/a/b/g;)V
    .locals 4

    .line 1
    check-cast p1, [Z

    if-eqz p3, :cond_2

    const/16 p3, 0x5b

    .line 2
    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 3
    array-length p3, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    const/16 p1, 0x5d

    .line 4
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void

    .line 5
    :cond_0
    aget-boolean v2, p1, v0

    if-eqz v1, :cond_1

    const/16 v3, 0x2c

    .line 6
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 7
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
