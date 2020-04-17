.class public abstract Lk/e/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk/e/a/l;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported api "

    invoke-static {v1, p1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lk/e/a/l;->a:Lk/e/a/l;

    return-void
.end method


# virtual methods
.method public abstract a(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;
.end method

.method public abstract a(Ljava/lang/String;Z)Lk/e/a/a;
.end method
