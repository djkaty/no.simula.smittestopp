.class public final Le/c/a/a/d/c/z;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/d/c/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Le/c/a/a/d/c/d;

.field public x:I

.field public y:Le/c/a/a/d/c/x;

.field public z:Le/c/a/a/e/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/d/c/a0;

    invoke-direct {v0}, Le/c/a/a/d/c/a0;-><init>()V

    sput-object v0, Le/c/a/a/d/c/z;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILe/c/a/a/d/c/x;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    iput p1, p0, Le/c/a/a/d/c/z;->x:I

    iput-object p2, p0, Le/c/a/a/d/c/z;->y:Le/c/a/a/d/c/x;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Le/c/a/a/e/p;->a(Landroid/os/IBinder;)Le/c/a/a/e/o;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Le/c/a/a/d/c/z;->z:Le/c/a/a/e/o;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p4, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Le/c/a/a/d/c/d;

    if-eqz p2, :cond_2

    check-cast p1, Le/c/a/a/d/c/d;

    goto :goto_1

    :cond_2
    new-instance p1, Le/c/a/a/d/c/f;

    invoke-direct {p1, p4}, Le/c/a/a/d/c/f;-><init>(Landroid/os/IBinder;)V

    :goto_1
    iput-object p1, p0, Le/c/a/a/d/c/z;->A:Le/c/a/a/d/c/d;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Le/c/a/a/d/c/z;->x:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    iget-object v1, p0, Le/c/a/a/d/c/z;->y:Le/c/a/a/d/c/x;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Le/c/a/a/d/c/z;->z:Le/c/a/a/e/o;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v3, 0x3

    invoke-static {p1, v3, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x4

    iget-object v3, p0, Le/c/a/a/d/c/z;->A:Le/c/a/a/d/c/d;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    invoke-static {p1, p2, v1, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 1
    invoke-static {p1, v0}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
