.class public final Le/c/a/a/d/c/h;
.super Le/c/a/a/d/c/a;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/d/c/g;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-direct {p0, p1, v0}, Le/c/a/a/d/c/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/d/c/s;)V
    .locals 1

    invoke-virtual {p0}, Le/c/a/a/d/c/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Le/c/a/a/d/c/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x3b

    invoke-virtual {p0, p1, v0}, Le/c/a/a/d/c/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Le/c/a/a/d/c/z;)V
    .locals 1

    invoke-virtual {p0}, Le/c/a/a/d/c/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Le/c/a/a/d/c/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x4b

    invoke-virtual {p0, p1, v0}, Le/c/a/a/d/c/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    invoke-virtual {p0}, Le/c/a/a/d/c/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Le/c/a/a/d/c/u;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Le/c/a/a/d/c/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method
