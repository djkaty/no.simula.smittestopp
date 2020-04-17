.class public Ld/m/a/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/l;


# instance fields
.field public x:Ld/o/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld/m/a/l0;->x:Ld/o/m;

    return-void
.end method


# virtual methods
.method public getLifecycle()Ld/o/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/l0;->x:Ld/o/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/o/m;

    invoke-direct {v0, p0}, Ld/o/m;-><init>(Ld/o/l;)V

    iput-object v0, p0, Ld/m/a/l0;->x:Ld/o/m;

    .line 3
    :cond_0
    iget-object v0, p0, Ld/m/a/l0;->x:Ld/o/m;

    return-object v0
.end method
