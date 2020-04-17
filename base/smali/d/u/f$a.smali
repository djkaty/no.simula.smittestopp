.class public Ld/u/f$a;
.super Ld/u/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/u/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/u/f;


# direct methods
.method public constructor <init>(Ld/u/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/u/f$a;->a:Ld/u/f;

    invoke-direct {p0}, Ld/u/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/u/f$a;->a:Ld/u/f;

    iget-object v0, v0, Ld/u/f;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Ld/u/f$a$a;

    invoke-direct {v1, p0, p1}, Ld/u/f$a$a;-><init>(Ld/u/f$a;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
