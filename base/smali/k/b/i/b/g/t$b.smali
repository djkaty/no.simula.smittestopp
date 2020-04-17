.class public Lk/b/i/b/g/t$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/i/b/g/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lk/b/i/b/g/r;

.field public b:[B

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Lk/b/i/b/g/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b/i/b/g/t$b;->b:[B

    iput-object v0, p0, Lk/b/i/b/g/t$b;->c:[B

    iput-object v0, p0, Lk/b/i/b/g/t$b;->d:[B

    iput-object p1, p0, Lk/b/i/b/g/t$b;->a:Lk/b/i/b/g/r;

    return-void
.end method
