.class public final Ld/i/i/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/i/i/n;->a(Landroid/view/View;Ld/i/i/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/i/i/k;


# direct methods
.method public constructor <init>(Ld/i/i/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/i/i/n$a;->a:Ld/i/i/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-static {p2}, Ld/i/i/w;->a(Landroid/view/WindowInsets;)Ld/i/i/w;

    move-result-object p2

    .line 2
    iget-object v0, p0, Ld/i/i/n$a;->a:Ld/i/i/k;

    invoke-interface {v0, p1, p2}, Ld/i/i/k;->a(Landroid/view/View;Ld/i/i/w;)Ld/i/i/w;

    move-result-object p1

    .line 3
    iget-object p1, p1, Ld/i/i/w;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method
