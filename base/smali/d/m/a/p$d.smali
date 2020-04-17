.class public Ld/m/a/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/m/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/m/a/p;


# direct methods
.method public constructor <init>(Ld/m/a/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/m/a/p$d;->x:Ld/m/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/p$d;->x:Ld/m/a/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/m/a/p;->d(Z)Z

    return-void
.end method
