.class public Ld/k/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/k/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/k/b/a;


# direct methods
.method public constructor <init>(Ld/k/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/k/b/a$b;->x:Ld/k/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/k/b/a$b;->x:Ld/k/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/k/b/a;->d(I)V

    return-void
.end method
