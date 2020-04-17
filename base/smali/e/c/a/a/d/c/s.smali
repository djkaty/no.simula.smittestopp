.class public final Le/c/a/a/d/c/s;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/d/c/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Landroid/app/PendingIntent;

.field public B:Le/c/a/a/e/r;

.field public C:Le/c/a/a/d/c/d;

.field public x:I

.field public y:Le/c/a/a/d/c/q;

.field public z:Le/c/a/a/e/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/d/c/t;

    invoke-direct {v0}, Le/c/a/a/d/c/t;-><init>()V

    sput-object v0, Le/c/a/a/d/c/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILe/c/a/a/d/c/q;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    iput p1, p0, Le/c/a/a/d/c/s;->x:I

    iput-object p2, p0, Le/c/a/a/d/c/s;->y:Le/c/a/a/d/c/q;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Le/c/a/a/e/v;->a(Landroid/os/IBinder;)Le/c/a/a/e/u;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Le/c/a/a/d/c/s;->z:Le/c/a/a/e/u;

    iput-object p4, p0, Le/c/a/a/d/c/s;->A:Landroid/app/PendingIntent;

    if-nez p5, :cond_1

    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-static {p5}, Le/c/a/a/e/s;->a(Landroid/os/IBinder;)Le/c/a/a/e/r;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Le/c/a/a/d/c/s;->B:Le/c/a/a/e/r;

    if-nez p6, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Le/c/a/a/d/c/d;

    if-eqz p2, :cond_3

    check-cast p1, Le/c/a/a/d/c/d;

    goto :goto_2

    :cond_3
    new-instance p1, Le/c/a/a/d/c/f;

    invoke-direct {p1, p6}, Le/c/a/a/d/c/f;-><init>(Landroid/os/IBinder;)V

    :goto_2
    iput-object p1, p0, Le/c/a/a/d/c/s;->C:Le/c/a/a/d/c/d;

    return-void
.end method

.method public static a(Le/c/a/a/e/r;Le/c/a/a/d/c/d;)Le/c/a/a/d/c/s;
    .locals 8

    new-instance v7, Le/c/a/a/d/c/s;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v6, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le/c/a/a/d/c/s;-><init>(ILe/c/a/a/d/c/q;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Le/c/a/a/d/c/s;->x:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    iget-object v1, p0, Le/c/a/a/d/c/s;->y:Le/c/a/a/d/c/q;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Le/c/a/a/d/c/s;->z:Le/c/a/a/e/u;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v4, 0x3

    invoke-static {p1, v4, v1, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    iget-object v4, p0, Le/c/a/a/d/c/s;->A:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v4, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    iget-object v1, p0, Le/c/a/a/d/c/s;->B:Le/c/a/a/e/r;

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    invoke-static {p1, p2, v1, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x6

    iget-object v1, p0, Le/c/a/a/d/c/s;->C:Le/c/a/a/d/c/d;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2
    invoke-static {p1, p2, v3, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 1
    invoke-static {p1, v0}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
