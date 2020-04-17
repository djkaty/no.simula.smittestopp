.class public final Lh/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/n/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/n/a<",
        "Lh/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Lh/k/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/k/a/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lh/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILh/k/a/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lh/k/a/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lh/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/o/b;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lh/o/b;->b:I

    iput p3, p0, Lh/o/b;->c:I

    iput-object p4, p0, Lh/o/b;->d:Lh/k/a/p;

    return-void

    :cond_0
    const-string p1, "getNextMatch"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "input"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lh/l/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/o/b$a;

    invoke-direct {v0, p0}, Lh/o/b$a;-><init>(Lh/o/b;)V

    return-object v0
.end method
