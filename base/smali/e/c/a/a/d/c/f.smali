.class public final Le/c/a/a/d/c/f;
.super Le/c/a/a/d/c/a;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/d/c/d;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-direct {p0, p1, v0}, Le/c/a/a/d/c/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/d/c/b;)V
    .locals 1

    invoke-virtual {p0}, Le/c/a/a/d/c/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Le/c/a/a/d/c/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Le/c/a/a/d/c/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method
