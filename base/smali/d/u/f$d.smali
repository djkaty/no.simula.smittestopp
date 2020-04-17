.class public Ld/u/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/u/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/u/f;


# direct methods
.method public constructor <init>(Ld/u/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/u/f$d;->x:Ld/u/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/u/f$d;->x:Ld/u/f;

    iget-object v1, v0, Ld/u/f;->d:Ld/u/e;

    iget-object v0, v0, Ld/u/f;->e:Ld/u/e$c;

    invoke-virtual {v1, v0}, Ld/u/e;->b(Ld/u/e$c;)V

    return-void
.end method
