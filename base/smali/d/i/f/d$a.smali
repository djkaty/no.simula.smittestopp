.class public Ld/i/f/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/i/f/d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ljava/lang/Object;

.field public final synthetic y:Ld/i/f/d;


# direct methods
.method public constructor <init>(Ld/i/f/d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/i/f/d$a;->y:Ld/i/f/d;

    iput-object p2, p0, Ld/i/f/d$a;->x:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/i/f/d$a;->y:Ld/i/f/d;

    iget-object v0, v0, Ld/i/f/d;->z:Ld/i/f/c$c;

    iget-object v1, p0, Ld/i/f/d$a;->x:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ld/i/f/c$c;->a(Ljava/lang/Object;)V

    return-void
.end method
