.class public final Le/c/a/a/b/j/z;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/b/j/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:Landroid/os/Bundle;

.field public y:[Le/c/a/a/b/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/c/a/a/b/j/a0;

    invoke-direct {v0}, Le/c/a/a/b/j/a0;-><init>()V

    sput-object v0, Le/c/a/a/b/j/z;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[Le/c/a/a/b/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/c/a/a/b/j/z;->x:Landroid/os/Bundle;

    .line 3
    iput-object p2, p0, Le/c/a/a/b/j/z;->y:[Le/c/a/a/b/c;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-object v1, p0, Le/c/a/a/b/j/z;->x:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v2}, Ld/b/a/r;->j(Landroid/os/Parcel;I)I

    move-result v2

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5
    invoke-static {p1, v2}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Le/c/a/a/b/j/z;->y:[Le/c/a/a/b/c;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Ld/b/a/r;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 7
    invoke-static {p1, v0}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
