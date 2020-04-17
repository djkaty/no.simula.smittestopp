.class public Lk/b/i/b/g/y$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/i/b/g/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lk/b/i/b/g/w;

.field public b:[B

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Lk/b/i/b/g/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b/i/b/g/y$b;->b:[B

    iput-object v0, p0, Lk/b/i/b/g/y$b;->c:[B

    iput-object v0, p0, Lk/b/i/b/g/y$b;->d:[B

    iput-object p1, p0, Lk/b/i/b/g/y$b;->a:Lk/b/i/b/g/w;

    return-void
.end method
