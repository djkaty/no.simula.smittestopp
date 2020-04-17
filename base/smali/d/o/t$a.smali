.class public Ld/o/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/o/t;


# direct methods
.method public constructor <init>(Ld/o/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/o/t$a;->x:Ld/o/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/o/t$a;->x:Ld/o/t;

    .line 2
    iget v1, v0, Ld/o/t;->y:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, v0, Ld/o/t;->z:Z

    .line 4
    iget-object v0, v0, Ld/o/t;->C:Ld/o/m;

    sget-object v1, Ld/o/g$a;->ON_PAUSE:Ld/o/g$a;

    invoke-virtual {v0, v1}, Ld/o/m;->a(Ld/o/g$a;)V

    .line 5
    :cond_0
    iget-object v0, p0, Ld/o/t$a;->x:Ld/o/t;

    .line 6
    iget v1, v0, Ld/o/t;->x:I

    if-nez v1, :cond_1

    iget-boolean v1, v0, Ld/o/t;->z:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v0, Ld/o/t;->C:Ld/o/m;

    sget-object v3, Ld/o/g$a;->ON_STOP:Ld/o/g$a;

    invoke-virtual {v1, v3}, Ld/o/m;->a(Ld/o/g$a;)V

    .line 8
    iput-boolean v2, v0, Ld/o/t;->A:Z

    :cond_1
    return-void
.end method
