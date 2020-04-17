.class public Ld/m/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/m/a/f0$b;,
        Ld/m/a/f0$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:Ld/m/a/k0;

.field public static final c:Ld/m/a/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ld/m/a/f0;->a:[I

    .line 2
    new-instance v0, Ld/m/a/g0;

    invoke-direct {v0}, Ld/m/a/g0;-><init>()V

    sput-object v0, Ld/m/a/f0;->b:Ld/m/a/k0;

    :try_start_0
    const-string v0, "d.x.d"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/k0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    sput-object v0, Ld/m/a/f0;->c:Ld/m/a/k0;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method public static a(Ld/f/a;Ld/m/a/f0$b;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/f/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ld/m/a/f0$b;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 197
    iget-object p1, p1, Ld/m/a/f0$b;->c:Ld/m/a/a;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 198
    iget-object p2, p1, Ld/m/a/y;->n:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 199
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 200
    iget-object p1, p1, Ld/m/a/y;->n:Ljava/util/ArrayList;

    .line 201
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ld/m/a/y;->o:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 203
    :goto_0
    invoke-virtual {p0, p1}, Ld/f/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ld/m/a/k0;Ld/f/a;Ljava/lang/Object;Ld/m/a/f0$b;)Ld/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/m/a/k0;",
            "Ld/f/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ld/m/a/f0$b;",
            ")",
            "Ld/f/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p3, Ld/m/a/f0$b;->a:Landroidx/fragment/app/Fragment;

    .line 179
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 180
    invoke-virtual {p1}, Ld/f/h;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_5

    if-nez v1, :cond_0

    goto :goto_2

    .line 181
    :cond_0
    new-instance p2, Ld/f/a;

    invoke-direct {p2}, Ld/f/a;-><init>()V

    .line 182
    invoke-virtual {p0, p2, v1}, Ld/m/a/k0;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 183
    iget-object p0, p3, Ld/m/a/f0$b;->c:Ld/m/a/a;

    .line 184
    iget-boolean p3, p3, Ld/m/a/f0$b;->b:Z

    if-eqz p3, :cond_1

    .line 185
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ld/i/a/k;

    .line 186
    iget-object p0, p0, Ld/m/a/y;->n:Ljava/util/ArrayList;

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld/i/a/k;

    .line 188
    iget-object p0, p0, Ld/m/a/y;->o:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 189
    invoke-static {p2, p0}, Ld/f/g;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 190
    invoke-virtual {p1}, Ld/f/a;->values()Ljava/util/Collection;

    move-result-object p0

    .line 191
    invoke-static {p2, p0}, Ld/f/g;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 192
    :cond_2
    iget p0, p1, Ld/f/h;->z:I

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_4

    .line 193
    invoke-virtual {p1, p0}, Ld/f/h;->e(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 194
    invoke-virtual {p2, p3}, Ld/f/h;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 195
    invoke-virtual {p1, p0}, Ld/f/h;->d(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object p2

    .line 196
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ld/f/h;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Ld/m/a/k0;
    .locals 2

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 151
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 152
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 153
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 155
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 157
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    .line 159
    :cond_6
    sget-object p0, Ld/m/a/f0;->b:Ld/m/a/k0;

    if-eqz p0, :cond_7

    invoke-static {p0, v0}, Ld/m/a/f0;->a(Ld/m/a/k0;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 160
    sget-object p0, Ld/m/a/f0;->b:Ld/m/a/k0;

    return-object p0

    .line 161
    :cond_7
    sget-object p0, Ld/m/a/f0;->c:Ld/m/a/k0;

    if-eqz p0, :cond_8

    invoke-static {p0, v0}, Ld/m/a/f0;->a(Ld/m/a/k0;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 162
    sget-object p0, Ld/m/a/f0;->c:Ld/m/a/k0;

    return-object p0

    .line 163
    :cond_8
    sget-object p0, Ld/m/a/f0;->b:Ld/m/a/k0;

    if-nez p0, :cond_9

    sget-object p0, Ld/m/a/f0;->c:Ld/m/a/k0;

    if-nez p0, :cond_9

    return-object p1

    .line 164
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ld/m/a/k0;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 167
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 169
    :goto_0
    invoke-virtual {p0, p1}, Ld/m/a/k0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Ld/m/a/k0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ld/m/a/k0;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 171
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 173
    :goto_0
    invoke-virtual {p0, p1}, Ld/m/a/k0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ld/m/a/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 224
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 226
    invoke-virtual {p0, p2, p1, p3}, Ld/m/a/k0;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Ld/m/a/k0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static a(Ld/m/a/k0;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/m/a/k0;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p0, v0, p2}, Ld/m/a/k0;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 217
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 218
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 219
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {p0, p1, v0}, Ld/m/a/k0;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/f/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Ld/f/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 212
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld/i/a/k;

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld/i/a/k;

    :goto_0
    return-void
.end method

.method public static a(Ld/m/a/a;Ld/m/a/y$a;Landroid/util/SparseArray;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/m/a/a;",
            "Ld/m/a/y$a;",
            "Landroid/util/SparseArray<",
            "Ld/m/a/f0$b;",
            ">;ZZ)V"
        }
    .end annotation

    .line 228
    iget-object v0, p1, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget v1, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 230
    sget-object v2, Ld/m/a/f0;->a:[I

    iget p1, p1, Ld/m/a/y$a;->a:I

    aget p1, v2, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Ld/m/a/y$a;->a:I

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    const/4 v4, 0x4

    if-eq p1, v4, :cond_5

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    const/4 v4, 0x6

    if-eq p1, v4, :cond_7

    const/4 v4, 0x7

    if-eq p1, v4, :cond_a

    const/4 p1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_3
    if-eqz p4, :cond_4

    .line 231
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_c

    goto :goto_3

    .line 232
    :cond_4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_6

    .line 233
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_9

    goto :goto_1

    .line 234
    :cond_6
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_9

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    .line 235
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_9

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    iget p1, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_9

    goto :goto_1

    .line 237
    :cond_8
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_9

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    move v5, p1

    const/4 p1, 0x1

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_b

    .line 238
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_4

    .line 239
    :cond_b
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_4
    const/4 v4, 0x1

    :goto_5
    move v3, p1

    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 240
    :goto_6
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/m/a/f0$b;

    if-eqz v3, :cond_e

    if-nez v6, :cond_d

    .line 241
    new-instance v3, Ld/m/a/f0$b;

    invoke-direct {v3}, Ld/m/a/f0$b;-><init>()V

    .line 242
    invoke-virtual {p2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v3

    .line 243
    :cond_d
    iput-object v0, v6, Ld/m/a/f0$b;->a:Landroidx/fragment/app/Fragment;

    .line 244
    iput-boolean p3, v6, Ld/m/a/f0$b;->b:Z

    .line 245
    iput-object p0, v6, Ld/m/a/f0$b;->c:Ld/m/a/a;

    :cond_e
    const/4 v3, 0x0

    if-nez p4, :cond_10

    if-eqz v4, :cond_10

    if-eqz v6, :cond_f

    .line 246
    iget-object v4, v6, Ld/m/a/f0$b;->d:Landroidx/fragment/app/Fragment;

    if-ne v4, v0, :cond_f

    .line 247
    iput-object v3, v6, Ld/m/a/f0$b;->d:Landroidx/fragment/app/Fragment;

    .line 248
    :cond_f
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    .line 249
    iget v7, v0, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v7, v2, :cond_10

    iget v7, v4, Ld/m/a/p;->m:I

    if-lt v7, v2, :cond_10

    iget-boolean v7, p0, Ld/m/a/y;->p:Z

    if-nez v7, :cond_10

    .line 250
    invoke-virtual {v4, v0}, Ld/m/a/p;->l(Landroidx/fragment/app/Fragment;)V

    .line 251
    invoke-virtual {v4, v0, v2}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;I)V

    :cond_10
    if-eqz v5, :cond_13

    if-eqz v6, :cond_11

    .line 252
    iget-object v2, v6, Ld/m/a/f0$b;->d:Landroidx/fragment/app/Fragment;

    if-nez v2, :cond_13

    :cond_11
    if-nez v6, :cond_12

    .line 253
    new-instance v2, Ld/m/a/f0$b;

    invoke-direct {v2}, Ld/m/a/f0$b;-><init>()V

    .line 254
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v2

    .line 255
    :cond_12
    iput-object v0, v6, Ld/m/a/f0$b;->d:Landroidx/fragment/app/Fragment;

    .line 256
    iput-boolean p3, v6, Ld/m/a/f0$b;->e:Z

    .line 257
    iput-object p0, v6, Ld/m/a/f0$b;->f:Ld/m/a/a;

    :cond_13
    if-nez p4, :cond_14

    if-eqz p1, :cond_14

    if-eqz v6, :cond_14

    .line 258
    iget-object p0, v6, Ld/m/a/f0$b;->a:Landroidx/fragment/app/Fragment;

    if-ne p0, v0, :cond_14

    .line 259
    iput-object v3, v6, Ld/m/a/f0$b;->a:Landroidx/fragment/app/Fragment;

    :cond_14
    return-void
.end method

.method public static a(Ld/m/a/k0;Ljava/lang/Object;Ljava/lang/Object;Ld/f/a;ZLd/m/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/m/a/k0;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ld/f/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Ld/m/a/a;",
            ")V"
        }
    .end annotation

    .line 204
    iget-object v0, p5, Ld/m/a/y;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 206
    iget-object p4, p5, Ld/m/a/y;->o:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Ld/m/a/y;->n:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 209
    :goto_0
    invoke-virtual {p3, p4}, Ld/f/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 210
    invoke-virtual {p0, p1, p3}, Ld/m/a/k0;->c(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 211
    invoke-virtual {p0, p2, p3}, Ld/m/a/k0;->c(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static a(Ld/m/a/p;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLd/m/a/f0$a;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/m/a/p;",
            "Ljava/util/ArrayList<",
            "Ld/m/a/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Ld/m/a/f0$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 1
    iget v5, v0, Ld/m/a/p;->m:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v7, p3

    :goto_0
    const/4 v8, 0x0

    if-ge v7, v3, :cond_4

    .line 3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ld/m/a/a;

    .line 4
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5
    iget-object v8, v9, Ld/m/a/a;->r:Ld/m/a/p;

    iget-object v8, v8, Ld/m/a/p;->o:Ld/m/a/i;

    invoke-virtual {v8}, Ld/m/a/i;->a()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    iget-object v8, v9, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_1
    if-ltz v8, :cond_3

    .line 7
    iget-object v10, v9, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld/m/a/y$a;

    .line 8
    invoke-static {v9, v10, v5, v6, v4}, Ld/m/a/f0;->a(Ld/m/a/a;Ld/m/a/y$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v10, v9, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_3

    .line 10
    iget-object v12, v9, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ld/m/a/y$a;

    .line 11
    invoke-static {v9, v12, v5, v8, v4}, Ld/m/a/f0;->a(Ld/m/a/a;Ld/m/a/y$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_32

    .line 13
    new-instance v7, Landroid/view/View;

    iget-object v9, v0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 14
    iget-object v9, v9, Ld/m/a/m;->y:Landroid/content/Context;

    .line 15
    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_32

    .line 17
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 18
    new-instance v13, Ld/f/a;

    invoke-direct {v13}, Ld/f/a;-><init>()V

    add-int/lit8 v10, v3, -0x1

    move/from16 v12, p3

    :goto_5
    if-lt v10, v12, :cond_9

    .line 19
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ld/m/a/a;

    .line 20
    invoke-virtual {v11, v9}, Ld/m/a/a;->b(I)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_9

    .line 21
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 22
    iget-object v6, v11, Ld/m/a/y;->n:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 23
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v16, :cond_6

    .line 24
    iget-object v8, v11, Ld/m/a/y;->n:Ljava/util/ArrayList;

    .line 25
    iget-object v11, v11, Ld/m/a/y;->o:Ljava/util/ArrayList;

    goto :goto_6

    .line 26
    :cond_6
    iget-object v8, v11, Ld/m/a/y;->n:Ljava/util/ArrayList;

    .line 27
    iget-object v11, v11, Ld/m/a/y;->o:Ljava/util/ArrayList;

    move-object/from16 v38, v11

    move-object v11, v8

    move-object/from16 v8, v38

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v6, :cond_8

    .line 28
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    .line 30
    invoke-virtual {v13, v3}, Ld/f/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 31
    invoke-virtual {v13, v2, v6}, Ld/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 32
    :cond_7
    invoke-virtual {v13, v2, v3}, Ld/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v6, v17

    goto :goto_7

    :cond_8
    :goto_9
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_5

    .line 33
    :cond_9
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/m/a/f0$b;

    if-eqz v4, :cond_21

    .line 34
    iget-object v3, v0, Ld/m/a/p;->o:Ld/m/a/i;

    invoke-virtual {v3}, Ld/m/a/i;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 35
    iget-object v3, v0, Ld/m/a/p;->o:Ld/m/a/i;

    invoke-virtual {v3, v9}, Ld/m/a/i;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_b

    :goto_b
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    goto/16 :goto_16

    .line 36
    :cond_b
    iget-object v6, v1, Ld/m/a/f0$b;->a:Landroidx/fragment/app/Fragment;

    .line 37
    iget-object v8, v1, Ld/m/a/f0$b;->d:Landroidx/fragment/app/Fragment;

    .line 38
    invoke-static {v8, v6}, Ld/m/a/f0;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Ld/m/a/k0;

    move-result-object v9

    if-nez v9, :cond_c

    goto :goto_b

    .line 39
    :cond_c
    iget-boolean v10, v1, Ld/m/a/f0$b;->b:Z

    .line 40
    iget-boolean v11, v1, Ld/m/a/f0$b;->e:Z

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v5

    .line 43
    invoke-static {v9, v6, v10}, Ld/m/a/f0;->a(Ld/m/a/k0;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 44
    invoke-static {v9, v8, v11}, Ld/m/a/f0;->b(Ld/m/a/k0;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v11

    .line 45
    iget-object v12, v1, Ld/m/a/f0$b;->a:Landroidx/fragment/app/Fragment;

    move/from16 v32, v14

    .line 46
    iget-object v14, v1, Ld/m/a/f0$b;->d:Landroidx/fragment/app/Fragment;

    move/from16 v33, v15

    if-eqz v12, :cond_d

    .line 47
    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v15

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    if-eqz v12, :cond_16

    if-nez v14, :cond_e

    goto/16 :goto_f

    .line 48
    :cond_e
    iget-boolean v0, v1, Ld/m/a/f0$b;->b:Z

    .line 49
    invoke-virtual {v13}, Ld/f/h;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_f

    move/from16 v34, v10

    const/4 v15, 0x0

    goto :goto_c

    .line 50
    :cond_f
    invoke-static {v9, v12, v14, v0}, Ld/m/a/f0;->a(Ld/m/a/k0;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    move/from16 v34, v10

    .line 51
    :goto_c
    invoke-static {v9, v13, v15, v1}, Ld/m/a/f0;->b(Ld/m/a/k0;Ld/f/a;Ljava/lang/Object;Ld/m/a/f0$b;)Ld/f/a;

    move-result-object v10

    move-object/from16 v35, v6

    .line 52
    invoke-static {v9, v13, v15, v1}, Ld/m/a/f0;->a(Ld/m/a/k0;Ld/f/a;Ljava/lang/Object;Ld/m/a/f0$b;)Ld/f/a;

    move-result-object v6

    .line 53
    invoke-virtual {v13}, Ld/f/h;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_12

    if-eqz v10, :cond_10

    .line 54
    invoke-virtual {v10}, Ld/f/h;->clear()V

    :cond_10
    if-eqz v6, :cond_11

    .line 55
    invoke-virtual {v6}, Ld/f/h;->clear()V

    :cond_11
    const/4 v15, 0x0

    goto :goto_d

    :cond_12
    move-object/from16 v16, v15

    .line 56
    invoke-virtual {v13}, Ld/f/a;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 57
    invoke-static {v4, v10, v15}, Ld/m/a/f0;->a(Ljava/util/ArrayList;Ld/f/a;Ljava/util/Collection;)V

    .line 58
    invoke-virtual {v13}, Ld/f/a;->values()Ljava/util/Collection;

    move-result-object v15

    .line 59
    invoke-static {v2, v6, v15}, Ld/m/a/f0;->a(Ljava/util/ArrayList;Ld/f/a;Ljava/util/Collection;)V

    move-object/from16 v15, v16

    :goto_d
    if-nez v5, :cond_13

    if-nez v11, :cond_13

    if-nez v15, :cond_13

    move-object/from16 v37, v2

    goto :goto_10

    :cond_13
    move-object/from16 v36, v13

    const/4 v13, 0x1

    .line 60
    invoke-static {v12, v14, v0, v10, v13}, Ld/m/a/f0;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/f/a;Z)V

    if-eqz v15, :cond_15

    .line 61
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v9, v15, v7, v4}, Ld/m/a/k0;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 63
    iget-boolean v13, v1, Ld/m/a/f0$b;->e:Z

    move-object/from16 v37, v2

    .line 64
    iget-object v2, v1, Ld/m/a/f0$b;->f:Ld/m/a/a;

    move-object/from16 v16, v9

    move-object/from16 v17, v15

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move/from16 v20, v13

    move-object/from16 v21, v2

    .line 65
    invoke-static/range {v16 .. v21}, Ld/m/a/f0;->a(Ld/m/a/k0;Ljava/lang/Object;Ljava/lang/Object;Ld/f/a;ZLd/m/a/a;)V

    .line 66
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 67
    invoke-static {v6, v1, v5, v0}, Ld/m/a/f0;->a(Ld/f/a;Ld/m/a/f0$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 68
    invoke-virtual {v9, v5, v2}, Ld/m/a/k0;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_14
    move-object/from16 v27, v1

    move-object/from16 v29, v2

    goto :goto_e

    :cond_15
    move-object/from16 v37, v2

    const/16 v27, 0x0

    const/16 v29, 0x0

    .line 69
    :goto_e
    new-instance v1, Ld/m/a/d0;

    move-object/from16 v22, v1

    move-object/from16 v23, v12

    move-object/from16 v24, v14

    move/from16 v25, v0

    move-object/from16 v26, v6

    move-object/from16 v28, v9

    invoke-direct/range {v22 .. v29}, Ld/m/a/d0;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/f/a;Landroid/view/View;Ld/m/a/k0;Landroid/graphics/Rect;)V

    invoke-static {v3, v1}, Ld/i/i/l;->a(Landroid/view/View;Ljava/lang/Runnable;)Ld/i/i/l;

    goto :goto_11

    :cond_16
    :goto_f
    move-object/from16 v37, v2

    move-object/from16 v35, v6

    move/from16 v34, v10

    :goto_10
    move-object/from16 v36, v13

    const/4 v15, 0x0

    :goto_11
    if-nez v5, :cond_17

    if-nez v15, :cond_17

    if-nez v11, :cond_17

    goto/16 :goto_16

    .line 70
    :cond_17
    invoke-static {v9, v11, v8, v4, v7}, Ld/m/a/f0;->a(Ld/m/a/k0;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    .line 71
    invoke-static {v9, v5, v1, v2, v7}, Ld/m/a/f0;->a(Ld/m/a/k0;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v10, 0x4

    .line 72
    invoke-static {v6, v10}, Ld/m/a/f0;->a(Ljava/util/ArrayList;I)V

    move-object/from16 v16, v9

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object/from16 v19, v15

    move-object/from16 v20, v1

    move/from16 v21, v34

    .line 73
    invoke-static/range {v16 .. v21}, Ld/m/a/f0;->a(Ld/m/a/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v8, :cond_19

    if-eqz v0, :cond_19

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_18

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_19

    .line 75
    :cond_18
    new-instance v10, Ld/i/e/a;

    invoke-direct {v10}, Ld/i/e/a;-><init>()V

    .line 76
    move-object/from16 v12, p6

    check-cast v12, Ld/m/a/p$b;

    invoke-virtual {v12, v8, v10}, Ld/m/a/p$b;->b(Landroidx/fragment/app/Fragment;Ld/i/e/a;)V

    .line 77
    new-instance v13, Ld/m/a/z;

    invoke-direct {v13, v12, v8, v10}, Ld/m/a/z;-><init>(Ld/m/a/f0$a;Landroidx/fragment/app/Fragment;Ld/i/e/a;)V

    invoke-virtual {v9, v8, v1, v10, v13}, Ld/m/a/k0;->a(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Ld/i/e/a;Ljava/lang/Runnable;)V

    :cond_19
    if-eqz v1, :cond_20

    if-eqz v8, :cond_1a

    if-eqz v11, :cond_1a

    .line 78
    iget-boolean v10, v8, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v10, :cond_1a

    iget-boolean v10, v8, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v10, :cond_1a

    iget-boolean v10, v8, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v10, :cond_1a

    const/4 v10, 0x1

    .line 79
    invoke-virtual {v8, v10}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 80
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v10

    .line 81
    invoke-virtual {v9, v11, v10, v0}, Ld/m/a/k0;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 82
    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 83
    new-instance v10, Ld/m/a/a0;

    invoke-direct {v10, v0}, Ld/m/a/a0;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v8, v10}, Ld/i/i/l;->a(Landroid/view/View;Ljava/lang/Runnable;)Ld/i/i/l;

    .line 84
    :cond_1a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v10, :cond_1b

    .line 86
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 87
    invoke-static {v13}, Ld/i/i/n;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 88
    invoke-virtual {v13, v14}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_1b
    move-object/from16 v22, v9

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v11

    move-object/from16 v27, v0

    move-object/from16 v28, v15

    move-object/from16 v29, v2

    .line 89
    invoke-virtual/range {v22 .. v29}, Ld/m/a/k0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 90
    invoke-virtual {v9, v3, v1}, Ld/m/a/k0;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v0, :cond_1f

    .line 93
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 94
    invoke-static {v10}, Ld/i/i/n;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    .line 95
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_1c

    move-object/from16 v13, v36

    goto :goto_15

    :cond_1c
    const/4 v14, 0x0

    .line 96
    invoke-virtual {v10, v14}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    move-object/from16 v13, v36

    .line 97
    invoke-virtual {v13, v11}, Ld/f/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v0, :cond_1e

    .line 98
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 99
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 100
    invoke-virtual {v10, v11}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_15

    :cond_1d
    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x0

    goto :goto_14

    :cond_1e
    :goto_15
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v36, v13

    goto :goto_13

    .line 101
    :cond_1f
    new-instance v5, Ld/m/a/h0;

    move-object/from16 v22, v5

    move-object/from16 v23, v9

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v8

    move-object/from16 v27, v4

    move-object/from16 v28, v1

    invoke-direct/range {v22 .. v28}, Ld/m/a/h0;-><init>(Ld/m/a/k0;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3, v5}, Ld/i/i/l;->a(Landroid/view/View;Ljava/lang/Runnable;)Ld/i/i/l;

    const/4 v0, 0x0

    .line 102
    invoke-static {v6, v0}, Ld/m/a/f0;->a(Ljava/util/ArrayList;I)V

    .line 103
    invoke-virtual {v9, v15, v4, v2}, Ld/m/a/k0;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_17

    :cond_20
    :goto_16
    const/4 v0, 0x0

    :goto_17
    move/from16 v27, v32

    move/from16 v30, v33

    goto/16 :goto_1f

    :cond_21
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    const/4 v0, 0x0

    move-object/from16 v2, p0

    .line 104
    iget-object v3, v2, Ld/m/a/p;->o:Ld/m/a/i;

    invoke-virtual {v3}, Ld/m/a/i;->a()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 105
    iget-object v3, v2, Ld/m/a/p;->o:Ld/m/a/i;

    invoke-virtual {v3, v9}, Ld/m/a/i;->a(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/view/ViewGroup;

    move-object v3, v14

    goto :goto_18

    :cond_22
    const/4 v3, 0x0

    :goto_18
    if-nez v3, :cond_23

    goto :goto_17

    .line 106
    :cond_23
    iget-object v4, v1, Ld/m/a/f0$b;->a:Landroidx/fragment/app/Fragment;

    .line 107
    iget-object v5, v1, Ld/m/a/f0$b;->d:Landroidx/fragment/app/Fragment;

    .line 108
    invoke-static {v5, v4}, Ld/m/a/f0;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Ld/m/a/k0;

    move-result-object v6

    if-nez v6, :cond_24

    goto :goto_17

    .line 109
    :cond_24
    iget-boolean v8, v1, Ld/m/a/f0$b;->b:Z

    .line 110
    iget-boolean v9, v1, Ld/m/a/f0$b;->e:Z

    .line 111
    invoke-static {v6, v4, v8}, Ld/m/a/f0;->a(Ld/m/a/k0;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 112
    invoke-static {v6, v5, v9}, Ld/m/a/f0;->b(Ld/m/a/k0;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    .line 113
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v9, v1, Ld/m/a/f0$b;->a:Landroidx/fragment/app/Fragment;

    .line 116
    iget-object v15, v1, Ld/m/a/f0$b;->d:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_2b

    if-nez v15, :cond_25

    goto/16 :goto_1c

    .line 117
    :cond_25
    iget-boolean v14, v1, Ld/m/a/f0$b;->b:Z

    .line 118
    invoke-virtual {v13}, Ld/f/h;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_26

    const/4 v0, 0x0

    goto :goto_19

    .line 119
    :cond_26
    invoke-static {v6, v9, v15, v14}, Ld/m/a/f0;->a(Ld/m/a/k0;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    .line 120
    :goto_19
    invoke-static {v6, v13, v0, v1}, Ld/m/a/f0;->b(Ld/m/a/k0;Ld/f/a;Ljava/lang/Object;Ld/m/a/f0$b;)Ld/f/a;

    move-result-object v2

    .line 121
    invoke-virtual {v13}, Ld/f/h;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_27

    const/4 v0, 0x0

    goto :goto_1a

    :cond_27
    move-object/from16 v16, v0

    .line 122
    invoke-virtual {v2}, Ld/f/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v16

    :goto_1a
    if-nez v8, :cond_28

    if-nez v12, :cond_28

    if-nez v0, :cond_28

    goto/16 :goto_1c

    :cond_28
    move-object/from16 v22, v4

    const/4 v4, 0x1

    .line 123
    invoke-static {v9, v15, v14, v2, v4}, Ld/m/a/f0;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/f/a;Z)V

    if-eqz v0, :cond_29

    .line 124
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 125
    invoke-virtual {v6, v0, v7, v11}, Ld/m/a/k0;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v20, v9

    .line 126
    iget-boolean v9, v1, Ld/m/a/f0$b;->e:Z

    move-object/from16 v21, v10

    .line 127
    iget-object v10, v1, Ld/m/a/f0$b;->f:Ld/m/a/a;

    move/from16 v23, v14

    move-object v14, v6

    move-object/from16 v24, v15

    move-object v15, v0

    move-object/from16 v16, v12

    move-object/from16 v17, v2

    move/from16 v18, v9

    move-object/from16 v19, v10

    .line 128
    invoke-static/range {v14 .. v19}, Ld/m/a/f0;->a(Ld/m/a/k0;Ljava/lang/Object;Ljava/lang/Object;Ld/f/a;ZLd/m/a/a;)V

    if-eqz v8, :cond_2a

    .line 129
    invoke-virtual {v6, v8, v4}, Ld/m/a/k0;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_1b

    :cond_29
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v14

    move-object/from16 v24, v15

    const/4 v4, 0x0

    .line 130
    :cond_2a
    :goto_1b
    new-instance v2, Ld/m/a/e0;

    move-object/from16 v16, v20

    move-object v9, v2

    move-object/from16 v15, v21

    move-object v10, v6

    move-object v14, v11

    move-object v11, v13

    move-object/from16 v25, v5

    move-object v5, v12

    move-object v12, v0

    move-object/from16 v26, v0

    move-object v0, v13

    move-object v13, v1

    move-object/from16 v28, v14

    move/from16 v27, v32

    const/16 v29, 0x0

    move-object v14, v15

    move-object/from16 v32, v15

    move/from16 v30, v33

    move-object v15, v7

    move-object/from16 v17, v24

    move/from16 v18, v23

    move-object/from16 v19, v28

    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-direct/range {v9 .. v21}, Ld/m/a/e0;-><init>(Ld/m/a/k0;Ld/f/a;Ljava/lang/Object;Ld/m/a/f0$b;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v3, v2}, Ld/i/i/l;->a(Landroid/view/View;Ljava/lang/Runnable;)Ld/i/i/l;

    move-object/from16 v20, v26

    goto :goto_1d

    :cond_2b
    :goto_1c
    move-object/from16 v22, v4

    move-object/from16 v25, v5

    move-object/from16 v28, v11

    move-object v5, v12

    move-object v0, v13

    move/from16 v27, v32

    move/from16 v30, v33

    const/16 v29, 0x0

    move-object/from16 v32, v10

    move-object/from16 v20, v29

    :goto_1d
    if-nez v8, :cond_2c

    if-nez v20, :cond_2c

    if-nez v5, :cond_2c

    goto/16 :goto_1f

    :cond_2c
    move-object/from16 v2, v25

    move-object/from16 v4, v28

    .line 131
    invoke-static {v6, v5, v2, v4, v7}, Ld/m/a/f0;->a(Ld/m/a/k0;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_2e

    .line 132
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2d

    goto :goto_1e

    :cond_2d
    move-object/from16 v29, v5

    .line 133
    :cond_2e
    :goto_1e
    invoke-virtual {v6, v8, v7}, Ld/m/a/k0;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 134
    iget-boolean v1, v1, Ld/m/a/f0$b;->b:Z

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v16, v29

    move-object/from16 v17, v20

    move-object/from16 v18, v22

    move/from16 v19, v1

    invoke-static/range {v14 .. v19}, Ld/m/a/f0;->a(Ld/m/a/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_30

    if-eqz v23, :cond_30

    .line 135
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_2f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 136
    :cond_2f
    new-instance v4, Ld/i/e/a;

    invoke-direct {v4}, Ld/i/e/a;-><init>()V

    .line 137
    move-object/from16 v5, p6

    check-cast v5, Ld/m/a/p$b;

    invoke-virtual {v5, v2, v4}, Ld/m/a/p$b;->b(Landroidx/fragment/app/Fragment;Ld/i/e/a;)V

    .line 138
    new-instance v9, Ld/m/a/b0;

    invoke-direct {v9, v5, v2, v4}, Ld/m/a/b0;-><init>(Ld/m/a/f0$a;Landroidx/fragment/app/Fragment;Ld/i/e/a;)V

    invoke-virtual {v6, v2, v1, v4, v9}, Ld/m/a/k0;->a(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Ld/i/e/a;Ljava/lang/Runnable;)V

    :cond_30
    if-eqz v1, :cond_31

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    move-object v15, v1

    move-object/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v18, v29

    move-object/from16 v19, v23

    move-object/from16 v21, v32

    .line 140
    invoke-virtual/range {v14 .. v21}, Ld/m/a/k0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 141
    new-instance v4, Ld/m/a/c0;

    move-object v9, v4

    move-object v10, v8

    move-object v11, v6

    move-object v12, v7

    move-object/from16 v13, v22

    move-object/from16 v14, v32

    move-object v15, v2

    move-object/from16 v16, v23

    move-object/from16 v17, v29

    invoke-direct/range {v9 .. v17}, Ld/m/a/c0;-><init>(Ljava/lang/Object;Ld/m/a/k0;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Ld/i/i/l;->a(Landroid/view/View;Ljava/lang/Runnable;)Ld/i/i/l;

    .line 142
    new-instance v2, Ld/m/a/i0;

    move-object/from16 v4, v32

    invoke-direct {v2, v6, v4, v0}, Ld/m/a/i0;-><init>(Ld/m/a/k0;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v2}, Ld/i/i/l;->a(Landroid/view/View;Ljava/lang/Runnable;)Ld/i/i/l;

    .line 143
    invoke-virtual {v6, v3, v1}, Ld/m/a/k0;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 144
    new-instance v1, Ld/m/a/j0;

    invoke-direct {v1, v6, v4, v0}, Ld/m/a/j0;-><init>(Ld/m/a/k0;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v1}, Ld/i/i/l;->a(Landroid/view/View;Ljava/lang/Runnable;)Ld/i/i/l;

    :cond_31
    :goto_1f
    add-int/lit8 v14, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v15, v30

    move-object/from16 v5, v31

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_32
    return-void
.end method

.method public static a(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 222
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 223
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ld/f/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ld/f/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    iget v0, p1, Ld/f/h;->z:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 175
    invoke-virtual {p1, v0}, Ld/f/h;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 176
    invoke-static {v1}, Ld/i/i/n;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ld/m/a/k0;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/m/a/k0;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 166
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ld/m/a/k0;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ld/m/a/k0;Ld/f/a;Ljava/lang/Object;Ld/m/a/f0$b;)Ld/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/m/a/k0;",
            "Ld/f/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ld/m/a/f0$b;",
            ")",
            "Ld/f/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ld/f/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object p2, p3, Ld/m/a/f0$b;->d:Landroidx/fragment/app/Fragment;

    .line 6
    new-instance v0, Ld/f/a;

    invoke-direct {v0}, Ld/f/a;-><init>()V

    .line 7
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ld/m/a/k0;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 8
    iget-object p0, p3, Ld/m/a/f0$b;->f:Ld/m/a/a;

    .line 9
    iget-boolean p3, p3, Ld/m/a/f0$b;->e:Z

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld/i/a/k;

    .line 11
    iget-object p0, p0, Ld/m/a/y;->o:Ljava/util/ArrayList;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ld/i/a/k;

    .line 13
    iget-object p0, p0, Ld/m/a/y;->n:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 14
    invoke-static {v0, p0}, Ld/f/g;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 15
    :cond_2
    invoke-virtual {v0}, Ld/f/a;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 16
    invoke-static {p1, p0}, Ld/f/g;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    return-object v0

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ld/f/h;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ld/m/a/k0;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Ld/m/a/k0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
