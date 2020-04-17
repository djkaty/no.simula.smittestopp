.class public Ld/a0/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a0/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/a0/a/b;


# direct methods
.method public constructor <init>(Ld/a0/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/a0/a/b$c;->x:Ld/a0/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/a0/a/b$c;->x:Ld/a0/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/a0/a/b;->setScrollState(I)V

    .line 2
    iget-object v0, p0, Ld/a0/a/b$c;->x:Ld/a0/a/b;

    .line 3
    iget v1, v0, Ld/a0/a/b;->C:I

    invoke-virtual {v0, v1}, Ld/a0/a/b;->e(I)V

    return-void
.end method
