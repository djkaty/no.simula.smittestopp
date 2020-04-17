.class public Ld/u/m/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/u/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ld/u/m/d$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Ljava/lang/String;

.field public final x:I

.field public final y:I

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld/u/m/d$c;->x:I

    .line 3
    iput p2, p0, Ld/u/m/d$c;->y:I

    .line 4
    iput-object p3, p0, Ld/u/m/d$c;->z:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Ld/u/m/d$c;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ld/u/m/d$c;

    .line 2
    iget v0, p0, Ld/u/m/d$c;->x:I

    iget v1, p1, Ld/u/m/d$c;->x:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Ld/u/m/d$c;->y:I

    iget p1, p1, Ld/u/m/d$c;->y:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method
