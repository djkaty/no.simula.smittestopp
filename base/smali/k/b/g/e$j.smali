.class public Lk/b/g/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/j/h/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Lk/b/g/e;


# direct methods
.method public constructor <init>(Lk/b/g/e;)V
    .locals 0

    iput-object p1, p0, Lk/b/g/e$j;->a:Lk/b/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/b/j/h/b/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p1, Lk/b/j/h/b/b;->c:[B

    .line 2
    invoke-static {p1}, Lk/b/a/l2/s;->a(Ljava/lang/Object;)Lk/b/a/l2/s;

    move-result-object p1

    return-object p1
.end method
