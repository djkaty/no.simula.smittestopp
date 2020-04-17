.class public Ld/b/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController$b;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ld/b/a/g;->a(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Landroidx/appcompat/app/AlertController$b;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, v0}, Ld/b/a/g;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ld/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    .line 5
    iput v0, p0, Ld/b/a/g$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Ld/b/a/g;
    .locals 10

    .line 1
    new-instance v0, Ld/b/a/g;

    iget-object v1, p0, Ld/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget v2, p0, Ld/b/a/g$a;->b:I

    invoke-direct {v0, v1, v2}, Ld/b/a/g;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, Ld/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v2, v0, Ld/b/a/g;->z:Landroidx/appcompat/app/AlertController;

    .line 3
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->g:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 4
    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 6
    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 7
    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 10
    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    .line 11
    iput v6, v2, Landroidx/appcompat/app/AlertController;->B:I

    .line 12
    iget-object v7, v2, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 13
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v6, v2, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_2
    iget v3, v1, Landroidx/appcompat/app/AlertController$b;->c:I

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->a(I)V

    .line 17
    :cond_3
    iget v3, v1, Landroidx/appcompat/app/AlertController$b;->e:I

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    .line 18
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 19
    iget-object v7, v2, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v3, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 20
    iget v3, v6, Landroid/util/TypedValue;->resourceId:I

    .line 21
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->a(I)V

    goto :goto_0

    .line 22
    :cond_4
    throw v4

    .line 23
    :cond_5
    :goto_0
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->l:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_a

    .line 24
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    iget v6, v2, Landroidx/appcompat/app/AlertController;->L:I

    .line 25
    invoke-virtual {v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 26
    iget-boolean v6, v1, Landroidx/appcompat/app/AlertController$b;->o:Z

    if-eqz v6, :cond_6

    .line 27
    iget v6, v2, Landroidx/appcompat/app/AlertController;->N:I

    goto :goto_1

    .line 28
    :cond_6
    iget v6, v2, Landroidx/appcompat/app/AlertController;->O:I

    .line 29
    :goto_1
    iget-object v7, v1, Landroidx/appcompat/app/AlertController$b;->l:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_7

    goto :goto_2

    .line 30
    :cond_7
    new-instance v7, Landroidx/appcompat/app/AlertController$d;

    iget-object v8, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    const v9, 0x1020014

    invoke-direct {v7, v8, v6, v9, v4}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 31
    :goto_2
    iput-object v7, v2, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    .line 32
    iget v4, v1, Landroidx/appcompat/app/AlertController$b;->p:I

    iput v4, v2, Landroidx/appcompat/app/AlertController;->I:I

    .line 33
    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->m:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_8

    .line 34
    new-instance v4, Ld/b/a/f;

    invoke-direct {v4, v1, v2}, Ld/b/a/f;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 35
    :cond_8
    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->o:Z

    if-eqz v1, :cond_9

    .line 36
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 37
    :cond_9
    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    .line 38
    :cond_a
    iget-object v1, p0, Ld/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->h:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 39
    iget-object v1, p0, Ld/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->h:Z

    if-eqz v1, :cond_b

    .line 40
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    :cond_b
    iget-object v1, p0, Ld/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->i:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 42
    iget-object v1, p0, Ld/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 43
    iget-object v1, p0, Ld/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->k:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_c

    .line 44
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_c
    return-object v0
.end method
