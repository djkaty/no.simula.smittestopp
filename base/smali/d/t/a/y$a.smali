.class public Ld/t/a/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/t/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static d:Ld/i/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/i/h/b<",
            "Ld/t/a/y$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ld/t/a/s$h$c;

.field public c:Ld/t/a/s$h$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld/i/h/b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ld/i/h/b;-><init>(I)V

    sput-object v0, Ld/t/a/y$a;->d:Ld/i/h/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ld/t/a/y$a;
    .locals 1

    .line 1
    sget-object v0, Ld/t/a/y$a;->d:Ld/i/h/b;

    invoke-virtual {v0}, Ld/i/h/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/t/a/y$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/t/a/y$a;

    invoke-direct {v0}, Ld/t/a/y$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static a(Ld/t/a/y$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ld/t/a/y$a;->a:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ld/t/a/y$a;->b:Ld/t/a/s$h$c;

    .line 5
    iput-object v0, p0, Ld/t/a/y$a;->c:Ld/t/a/s$h$c;

    .line 6
    sget-object v0, Ld/t/a/y$a;->d:Ld/i/h/b;

    invoke-virtual {v0, p0}, Ld/i/h/b;->a(Ljava/lang/Object;)Z

    return-void
.end method
