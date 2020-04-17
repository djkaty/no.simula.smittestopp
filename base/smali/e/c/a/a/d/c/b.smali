.class public final Le/c/a/a/d/c/b;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/b/i/h;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/d/c/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final x:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/c/a/a/d/c/b;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->B:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Le/c/a/a/d/c/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    new-instance v0, Le/c/a/a/d/c/c;

    invoke-direct {v0}, Le/c/a/a/d/c/c;-><init>()V

    sput-object v0, Le/c/a/a/d/c/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    iput-object p1, p0, Le/c/a/a/d/c/b;->x:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Le/c/a/a/d/c/b;->x:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 1
    iget-object v1, p0, Le/c/a/a/d/c/b;->x:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-static {p1, v3, v1, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3
    invoke-static {p1, v0}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
