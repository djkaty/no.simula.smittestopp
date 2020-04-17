.class public abstract Ld/t/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld/t/a/s$k;

.field public b:I

.field public final c:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Ld/t/a/s$k;Ld/t/a/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p2, -0x80000000

    .line 2
    iput p2, p0, Ld/t/a/r;->b:I

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Ld/t/a/r;->c:Landroid/graphics/Rect;

    .line 4
    iput-object p1, p0, Ld/t/a/r;->a:Ld/t/a/s$k;

    return-void
.end method

.method public static a(Ld/t/a/s$k;I)Ld/t/a/r;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Ld/t/a/q;

    invoke-direct {p1, p0}, Ld/t/a/q;-><init>(Ld/t/a/s$k;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p1, Ld/t/a/p;

    invoke-direct {p1, p0}, Ld/t/a/p;-><init>(Ld/t/a/s$k;)V

    return-object p1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/View;)I
.end method

.method public abstract b()I
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method
