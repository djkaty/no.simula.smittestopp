.class public Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/app/Activity;

.field public c:Ld/s/m;

.field public d:Ld/s/j;

.field public e:Landroid/os/Bundle;

.field public f:[Landroid/os/Parcelable;

.field public g:Z

.field public final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ld/s/e;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ld/o/l;

.field public j:Ld/s/g;

.field public final k:Ld/s/q;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/navigation/NavController$b;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ld/o/k;

.field public final n:Ld/a/b;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 3
    new-instance v0, Ld/s/q;

    invoke-direct {v0}, Ld/s/q;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->k:Ld/s/q;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v0, Landroidx/navigation/NavController$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$1;-><init>(Landroidx/navigation/NavController;)V

    iput-object v0, p0, Landroidx/navigation/NavController;->m:Ld/o/k;

    .line 6
    new-instance v0, Landroidx/navigation/NavController$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/navigation/NavController$a;-><init>(Landroidx/navigation/NavController;Z)V

    iput-object v0, p0, Landroidx/navigation/NavController;->n:Ld/a/b;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/navigation/NavController;->o:Z

    .line 8
    iput-object p1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 9
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 10
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    goto :goto_1

    .line 12
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/navigation/NavController;->k:Ld/s/q;

    new-instance v0, Ld/s/k;

    invoke-direct {v0, p1}, Ld/s/k;-><init>(Ld/s/q;)V

    invoke-virtual {p1, v0}, Ld/s/q;->a(Ld/s/p;)Ld/s/p;

    .line 14
    iget-object p1, p0, Landroidx/navigation/NavController;->k:Ld/s/q;

    new-instance v0, Ld/s/a;

    iget-object v1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ld/s/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Ld/s/q;->a(Ld/s/p;)Ld/s/p;

    return-void
.end method


# virtual methods
.method public a(I)Ld/s/i;
    .locals 2

    .line 223
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Ld/s/j;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 224
    :cond_0
    iget v1, v0, Ld/s/i;->z:I

    if-ne v1, p1, :cond_1

    return-object v0

    .line 225
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/navigation/NavController;->d:Ld/s/j;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 226
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/e;

    .line 227
    iget-object v0, v0, Ld/s/e;->x:Ld/s/i;

    .line 228
    :goto_0
    instance-of v1, v0, Ld/s/j;

    if-eqz v1, :cond_3

    check-cast v0, Ld/s/j;

    goto :goto_1

    .line 229
    :cond_3
    iget-object v0, v0, Ld/s/i;->y:Ld/s/j;

    :goto_1
    const/4 v1, 0x1

    .line 230
    invoke-virtual {v0, p1, v1}, Ld/s/j;->a(IZ)Ld/s/i;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    .line 113
    iget-object v1, v0, Landroidx/navigation/NavController;->c:Ld/s/m;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ld/s/m;

    iget-object v2, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v3, v0, Landroidx/navigation/NavController;->k:Ld/s/q;

    invoke-direct {v1, v2, v3}, Ld/s/m;-><init>(Landroid/content/Context;Ld/s/q;)V

    iput-object v1, v0, Landroidx/navigation/NavController;->c:Ld/s/m;

    .line 115
    :cond_0
    iget-object v1, v0, Landroidx/navigation/NavController;->c:Ld/s/m;

    move/from16 v2, p1

    .line 116
    invoke-virtual {v1, v2}, Ld/s/m;->a(I)Ld/s/j;

    move-result-object v1

    .line 117
    iget-object v2, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 118
    iget v2, v2, Ld/s/i;->z:I

    .line 119
    invoke-virtual {v0, v2, v3}, Landroidx/navigation/NavController;->a(IZ)Z

    .line 120
    :cond_1
    iput-object v1, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    .line 121
    iget-object v1, v0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v2, "android-support-nav:controller:navigatorState:names"

    .line 122
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    iget-object v4, v0, Landroidx/navigation/NavController;->k:Ld/s/q;

    invoke-virtual {v4, v2}, Ld/s/q;->a(Ljava/lang/String;)Ld/s/p;

    move-result-object v4

    .line 125
    iget-object v5, v0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {v4, v2}, Ld/s/p;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v1, v0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 128
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v1, v6

    .line 129
    check-cast v7, Ld/s/f;

    .line 130
    iget v8, v7, Ld/s/f;->y:I

    .line 131
    invoke-virtual {v0, v8}, Landroidx/navigation/NavController;->a(I)Ld/s/i;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 132
    iget-object v12, v7, Ld/s/f;->z:Landroid/os/Bundle;

    if-eqz v12, :cond_4

    .line 133
    iget-object v8, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 134
    :cond_4
    new-instance v8, Ld/s/e;

    iget-object v10, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v13, v0, Landroidx/navigation/NavController;->i:Ld/o/l;

    iget-object v14, v0, Landroidx/navigation/NavController;->j:Ld/s/g;

    .line 135
    iget-object v15, v7, Ld/s/f;->x:Ljava/util/UUID;

    .line 136
    iget-object v7, v7, Ld/s/f;->A:Landroid/os/Bundle;

    move-object v9, v8

    move-object/from16 v16, v7

    .line 137
    invoke-direct/range {v9 .. v16}, Ld/s/e;-><init>(Landroid/content/Context;Ld/s/i;Landroid/os/Bundle;Ld/o/l;Ld/s/g;Ljava/util/UUID;Landroid/os/Bundle;)V

    .line 138
    iget-object v7, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v7, v8}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 139
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown destination during restore: "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 140
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    iget v4, v7, Ld/s/f;->y:I

    .line 142
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->c()V

    .line 144
    iput-object v2, v0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    .line 145
    :cond_7
    iget-object v1, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    if-eqz v1, :cond_28

    iget-object v1, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 146
    iget-boolean v1, v0, Landroidx/navigation/NavController;->g:Z

    if-nez v1, :cond_27

    iget-object v1, v0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    if-eqz v1, :cond_27

    .line 147
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_8

    goto/16 :goto_11

    .line 148
    :cond_8
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v6, "android-support-nav:controller:deepLinkIds"

    .line 149
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    goto :goto_2

    :cond_9
    move-object v6, v2

    .line 150
    :goto_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    if-eqz v5, :cond_a

    const-string v8, "android-support-nav:controller:deepLinkExtras"

    .line 151
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_3

    :cond_a
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_b

    .line 152
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_b
    if-eqz v6, :cond_c

    .line 153
    array-length v5, v6

    if-nez v5, :cond_12

    :cond_c
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 154
    iget-object v5, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Ld/s/j;->a(Landroid/net/Uri;)Ld/s/i$a;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 155
    iget-object v6, v5, Ld/s/i$a;->x:Ld/s/i;

    if-eqz v6, :cond_11

    .line 156
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 157
    :goto_4
    iget-object v9, v6, Ld/s/i;->y:Ld/s/j;

    if-eqz v9, :cond_d

    .line 158
    iget v10, v9, Ld/s/j;->G:I

    .line 159
    iget v11, v6, Ld/s/i;->z:I

    if-eq v10, v11, :cond_e

    .line 160
    :cond_d
    invoke-virtual {v8, v6}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_e
    if-nez v9, :cond_10

    .line 161
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 162
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld/s/i;

    add-int/lit8 v11, v9, 0x1

    .line 163
    iget v10, v10, Ld/s/i;->z:I

    .line 164
    aput v10, v6, v9

    move v9, v11

    goto :goto_5

    .line 165
    :cond_f
    iget-object v5, v5, Ld/s/i$a;->y:Landroid/os/Bundle;

    .line 166
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_6

    :cond_10
    move-object v6, v9

    goto :goto_4

    .line 167
    :cond_11
    throw v2

    :cond_12
    :goto_6
    if-eqz v6, :cond_26

    .line 168
    array-length v5, v6

    if-nez v5, :cond_13

    goto/16 :goto_11

    .line 169
    :cond_13
    iget-object v5, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    const/4 v8, 0x0

    .line 170
    :goto_7
    array-length v9, v6

    if-ge v8, v9, :cond_18

    .line 171
    aget v9, v6, v8

    if-nez v8, :cond_14

    .line 172
    iget-object v10, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    goto :goto_8

    :cond_14
    invoke-virtual {v5, v9}, Ld/s/j;->b(I)Ld/s/i;

    move-result-object v10

    :goto_8
    if-nez v10, :cond_15

    .line 173
    iget-object v5, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v5, v9}, Ld/s/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    .line 174
    :cond_15
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_17

    .line 175
    check-cast v10, Ld/s/j;

    .line 176
    :goto_9
    iget v5, v10, Ld/s/j;->G:I

    .line 177
    invoke-virtual {v10, v5}, Ld/s/j;->b(I)Ld/s/i;

    move-result-object v5

    instance-of v5, v5, Ld/s/j;

    if-eqz v5, :cond_16

    .line 178
    iget v5, v10, Ld/s/j;->G:I

    .line 179
    invoke-virtual {v10, v5}, Ld/s/j;->b(I)Ld/s/i;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ld/s/j;

    goto :goto_9

    :cond_16
    move-object v5, v10

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_18
    move-object v5, v2

    :goto_a
    if-eqz v5, :cond_19

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find destination "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "NavController"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_19
    const-string v5, "android-support-nav:controller:deepLinkIntent"

    .line 181
    invoke-virtual {v7, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v8, 0x10000000

    and-int/2addr v8, v5

    if-eqz v8, :cond_1c

    const v9, 0x8000

    and-int/2addr v5, v9

    if-nez v5, :cond_1c

    .line 183
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    iget-object v5, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 185
    new-instance v6, Ld/i/a/l;

    invoke-direct {v6, v5}, Ld/i/a/l;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 187
    iget-object v5, v6, Ld/i/a/l;->y:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    :cond_1a
    if-eqz v5, :cond_1b

    .line 188
    invoke-virtual {v6, v5}, Ld/i/a/l;->a(Landroid/content/ComponentName;)Ld/i/a/l;

    .line 189
    :cond_1b
    iget-object v5, v6, Ld/i/a/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v6}, Ld/i/a/l;->a()V

    .line 191
    iget-object v1, v0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    if-eqz v1, :cond_25

    .line 192
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 193
    iget-object v1, v0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    invoke-virtual {v1, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_10

    :cond_1c
    const-string v1, "unknown destination during deep link: "

    if-eqz v8, :cond_1f

    .line 194
    iget-object v4, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 195
    iget-object v4, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    .line 196
    iget v4, v4, Ld/s/i;->z:I

    .line 197
    invoke-virtual {v0, v4, v3}, Landroidx/navigation/NavController;->a(IZ)Z

    :cond_1d
    const/4 v4, 0x0

    .line 198
    :goto_b
    array-length v5, v6

    if-ge v4, v5, :cond_25

    add-int/lit8 v5, v4, 0x1

    .line 199
    aget v4, v6, v4

    .line 200
    invoke-virtual {v0, v4}, Landroidx/navigation/NavController;->a(I)Ld/s/i;

    move-result-object v8

    if-eqz v8, :cond_1e

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v16, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 201
    new-instance v4, Ld/s/n;

    move-object v9, v4

    move/from16 v11, v16

    move/from16 v15, v16

    invoke-direct/range {v9 .. v16}, Ld/s/n;-><init>(ZIZIIII)V

    .line 202
    invoke-virtual {v0, v8, v7, v4, v2}, Landroidx/navigation/NavController;->a(Ld/s/i;Landroid/os/Bundle;Ld/s/n;Ld/s/p$a;)V

    move v4, v5

    goto :goto_b

    .line 203
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 204
    invoke-static {v3, v4}, Ld/s/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_1f
    iget-object v4, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    const/4 v5, 0x0

    .line 206
    :goto_c
    array-length v8, v6

    if-ge v5, v8, :cond_24

    .line 207
    aget v8, v6, v5

    if-nez v5, :cond_20

    .line 208
    iget-object v9, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    goto :goto_d

    :cond_20
    invoke-virtual {v4, v8}, Ld/s/j;->b(I)Ld/s/i;

    move-result-object v9

    :goto_d
    if-eqz v9, :cond_23

    .line 209
    array-length v8, v6

    sub-int/2addr v8, v3

    if-eq v5, v8, :cond_22

    .line 210
    check-cast v9, Ld/s/j;

    .line 211
    :goto_e
    iget v4, v9, Ld/s/j;->G:I

    .line 212
    invoke-virtual {v9, v4}, Ld/s/j;->b(I)Ld/s/i;

    move-result-object v4

    instance-of v4, v4, Ld/s/j;

    if-eqz v4, :cond_21

    .line 213
    iget v4, v9, Ld/s/j;->G:I

    .line 214
    invoke-virtual {v9, v4}, Ld/s/j;->b(I)Ld/s/i;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ld/s/j;

    goto :goto_e

    :cond_21
    move-object v4, v9

    goto :goto_f

    .line 215
    :cond_22
    invoke-virtual {v9, v7}, Ld/s/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    const/4 v11, 0x0

    const/16 v17, -0x1

    iget-object v10, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    .line 216
    iget v12, v10, Ld/s/i;->z:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 217
    new-instance v10, Ld/s/n;

    move-object/from16 p1, v10

    move/from16 v16, v17

    invoke-direct/range {v10 .. v17}, Ld/s/n;-><init>(ZIZIIII)V

    .line 218
    invoke-virtual {v0, v9, v8, v10, v2}, Landroidx/navigation/NavController;->a(Ld/s/i;Landroid/os/Bundle;Ld/s/n;Ld/s/p$a;)V

    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 219
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 220
    invoke-static {v3, v8}, Ld/s/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_24
    iput-boolean v3, v0, Landroidx/navigation/NavController;->g:Z

    :cond_25
    :goto_10
    const/4 v1, 0x1

    goto :goto_12

    :cond_26
    :goto_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_27

    goto :goto_13

    :cond_27
    const/4 v3, 0x0

    :goto_13
    if-nez v3, :cond_28

    .line 222
    iget-object v1, v0, Landroidx/navigation/NavController;->d:Ld/s/j;

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v3, v2, v2}, Landroidx/navigation/NavController;->a(Ld/s/i;Landroid/os/Bundle;Ld/s/n;Ld/s/p$a;)V

    :cond_28
    return-void
