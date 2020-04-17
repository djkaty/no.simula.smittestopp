.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/f;


# instance fields
.field public final synthetic x:Ld/v/a;


# direct methods
.method public constructor <init>(Ld/v/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->x:Ld/v/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/o/l;Ld/o/g$a;)V
    .locals 0

    .line 1
    sget-object p1, Ld/o/g$a;->ON_START:Ld/o/g$a;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->x:Ld/v/a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Ld/v/a;->e:Z

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Ld/o/g$a;->ON_STOP:Ld/o/g$a;

    if-ne p2, p1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->x:Ld/v/a;

    const/4 p2, 0x0

    iput-boolean p2, p1, Ld/v/a;->e:Z

    :cond_1
    :goto_0
    return-void
.end method
