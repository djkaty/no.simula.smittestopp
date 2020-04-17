.class public final Lh/j/b$a;
.super Lh/k/b/h;
.source "SourceFile"

# interfaces
.implements Lh/k/a/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/j/b;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/k/b/h;",
        "Lh/k/a/p<",
        "Ljava/lang/String;",
        "Lh/j/d$a;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final x:Lh/j/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/j/b$a;

    invoke-direct {v0}, Lh/j/b$a;-><init>()V

    sput-object v0, Lh/j/b$a;->x:Lh/j/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lh/k/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lh/j/d$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    const-string p1, "element"

    .line 3
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "acc"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
