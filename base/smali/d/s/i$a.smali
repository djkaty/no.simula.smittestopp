.class public Ld/s/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/s/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ld/s/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final x:Ld/s/i;

.field public final y:Landroid/os/Bundle;

.field public final z:Z


# direct methods
.method public constructor <init>(Ld/s/i;Landroid/os/Bundle;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/s/i$a;->x:Ld/s/i;

    .line 3
    iput-object p2, p0, Ld/s/i$a;->y:Landroid/os/Bundle;

    .line 4
    iput-boolean p3, p0, Ld/s/i$a;->z:Z

    return-void
.end method


# virtual methods
.method public a(Ld/s/i$a;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/s/i$a;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Ld/s/i$a;->z:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-boolean v0, p0, Ld/s/i$a;->z:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Ld/s/i$a;->z:Z

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Ld/s/i$a;->y:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    iget-object p1, p1, Ld/s/i$a;->y:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ld/s/i$a;

    invoke-virtual {p0, p1}, Ld/s/i$a;->a(Ld/s/i$a;)I

    move-result p1

    return p1
.end method
