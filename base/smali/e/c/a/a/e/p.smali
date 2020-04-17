.class public Le/c/a/a/e/p;
.super Le/c/a/a/d/c/p;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/e/o;


# direct methods
.method public static a(Landroid/os/IBinder;)Le/c/a/a/e/o;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.location.IDeviceOrientationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Le/c/a/a/e/o;

    if-eqz v1, :cond_1

    check-cast v0, Le/c/a/a/e/o;

    return-object v0

    :cond_1
    new-instance v0, Le/c/a/a/e/q;

    invoke-direct {v0, p0}, Le/c/a/a/e/q;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
