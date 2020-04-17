.class public Ld/i/b/b/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/i/b/b/g;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Landroid/graphics/Typeface;

.field public final synthetic y:Ld/i/b/b/g;


# direct methods
.method public constructor <init>(Ld/i/b/b/g;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/i/b/b/g$a;->y:Ld/i/b/b/g;

    iput-object p2, p0, Ld/i/b/b/g$a;->x:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/i/b/b/g$a;->y:Ld/i/b/b/g;

    iget-object v1, p0, Ld/i/b/b/g$a;->x:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ld/i/b/b/g;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
