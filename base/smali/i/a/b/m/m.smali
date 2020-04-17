.class public Li/a/b/m/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/m/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/a/b/m/n<",
        "Ljava/lang/String;",
        ">;"
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
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p3, p2, p1}, Li/a/b/g;->a(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method
