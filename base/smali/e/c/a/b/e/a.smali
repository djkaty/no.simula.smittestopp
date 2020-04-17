.class public Le/c/a/b/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic x:Landroid/view/View;

.field public final synthetic y:I

.field public final synthetic z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/e/a;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Le/c/a/b/e/a;->x:Landroid/view/View;

    iput p3, p0, Le/c/a/b/e/a;->y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/a/b/e/a;->z:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Le/c/a/b/e/a;->x:Landroid/view/View;

    iget v2, p0, Le/c/a/b/e/a;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;I)V

    return-void
.end method
