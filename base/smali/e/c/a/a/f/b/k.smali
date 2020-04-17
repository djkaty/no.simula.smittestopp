.class public final Le/c/a/a/f/b/k;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/f/b/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final x:I

.field public final y:Le/c/a/a/b/a;

.field public final z:Le/c/a/a/b/j/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/c/a/a/f/b/l;

    invoke-direct {v0}, Le/c/a/a/f/b/l;-><init>()V

    sput-object v0, Le/c/a/a/f/b/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5
    new-instance v0, Le/c/a/a/b/a;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Le/c/a/a/b/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 6
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    const/4 v2, 0x1

    .line 7
    iput v2, p0, Le/c/a/a/f/b/k;->x:I

    .line 8
    iput-object v0, p0, Le/c/a/a/f/b/k;->y:Le/c/a/a/b/a;

    .line 9
    iput-object v1, p0, Le/c/a/a/f/b/k;->z:Le/c/a/a/b/j/q;

    return-void
.end method

.method public constructor <init>(ILe/c/a/a/b/a;Le/c/a/a/b/j/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    .line 2
    iput p1, p0, Le/c/a/a/f/b/k;->x:I

    .line 3
    iput-object p2, p0, Le/c/a/a/f/b/k;->y:Le/c/a/a/b/a;

    .line 4
    iput-object p3, p0, Le/c/a/a/f/b/k;->z:Le/c/a/a/b/j/q;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget v1, p0, Le/c/a/a/f/b/k;->x:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    .line 3
    iget-object v1, p0, Le/c/a/a/f/b/k;->y:Le/c/a/a/b/a;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 4
    invoke-static {p1, v3, v1, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    iget-object v1, p0, Le/c/a/a/f/b/k;->z:Le/c/a/a/b/j/q;

    const/4 v3, 0x3

    .line 6
    invoke-static {p1, v3, v1, p2, v2}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    invoke-static {p1, v0}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
