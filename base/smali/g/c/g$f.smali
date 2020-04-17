.class public abstract Lg/c/g$f;
.super Lg/c/g$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "f"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lg/c/i;

.field public final synthetic c:Lg/c/g;


# direct methods
.method public constructor <init>(Lg/c/g;Lg/c/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lg/c/g$f;->c:Lg/c/g;

    invoke-direct {p0, p1}, Lg/c/g$e;-><init>(Lg/c/g;)V

    .line 2
    iget-object v0, p1, Lg/c/g;->a:Lg/c/g$c;

    .line 3
    iget-object v0, v0, Lg/c/g$c;->a:Lg/c/f;

    .line 4
    invoke-virtual {v0, p2}, Lg/c/f;->a(Lg/c/c;)Lg/c/i;

    move-result-object p2

    iput-object p2, p0, Lg/c/g$f;->b:Lg/c/i;

    .line 5
    iget-object p1, p1, Lg/c/g;->a:Lg/c/g$c;

    check-cast p2, Lg/c/h;

    .line 6
    iget v0, p2, Lg/c/h;->f:I

    mul-int/lit8 v0, v0, 0x8

    .line 7
    iget p2, p2, Lg/c/h;->e:I

    mul-int/lit8 p2, p2, 0x8

    .line 8
    invoke-virtual {p1, v0, p2}, Lg/c/g$c;->a(II)I

    move-result p1

    iput p1, p0, Lg/c/g$f;->a:I

    return-void
.end method

.method public constructor <init>(Lg/c/g;Lg/c/j;)V
    .locals 1

    .line 9
    iput-object p1, p0, Lg/c/g$f;->c:Lg/c/g;

    invoke-direct {p0, p1}, Lg/c/g$e;-><init>(Lg/c/g;)V

    .line 10
    iget-object v0, p1, Lg/c/g;->a:Lg/c/g$c;

    .line 11
    iget-object v0, v0, Lg/c/g$c;->a:Lg/c/f;

    .line 12
    invoke-virtual {v0, p2}, Lg/c/f;->a(Lg/c/j;)Lg/c/i;

    move-result-object p2

    iput-object p2, p0, Lg/c/g$f;->b:Lg/c/i;

    .line 13
    iget-object p1, p1, Lg/c/g;->a:Lg/c/g$c;

    check-cast p2, Lg/c/h;

    .line 14
    iget v0, p2, Lg/c/h;->f:I

    mul-int/lit8 v0, v0, 0x8

    .line 15
    iget p2, p2, Lg/c/h;->e:I

    mul-int/lit8 p2, p2, 0x8

    .line 16
    invoke-virtual {p1, v0, p2}, Lg/c/g$c;->a(II)I

    move-result p1

    iput p1, p0, Lg/c/g$f;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/c/g$f;->c:Lg/c/g;

    iget-object v0, v0, Lg/c/g;->a:Lg/c/g$c;

    const/16 v1, 0x10

    .line 2
    invoke-virtual {v0, v1}, Lg/c/g$c;->a(I)V

    return-void
.end method

.method public abstract a(Ljava/lang/Number;)V
.end method

.method public abstract b()I
.end method

.method public final c()J
    .locals 2

    .line 1
    iget v0, p0, Lg/c/g$f;->a:I

    iget-object v1, p0, Lg/c/g$f;->c:Lg/c/g;

    iget-object v1, v1, Lg/c/g;->a:Lg/c/g$c;

    invoke-virtual {v1}, Lg/c/g$c;->a()I

    move-result v1

    add-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg/c/g$f;->b()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
