.class public Le/c/a/a/b/j/g;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/b/j/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:Landroid/os/IBinder;

.field public C:[Lcom/google/android/gms/common/api/Scope;

.field public D:Landroid/os/Bundle;

.field public E:Landroid/accounts/Account;

.field public F:[Le/c/a/a/b/c;

.field public G:[Le/c/a/a/b/c;

.field public H:Z

.field public final x:I

.field public final y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/c/a/a/b/j/b0;

    invoke-direct {v0}, Le/c/a/a/b/j/b0;-><init>()V

    sput-object v0, Le/c/a/a/b/j/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Le/c/a/a/b/j/g;->x:I

    .line 3
    sget v0, Le/c/a/a/b/e;->a:I

    iput v0, p0, Le/c/a/a/b/j/g;->z:I

    .line 4
    iput p1, p0, Le/c/a/a/b/j/g;->y:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Le/c/a/a/b/j/g;->H:Z

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Le/c/a/a/b/c;[Le/c/a/a/b/c;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    .line 7
    iput p1, p0, Le/c/a/a/b/j/g;->x:I

    .line 8
    iput p2, p0, Le/c/a/a/b/j/g;->y:I

    .line 9
    iput p3, p0, Le/c/a/a/b/j/g;->z:I

    const-string p2, "com.google.android.gms"

    .line 10
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 11
    iput-object p2, p0, Le/c/a/a/b/j/g;->A:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_0
    iput-object p4, p0, Le/c/a/a/b/j/g;->A:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    .line 13
    invoke-static {p5}, Le/c/a/a/b/j/k$a;->a(Landroid/os/IBinder;)Le/c/a/a/b/j/k;

    move-result-object p1

    .line 14
    invoke-static {p1}, Le/c/a/a/b/j/a;->a(Le/c/a/a/b/j/k;)Landroid/accounts/Account;

    move-result-object p1

    .line 15
    :cond_1
    iput-object p1, p0, Le/c/a/a/b/j/g;->E:Landroid/accounts/Account;

    goto :goto_1

    .line 16
    :cond_2
    iput-object p5, p0, Le/c/a/a/b/j/g;->B:Landroid/os/IBinder;

    .line 17
    iput-object p8, p0, Le/c/a/a/b/j/g;->E:Landroid/accounts/Account;

    .line 18
    :goto_1
    iput-object p6, p0, Le/c/a/a/b/j/g;->C:[Lcom/google/android/gms/common/api/Scope;

    .line 19
    iput-object p7, p0, Le/c/a/a/b/j/g;->D:Landroid/os/Bundle;

    .line 20
    iput-object p9, p0, Le/c/a/a/b/j/g;->F:[Le/c/a/a/b/c;

    .line 21
    iput-object p10, p0, Le/c/a/a/b/j/g;->G:[Le/c/a/a/b/c;

    .line 22
    iput-boolean p11, p0, Le/c/a/a/b/j/g;->H:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget v1, p0, Le/c/a/a/b/j/g;->x:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    .line 3
    iget v1, p0, Le/c/a/a/b/j/g;->y:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    .line 4
    iget v1, p0, Le/c/a/a/b/j/g;->z:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    .line 5
    iget-object v1, p0, Le/c/a/a/b/j/g;->A:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    iget-object v1, p0, Le/c/a/a/b/j/g;->B:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 7
    iget-object v1, p0, Le/c/a/a/b/j/g;->C:[Lcom/google/android/gms/common/api/Scope;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 8
    iget-object v1, p0, Le/c/a/a/b/j/g;->D:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    .line 9
    invoke-static {p1, v3}, Ld/b/a/r;->j(Landroid/os/Parcel;I)I

    move-result v3

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 11
    invoke-static {p1, v3}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v1, 0x8

    .line 12
    iget-object v3, p0, Le/c/a/a/b/j/g;->E:Landroid/accounts/Account;

    invoke-static {p1, v1, v3, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    .line 13
    iget-object v3, p0, Le/c/a/a/b/j/g;->F:[Le/c/a/a/b/c;

    invoke-static {p1, v1, v3, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    .line 14
    iget-object v3, p0, Le/c/a/a/b/j/g;->G:[Le/c/a/a/b/c;

    invoke-static {p1, v1, v3, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 p2, 0xc

    .line 15
    iget-boolean v1, p0, Le/c/a/a/b/j/g;->H:Z

    invoke-static {p1, p2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;IZ)V

    .line 16
    invoke-static {p1, v0}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
