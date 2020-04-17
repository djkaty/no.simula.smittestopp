.class public final Lk/a/b/a/b/n/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/l;


# static fields
.field public static final a:Lk/a/b/a/b/n/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk/a/b/a/b/n/h;

    invoke-direct {v0}, Lk/a/b/a/b/n/h;-><init>()V

    sput-object v0, Lk/a/b/a/b/n/h;->a:Lk/a/b/a/b/n/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/n/l$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/a/b/a/b/n/l$a<",
            "TE;>;",
            "Lk/a/b/a/b/a;",
            "TE;)V"
        }
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Empty Frame"

    return-object v0
.end method
