.class public abstract Lh/k/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/m/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/k/b/b$a;
    }
.end annotation


# static fields
.field public static final z:Ljava/lang/Object;


# instance fields
.field public transient x:Lh/m/a;

.field public final y:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lh/k/b/b$a;->x:Lh/k/b/b$a;

    .line 2
    sput-object v0, Lh/k/b/b;->z:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lh/k/b/b;->z:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lh/k/b/b;->y:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lh/m/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lh/k/b/b;->x:Lh/m/a;

    if-nez v0, :cond_1

    .line 2
    move-object v0, p0

    check-cast v0, Lh/k/b/i;

    .line 3
    sget-object v1, Lh/k/b/l;->a:Lh/k/b/m;

    if-eqz v1, :cond_0

    .line 4
    iput-object v0, p0, Lh/k/b/b;->x:Lh/m/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
