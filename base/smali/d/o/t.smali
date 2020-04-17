.class public Ld/o/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/l;


# static fields
.field public static final F:Ld/o/t;


# instance fields
.field public A:Z

.field public B:Landroid/os/Handler;

.field public final C:Ld/o/m;

.field public D:Ljava/lang/Runnable;

.field public E:Ld/o/v$a;

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld/o/t;

    invoke-direct {v0}, Ld/o/t;-><init>()V

    sput-object v0, Ld/o/t;->F:Ld/o/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld/o/t;->x:I

    .line 3
    iput v0, p0, Ld/o/t;->y:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ld/o/t;->z:Z

    .line 5
    iput-boolean v0, p0, Ld/o/t;->A:Z

    .line 6
    new-instance v0, Ld/o/m;

    invoke-direct {v0, p0}, Ld/o/m;-><init>(Ld/o/l;)V

    iput-object v0, p0, Ld/o/t;->C:Ld/o/m;

    .line 7
    new-instance v0, Ld/o/t$a;

    invoke-direct {v0, p0}, Ld/o/t$a;-><init>(Ld/o/t;)V

    iput-object v0, p0, Ld/o/t;->D:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Ld/o/t$b;

    invoke-direct {v0, p0}, Ld/o/t$b;-><init>(Ld/o/t;)V

    iput-object v0, p0, Ld/o/t;->E:Ld/o/v$a;

    return-void
.end method


# virtual methods
.method public getLifecycle()Ld/o/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/o/t;->C:Ld/o/m;

    return-object v0
.end method
