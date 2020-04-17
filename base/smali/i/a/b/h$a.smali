.class public Li/a/b/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 1
    const-class p1, Li/a/b/k/a;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Li/a/b/k/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Li/a/b/k/a;->value()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
