.class public final Le/c/a/a/f/b/b;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/b/i/h;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/f/b/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final x:I

.field public y:I

.field public z:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/c/a/a/f/b/c;

    invoke-direct {v0}, Le/c/a/a/f/b/c;-><init>()V

    sput-object v0, Le/c/a/a/f/b/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Le/c/a/a/f/b/b;->x:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le/c/a/a/f/b/b;->y:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/c/a/a/f/b/b;->z:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    .line 6
    iput p1, p0, Le/c/a/a/f/b/b;->x:I

    .line 7
    iput p2, p0, Le/c/a/a/f/b/b;->y:I

    .line 8
    iput-object p3, p0, Le/c/a/a/f/b/b;->z:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget v0, p0, Le/c/a/a/f/b/b;->y:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/common/api/Status;->B:Lcom/google/android/gms/common/api/Status;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->D:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget v1, p0, Le/c/a/a/f/b/b;->x:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    .line 3
    iget v1, p0, Le/c/a/a/f/b/b;->y:I

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    .line 5
    iget-object v1, p0, Le/c/a/a/f/b/b;->z:Landroid/content/Intent;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v2, v1, p2, v3}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    invoke-static {p1, v0}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