.end method

.method public a(ILandroid/os/Bundle;Ld/s/n;)V
    .locals 5

    .line 231
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->d:Ld/s/j;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 232
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/e;

    .line 233
    iget-object v0, v0, Ld/s/e;->x:Ld/s/i;

    :goto_0
    if-eqz v0, :cond_b

    .line 234
    invoke-virtual {v0, p1}, Ld/s/i;->a(I)Ld/s/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    .line 235
    iget-object p3, v0, Ld/s/c;->b:Ld/s/n;

    .line 236
    :cond_1
    iget v2, v0, Ld/s/c;->a:I

    .line 237
    iget-object v3, v0, Ld/s/c;->c:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 238
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 239
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    move v2, p1

    :cond_3
    move-object v4, v1

    :goto_1
    if-eqz p2, :cond_5

    if-nez v4, :cond_4

    .line 240
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 241
    :cond_4
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    if-nez v2, :cond_6

    if-eqz p3, :cond_6

    .line 242
    iget p2, p3, Ld/s/n;->b:I

    const/4 v3, -0x1

    if-eq p2, v3, :cond_6

    .line 243
    iget-boolean p1, p3, Ld/s/n;->c:Z

    .line 244
    invoke-virtual {p0, p2, p1}, Landroidx/navigation/NavController;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 245
    invoke-virtual {p0}, Landroidx/navigation/NavController;->a()Z

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_a

    .line 246
    invoke-virtual {p0, v2}, Landroidx/navigation/NavController;->a(I)Ld/s/i;

    move-result-object p2

    if-nez p2, :cond_8

    .line 247
    iget-object p2, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {p2, v2}, Ld/s/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 248
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v1, "navigation destination "

    invoke-static {v1, p2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz v0, :cond_7

    const-string v0, " referenced from action "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 249
    invoke-static {v1, p1}, Ld/s/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    const-string p1, ""

    :goto_2
    const-string v0, " is unknown to this NavController"

    invoke-static {p2, p1, v0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 250
    :cond_8
    invoke-virtual {p0, p2, v4, p3, v1}, Landroidx/navigation/NavController;->a(Ld/s/i;Landroid/os/Bundle;Ld/s/n;Ld/s/p$a;)V

    :cond_9
    :goto_3
    return-void

    .line 251
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no current navigation node"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroidx/navigation/NavController$b;)V
    .locals 2

    .line 33
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/e;

    .line 35
    iget-object v1, v0, Ld/s/e;->x:Ld/s/i;

    .line 36
    iget-object v0, v0, Ld/s/e;->y:Landroid/os/Bundle;

    .line 37
    invoke-interface {p1, p0, v1, v0}, Landroidx/navigation/NavController$b;->a(Landroidx/navigation/NavController;Ld/s/i;Landroid/os/Bundle;)V

    .line 38
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ld/s/i;Landroid/os/Bundle;Ld/s/n;Ld/s/p$a;)V
    .locals 8

    if-eqz p3, :cond_0

    .line 1
    iget v0, p3, Ld/s/n;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-boolean v1, p3, Ld/s/n;->c:Z

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->a(IZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/navigation/NavController;->k:Ld/s/q;

    .line 5
    iget-object v2, p1, Ld/s/i;->x:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ld/s/q;->a(Ljava/lang/String;)Ld/s/p;

    move-result-object v1

    .line 7
    invoke-virtual {p1, p2}, Ld/s/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 8
    invoke-virtual {v1, p1, p2, p3, p4}, Ld/s/p;->a(Ld/s/i;Landroid/os/Bundle;Ld/s/n;Ld/s/p$a;)Ld/s/i;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    instance-of p3, p1, Ld/s/b;

    if-nez p3, :cond_1

    .line 10
    :goto_1
    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 11
    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld/s/e;

    .line 12
    iget-object p3, p3, Ld/s/e;->x:Ld/s/i;

    .line 13
    instance-of p3, p3, Ld/s/b;

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 14
    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld/s/e;

    .line 15
    iget-object p3, p3, Ld/s/e;->x:Ld/s/i;

    .line 16
    iget p3, p3, Ld/s/i;->z:I

    const/4 p4, 0x1

    .line 17
    invoke-virtual {p0, p3, p4}, Landroidx/navigation/NavController;->a(IZ)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 19
    new-instance p3, Ld/s/e;

    iget-object v3, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v4, p0, Landroidx/navigation/NavController;->d:Ld/s/j;

    iget-object v6, p0, Landroidx/navigation/NavController;->i:Ld/o/l;

    iget-object v7, p0, Landroidx/navigation/NavController;->j:Ld/s/g;

    move-object v2, p3

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Ld/s/e;-><init>(Landroid/content/Context;Ld/s/i;Landroid/os/Bundle;Ld/o/l;Ld/s/g;)V

    .line 20
    iget-object p4, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p4, p3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_2
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    move-object p4, p1

    :cond_3
    :goto_2
    if-eqz p4, :cond_4

    .line 22
    iget v1, p4, Ld/s/i;->z:I

    .line 23
    invoke-virtual {p0, v1}, Landroidx/navigation/NavController;->a(I)Ld/s/i;

    move-result-object v1

    if-nez v1, :cond_4

    .line 24
    iget-object p4, p4, Ld/s/i;->y:Ld/s/j;

    if-eqz p4, :cond_3

    .line 25
    new-instance v1, Ld/s/e;

    iget-object v3, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v6, p0, Landroidx/navigation/NavController;->i:Ld/o/l;

    iget-object v7, p0, Landroidx/navigation/NavController;->j:Ld/s/g;

    move-object v2, v1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Ld/s/e;-><init>(Landroid/content/Context;Ld/s/i;Landroid/os/Bundle;Ld/o/l;Ld/s/g;)V

    .line 26
    invoke-virtual {p3, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    .line 27
    :cond_4
    iget-object p4, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p4, p3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 28
    new-instance p3, Ld/s/e;

    iget-object v3, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 29
    invoke-virtual {p1, p2}, Ld/s/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Landroidx/navigation/NavController;->i:Ld/o/l;

    iget-object v7, p0, Landroidx/navigation/NavController;->j:Ld/s/g;

    move-object v2, p3

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Ld/s/e;-><init>(Landroid/content/Context;Ld/s/i;Landroid/os/Bundle;Ld/o/l;Ld/s/g;)V

    .line 30
    iget-object p2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p2, p3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_5
    invoke-virtual {p0}, Landroidx/navigation/NavController;->c()V

    if-nez v0, :cond_6

    if-eqz p1, :cond_7

    .line 32
    :cond_6
    invoke-virtual {p0}, Landroidx/navigation/NavController;->a()Z

    :cond_7
    return-void
.end method

.method public final a()Z
    .locals 10

    .line 64
    :goto_0
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 65
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/e;

    .line 66
    iget-object v0, v0, Ld/s/e;->x:Ld/s/i;

    .line 67
    instance-of v0, v0, Ld/s/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    .line 68
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/e;

    .line 69
    iget-object v0, v0, Ld/s/e;->x:Ld/s/i;

    .line 70
    iget v0, v0, Ld/s/i;->z:I

    .line 71
    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 73
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/e;

    .line 74
    iget-object v0, v0, Ld/s/e;->x:Ld/s/i;

    const/4 v2, 0x0

    .line 75
    instance-of v3, v0, Ld/s/b;

    if-eqz v3, :cond_2

    .line 76
    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 77
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/s/e;

    .line 79
    iget-object v4, v4, Ld/s/e;->x:Ld/s/i;

    .line 80
    instance-of v5, v4, Ld/s/j;

    if-nez v5, :cond_1

    instance-of v5, v4, Ld/s/b;

    if-nez v5, :cond_1

    move-object v2, v4

    .line 81
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 82
    iget-object v4, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 83
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/s/e;

    .line 85
    iget-object v6, v5, Ld/s/e;->D:Ld/o/g$b;

    .line 86
    iget-object v7, v5, Ld/s/e;->x:Ld/s/i;

    if-eqz v0, :cond_4

    .line 87
    iget v8, v7, Ld/s/i;->z:I

    iget v9, v0, Ld/s/i;->z:I

    if-ne v8, v9, :cond_4

    .line 88
    sget-object v7, Ld/o/g$b;->RESUMED:Ld/o/g$b;

    if-eq v6, v7, :cond_3

    .line 89
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_3
    iget-object v0, v0, Ld/s/i;->y:Ld/s/j;

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_7

    .line 91
    iget v7, v7, Ld/s/i;->z:I

    iget v8, v2, Ld/s/i;->z:I

    if-ne v7, v8, :cond_7

    .line 92
    sget-object v7, Ld/o/g$b;->RESUMED:Ld/o/g$b;

    if-ne v6, v7, :cond_5

    .line 93
    sget-object v6, Ld/o/g$b;->STARTED:Ld/o/g$b;

    .line 94
    iput-object v6, v5, Ld/s/e;->D:Ld/o/g$b;

    .line 95
    invoke-virtual {v5}, Ld/s/e;->a()V

    goto :goto_2

    .line 96
    :cond_5
    sget-object v7, Ld/o/g$b;->STARTED:Ld/o/g$b;

    if-eq v6, v7, :cond_6

    .line 97
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_6
    :goto_2
    iget-object v2, v2, Ld/s/i;->y:Ld/s/j;

    goto :goto_1

    .line 99
    :cond_7
    sget-object v6, Ld/o/g$b;->CREATED:Ld/o/g$b;

    .line 100
    iput-object v6, v5, Ld/s/e;->D:Ld/o/g$b;

    .line 101
    invoke-virtual {v5}, Ld/s/e;->a()V

    goto :goto_1

    .line 102
    :cond_8
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/e;

    .line 105
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/o/g$b;

    if-eqz v4, :cond_9

    .line 106
    iput-object v4, v2, Ld/s/e;->D:Ld/o/g$b;

    .line 107
    invoke-virtual {v2}, Ld/s/e;->a()V

    goto :goto_3

    .line 108
    :cond_a
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/e;

    .line 109
    iget-object v2, p0, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavController$b;

    .line 110
    iget-object v4, v0, Ld/s/e;->x:Ld/s/i;

    .line 111
    iget-object v5, v0, Ld/s/e;->y:Landroid/os/Bundle;

    .line 112
    invoke-interface {v3, p0, v4, v5}, Landroidx/navigation/NavController$b;->a(Landroidx/navigation/NavController;Ld/s/i;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_b
    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public a(IZ)Z
    .locals 7

    .line 39
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 40
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 42
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/s/e;

    .line 44
    iget-object v3, v3, Ld/s/e;->x:Ld/s/i;

    .line 45
    iget-object v5, p0, Landroidx/navigation/NavController;->k:Ld/s/q;

    .line 46
    iget-object v6, v3, Ld/s/i;->x:Ljava/lang/String;

    .line 47
    invoke-virtual {v5, v6}, Ld/s/q;->a(Ljava/lang/String;)Ld/s/p;

    move-result-object v5

    if-nez p2, :cond_2

    .line 48
    iget v6, v3, Ld/s/i;->z:I

    if-eq v6, p1, :cond_3

    .line 49
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_3
    iget v3, v3, Ld/s/i;->z:I

    if-ne v3, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_5

    .line 51
    iget-object p2, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Ld/s/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring popBackStack to destination "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as it was not found on the current back stack"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 53
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/s/p;

    .line 54
    invoke-virtual {p2}, Ld/s/p;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 55
    iget-object p2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/s/e;

    .line 56
    sget-object v0, Ld/o/g$b;->DESTROYED:Ld/o/g$b;

    .line 57
    iput-object v0, p2, Ld/s/e;->D:Ld/o/g$b;

    .line 58
    invoke-virtual {p2}, Ld/s/e;->a()V

    .line 59
    iget-object v0, p0, Landroidx/navigation/NavController;->j:Ld/s/g;

    if-eqz v0, :cond_6

    .line 60
    iget-object p2, p2, Ld/s/e;->B:Ljava/util/UUID;

    .line 61
    iget-object v0, v0, Ld/s/g;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/o/e0;

    if-eqz p2, :cond_6

    .line 62
    invoke-virtual {p2}, Ld/o/e0;->a()V

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 63
    :cond_7
    invoke-virtual {p0}, Landroidx/navigation/NavController;->c()V

    return v1
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/e;

    .line 4
    iget-object v0, v0, Ld/s/e;->x:Ld/s/i;

    .line 5
    :goto_0
    iget v0, v0, Ld/s/i;->z:I

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, v0, v2}, Landroidx/navigation/NavController;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/navigation/NavController;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->n:Ld/a/b;

    iget-boolean v1, p0, Landroidx/navigation/NavController;->o:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/s/e;

    .line 3
    iget-object v5, v5, Ld/s/e;->x:Ld/s/i;

    .line 4
    instance-of v5, v5, Ld/s/j;

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v4, v3, :cond_2

    const/4 v2, 0x1

    .line 5
    :cond_2
    iput-boolean v2, v0, Ld/a/b;->a:Z

    return-void
.end method
