.class public Li/a/b/m/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/m/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/m/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/a/b/m/n<",
        "Li/a/b/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Appendable;Li/a/b/g;)V
    .locals 0

    .line 1
    check-cast p1, Li/a/b/f;

    .line 2
    invoke-interface {p1, p2}, Li/a/b/e;->a(Ljava/lang/Appendable;)V

    return-void
.end method
