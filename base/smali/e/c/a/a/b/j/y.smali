.class public final Le/c/a/a/b/j/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Le/c/a/a/b/j/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Ld/b/a/r;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move-object v6, v5

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_5

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 4
    invoke-static {p1, v1}, Ld/b/a/r;->i(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1, v1}, Ld/b/a/r;->d(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1, v1}, Ld/b/a/r;->d(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_0

    .line 7
    :cond_2
    sget-object v2, Le/c/a/a/b/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p1, v1, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/c/a/a/b/a;

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p1, v1}, Ld/b/a/r;->e(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v5

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {p1, v1}, Ld/b/a/r;->f(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    .line 11
    :cond_5
    invoke-static {p1, v0}, Ld/b/a/r;->c(Landroid/os/Parcel;I)V

    .line 12
    new-instance p1, Le/c/a/a/b/j/q;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le/c/a/a/b/j/q;-><init>(ILandroid/os/IBinder;Le/c/a/a/b/a;ZZ)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Le/c/a/a/b/j/q;

    return-object p1
.end method
