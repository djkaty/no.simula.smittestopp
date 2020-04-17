.class public final Le/c/a/a/d/c/x;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"


# static fields
.field public static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/c/a/a/b/j/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final B:Le/c/a/a/e/j;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/d/c/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:Le/c/a/a/e/j;

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/c/a/a/b/j/c;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/c/a/a/d/c/x;->A:Ljava/util/List;

    new-instance v0, Le/c/a/a/e/j;

    invoke-direct {v0}, Le/c/a/a/e/j;-><init>()V

    sput-object v0, Le/c/a/a/d/c/x;->B:Le/c/a/a/e/j;

    new-instance v0, Le/c/a/a/d/c/y;

    invoke-direct {v0}, Le/c/a/a/d/c/y;-><init>()V

    sput-object v0, Le/c/a/a/d/c/x;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Le/c/a/a/e/j;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/e/j;",
            "Ljava/util/List<",
            "Le/c/a/a/b/j/c;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    iput-object p1, p0, Le/c/a/a/d/c/x;->x:Le/c/a/a/e/j;

    iput-object p2, p0, Le/c/a/a/d/c/x;->y:Ljava/util/List;

    iput-object p3, p0, Le/c/a/a/d/c/x;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Le/c/a/a/d/c/x;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Le/c/a/a/d/c/x;

    iget-object v0, p0, Le/c/a/a/d/c/x;->x:Le/c/a/a/e/j;

    iget-object v2, p1, Le/c/a/a/d/c/x;->x:Le/c/a/a/e/j;

    invoke-static {v0, v2}, Ld/b/a/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/c/a/a/d/c/x;->y:Ljava/util/List;

    iget-object v2, p1, Le/c/a/a/d/c/x;->y:Ljava/util/List;

    invoke-static {v0, v2}, Ld/b/a/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/c/a/a/d/c/x;->z:Ljava/lang/String;

    iget-object p1, p1, Le/c/a/a/d/c/x;->z:Ljava/lang/String;

    invoke-static {v0, p1}, Ld/b/a/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Le/c/a/a/d/c/x;->x:Le/c/a/a/e/j;

    invoke-virtual {v0}, Le/c/a/a/e/j;->hashCode()I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Le/c/a/a/d/c/x;->x:Le/c/a/a/e/j;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Le/c/a/a/d/c/x;->y:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p1, v1, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object p2, p0, Le/c/a/a/d/c/x;->z:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1
    invoke-static {p1, v0}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
