.class public abstract Le/c/a/a/d/c/e;
.super Le/c/a/a/d/c/p;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/d/c/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-direct {p0, v0}, Le/c/a/a/d/c/p;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    sget-object p1, Le/c/a/a/d/c/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Le/c/a/a/d/c/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Le/c/a/a/d/c/b;

    invoke-interface {p0, p1}, Le/c/a/a/d/c/d;->a(Le/c/a/a/d/c/b;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
