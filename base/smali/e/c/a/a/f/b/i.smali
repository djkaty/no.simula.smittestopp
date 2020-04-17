.class public final Le/c/a/a/f/b/i;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/f/b/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final x:I

.field public final y:Le/c/a/a/b/j/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/c/a/a/f/b/j;

    invoke-direct {v0}, Le/c/a/a/f/b/j;-><init>()V

    sput-object v0, Le/c/a/a/f/b/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILe/c/a/a/b/j/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    .line 2
    iput p1, p0, Le/c/a/a/f/b/i;->x:I

    .line 3
    iput-object p2, p0, Le/c/a/a/f/b/i;->y:Le/c/a/a/b/j/p;

    return-void
.end method

.method public constructor <init>(Le/c/a/a/b/j/p;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Le/c/a/a/f/b/i;->x:I

    .line 6
    iput-object p1, p0, Le/c/a/a/f/b/i;->y:Le/c/a/a/b/j/p;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget v1, p0, Le/c/a/a/f/b/i;->x:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    .line 3
    iget-object v1, p0, Le/c/a/a/f/b/i;->y:Le/c/a/a/b/j/p;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Ld/b/a/r;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
