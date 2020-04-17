.class public Le/c/a/a/b/j/q;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/b/j/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Z

.field public final x:I

.field public y:Landroid/os/IBinder;

.field public z:Le/c/a/a/b/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/c/a/a/b/j/y;

    invoke-direct {v0}, Le/c/a/a/b/j/y;-><init>()V

    sput-object v0, Le/c/a/a/b/j/q;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Le/c/a/a/b/a;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    .line 2
    iput p1, p0, Le/c/a/a/b/j/q;->x:I

    .line 3
    iput-object p2, p0, Le/c/a/a/b/j/q;->y:Landroid/os/IBinder;

    .line 4
    iput-object p3, p0, Le/c/a/a/b/j/q;->z:Le/c/a/a/b/a;

    .line 5
    iput-boolean p4, p0, Le/c/a/a/b/j/q;->A:Z

    .line 6
    iput-boolean p5, p0, Le/c/a/a/b/j/q;->B:Z

    return-void
.end method


# virtual methods
.method public b()Le/c/a/a/b/j/k;
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/q;->y:Landroid/os/IBinder;

    invoke-static {v0}, Le/c/a/a/b/j/k$a;->a(Landroid/os/IBinder;)Le/c/a/a/b/j/k;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/c/a/a/b/j/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Le/c/a/a/b/j/q;

    .line 3
    iget-object v1, p0, Le/c/a/a/b/j/q;->z:Le/c/a/a/b/a;

    iget-object v3, p1, Le/c/a/a/b/j/q;->z:Le/c/a/a/b/a;

    invoke-virtual {v1, v3}, Le/c/a/a/b/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Le/c/a/a/b/j/q;->b()Le/c/a/a/b/j/k;

    move-result-object v1

    invoke-virtual {p1}, Le/c/a/a/b/j/q;->b()Le/c/a/a/b/j/k;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget v1, p0, Le/c/a/a/b/j/q;->x:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    .line 3
    iget-object v1, p0, Le/c/a/a/b/j/q;->y:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 4
    iget-object v1, p0, Le/c/a/a/b/j/q;->z:Le/c/a/a/b/a;

    const/4 v3, 0x3

    .line 5
    invoke-static {p1, v3, v1, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    iget-boolean p2, p0, Le/c/a/a/b/j/q;->A:Z

    const/4 v1, 0x4

    .line 7
    invoke-static {p1, v1, p2}, Ld/b/a/r;->a(Landroid/os/Parcel;IZ)V

    .line 8
    iget-boolean p2, p0, Le/c/a/a/b/j/q;->B:Z

    const/4 v1, 0x5

    .line 9
    invoke-static {p1, v1, p2}, Ld/b/a/r;->a(Landroid/os/Parcel;IZ)V

    .line 10
    invoke-static {p1, v0}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
