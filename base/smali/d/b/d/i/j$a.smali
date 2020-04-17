.class public Ld/b/d/i/j$a;
.super Ld/i/i/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/d/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Ld/b/d/i/j;


# direct methods
.method public constructor <init>(Ld/b/d/i/j;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/d/i/j$a;->c:Ld/b/d/i/j;

    .line 2
    invoke-direct {p0, p2}, Ld/i/i/b;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p3, p0, Ld/b/d/i/j$a;->b:Landroid/view/ActionProvider;

    return-void
.end method
