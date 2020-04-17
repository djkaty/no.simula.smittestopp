.class public abstract Le/c/a/a/e/v;
.super Le/c/a/a/d/c/p;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/e/u;


# direct methods
.method public static a(Landroid/os/IBinder;)Le/c/a/a/e/u;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.location.ILocationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Le/c/a/a/e/u;

    if-eqz v1, :cond_1

    check-cast v0, Le/c/a/a/e/u;

    return-object v0

    :cond_1
    new-instance v0, Le/c/a/a/e/w;

    invoke-direct {v0, p0}, Le/c/a/a/e/w;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    sget-object p1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Le/c/a/a/d/c/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-interface {p0, p1}, Le/c/a/a/e/u;->a(Landroid/location/Location;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
