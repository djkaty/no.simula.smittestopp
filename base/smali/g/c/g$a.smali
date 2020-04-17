.class public abstract Lg/c/g$a;
.super Lg/c/g$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Lg/c/g;


# direct methods
.method public constructor <init>(Lg/c/g;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/c/g$a;->b:Lg/c/g;

    invoke-direct {p0, p1}, Lg/c/g$e;-><init>(Lg/c/g;)V

    .line 2
    iget-object p1, p1, Lg/c/g;->a:Lg/c/g$c;

    invoke-virtual {p1, p2, p3}, Lg/c/g$c;->a(II)I

    move-result p1

    iput p1, p0, Lg/c/g$a;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/c/g$a;->b:Lg/c/g;

    iget-object v0, v0, Lg/c/g;->a:Lg/c/g$c;

    const/16 v1, 0x10

    .line 2
    invoke-virtual {v0, v1}, Lg/c/g$c;->a(I)V

    return-void
.end method

.method public final b()J
    .locals 2

    .line 1
    iget v0, p0, Lg/c/g$a;->a:I

    iget-object v1, p0, Lg/c/g$a;->b:Lg/c/g;

    iget-object v1, v1, Lg/c/g;->a:Lg/c/g$c;

    invoke-virtual {v1}, Lg/c/g$c;->a()I

    move-result v1

    add-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0
.end method
