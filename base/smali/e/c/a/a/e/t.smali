.class public final Le/c/a/a/e/t;
.super Le/c/a/a/d/c/a;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/e/r;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    invoke-direct {p0, p1, v0}, Le/c/a/a/d/c/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 1

    invoke-virtual {p0}, Le/c/a/a/d/c/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Le/c/a/a/d/c/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Le/c/a/a/d/c/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 1

    invoke-virtual {p0}, Le/c/a/a/d/c/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Le/c/a/a/d/c/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Le/c/a/a/d/c/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method
