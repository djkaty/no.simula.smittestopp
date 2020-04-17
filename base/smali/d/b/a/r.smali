.class public Ld/b/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/reflect/Field;

.field public static b:Z

.field public static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static d:Z

.field public static e:Ljava/lang/reflect/Field;

.field public static f:Z

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Z

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Z

.field public static k:Ljava/lang/reflect/Method;

.field public static l:Z

.field public static m:Ljava/lang/reflect/Field;

.field public static n:Z

.field public static o:Ljava/lang/reflect/Method;

.field public static p:Z

.field public static q:Ljava/lang/reflect/Field;

.field public static r:Z

.field public static s:Ljava/lang/reflect/Method;

.field public static t:Z


# direct methods
.method public static a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .locals 0

    .line 283
    invoke-static {p1, p2}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p4

    .line 284
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    return p0
.end method

.method public static a(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    .line 662
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    .line 651
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 652
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 654
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_1

    .line 655
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    if-nez v2, :cond_5

    .line 656
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 657
    array-length v2, v1

    if-gtz v2, :cond_4

    goto :goto_2

    .line 658
    :cond_4
    aget-object v2, v1, v0

    .line 659
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_6

    .line 660
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 661
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_6
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    const/4 v3, -0x2

    :cond_7
    :goto_2
    return v3
.end method

.method public static a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 0

    .line 552
    invoke-static {p1, p2}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p4

    .line 553
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    .line 459
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/os/Parcel;)I
    .locals 1

    const/16 v0, 0x4f45

    .line 4
    invoke-static {p0, v0}, Ld/b/a/r;->j(Landroid/os/Parcel;I)I

    move-result p0

    return p0
.end method

.method public static a(Ld/g/a/h/d;)I
    .locals 2

    .line 1046
    invoke-virtual {p0}, Ld/g/a/h/d;->e()Ld/g/a/h/d$a;

    move-result-object v0

    sget-object v1, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v0, v1, :cond_1

    .line 1047
    iget v0, p0, Ld/g/a/h/d;->H:I

    if-nez v0, :cond_0

    .line 1048
    invoke-virtual {p0}, Ld/g/a/h/d;->d()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ld/g/a/h/d;->G:F

    mul-float v0, v0, v1

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {p0}, Ld/g/a/h/d;->d()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ld/g/a/h/d;->G:F

    div-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    .line 1050
    invoke-virtual {p0, v0}, Ld/g/a/h/d;->f(I)V

    goto :goto_2

    .line 1051
    :cond_1
    invoke-virtual {p0}, Ld/g/a/h/d;->h()Ld/g/a/h/d$a;

    move-result-object v0

    sget-object v1, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v0, v1, :cond_3

    .line 1052
    iget v0, p0, Ld/g/a/h/d;->H:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1053
    invoke-virtual {p0}, Ld/g/a/h/d;->i()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ld/g/a/h/d;->G:F

    mul-float v0, v0, v1

    goto :goto_1

    .line 1054
    :cond_2
    invoke-virtual {p0}, Ld/g/a/h/d;->i()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ld/g/a/h/d;->G:F

    div-float/2addr v0, v1

    :goto_1
    float-to-int v0, v0

    .line 1055
    invoke-virtual {p0, v0}, Ld/g/a/h/d;->e(I)V

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method public static a(Ld/g/a/h/d;I)I
    .locals 4

    mul-int/lit8 v0, p1, 0x2

    .line 945
    iget-object v1, p0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 946
    aget-object v0, v1, v0

    .line 947
    iget-object v1, v2, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v1, :cond_1

    iget-object v1, v1, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    iget-object v3, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-ne v1, v3, :cond_1

    iget-object v1, v0, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v1, :cond_1

    iget-object v1, v1, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    if-ne v1, v3, :cond_1

    .line 948
    invoke-virtual {v3, p1}, Ld/g/a/h/d;->c(I)I

    move-result v1

    if-nez p1, :cond_0

    .line 949
    iget v3, p0, Ld/g/a/h/d;->V:F

    goto :goto_0

    :cond_0
    iget v3, p0, Ld/g/a/h/d;->W:F

    .line 950
    :goto_0
    invoke-virtual {p0, p1}, Ld/g/a/h/d;->c(I)I

    move-result p0

    .line 951
    invoke-virtual {v2}, Ld/g/a/h/c;->a()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p0

    int-to-float p0, v1

    mul-float p0, p0, v3

    float-to-int p0, p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ld/g/a/h/d;IZI)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 839
    iget-boolean v3, v0, Ld/g/a/h/d;->b0:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 840
    :cond_0
    iget-object v3, v0, Ld/g/a/h/d;->w:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v1, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 841
    iget v6, v0, Ld/g/a/h/d;->Q:I

    .line 842
    invoke-virtual/range {p0 .. p0}, Ld/g/a/h/d;->d()I

    move-result v7

    .line 843
    iget v8, v0, Ld/g/a/h/d;->Q:I

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v8, 0x1

    goto :goto_1

    .line 844
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ld/g/a/h/d;->d()I

    move-result v6

    .line 845
    iget v7, v0, Ld/g/a/h/d;->Q:I

    sub-int/2addr v6, v7

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v8, v9, 0x1

    .line 846
    :goto_1
    iget-object v10, v0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v11, v10, v9

    iget-object v11, v11, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v11, :cond_3

    aget-object v10, v10, v8

    iget-object v10, v10, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v10, :cond_3

    const/4 v10, -0x1

    move/from16 v18, v9

    move v9, v8

    move/from16 v8, v18

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    :goto_2
    if-eqz v3, :cond_4

    sub-int v11, p3, v6

    goto :goto_3

    :cond_4
    move/from16 v11, p3

    .line 847
    :goto_3
    iget-object v13, v0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Ld/g/a/h/c;->a()I

    move-result v13

    mul-int v13, v13, v10

    invoke-static/range {p0 .. p1}, Ld/b/a/r;->a(Ld/g/a/h/d;I)I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v11, v14

    if-nez v1, :cond_5

    .line 848
    invoke-virtual/range {p0 .. p0}, Ld/g/a/h/d;->i()I

    move-result v13

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ld/g/a/h/d;->d()I

    move-result v13

    :goto_4
    mul-int v13, v13, v10

    .line 849
    iget-object v15, v0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v15, v15, v8

    .line 850
    iget-object v15, v15, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 851
    iget-object v15, v15, Ld/g/a/h/l;->a:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ld/g/a/h/l;

    .line 852
    move-object/from16 v12, v17

    check-cast v12, Ld/g/a/h/j;

    .line 853
    iget-object v12, v12, Ld/g/a/h/j;->c:Ld/g/a/h/c;

    iget-object v12, v12, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    invoke-static {v12, v1, v2, v11}, Ld/b/a/r;->a(Ld/g/a/h/d;IZI)I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_5

    .line 854
    :cond_6
    iget-object v12, v0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v12, v12, v9

    .line 855
    iget-object v12, v12, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 856
    iget-object v12, v12, Ld/g/a/h/l;->a:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v15, 0x0

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ld/g/a/h/l;

    .line 857
    move-object/from16 v5, v17

    check-cast v5, Ld/g/a/h/j;

    .line 858
    iget-object v5, v5, Ld/g/a/h/j;->c:Ld/g/a/h/c;

    iget-object v5, v5, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    move-object/from16 p3, v12

    add-int v12, v13, v11

    invoke-static {v5, v1, v2, v12}, Ld/b/a/r;->a(Ld/g/a/h/d;IZI)I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v12, p3

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    if-eqz v3, :cond_8

    sub-int/2addr v4, v6

    add-int/2addr v15, v7

    :goto_7
    const/4 v5, 0x1

    goto :goto_9

    :cond_8
    if-nez v1, :cond_9

    .line 859
    invoke-virtual/range {p0 .. p0}, Ld/g/a/h/d;->i()I

    move-result v5

    goto :goto_8

    :cond_9
    invoke-virtual/range {p0 .. p0}, Ld/g/a/h/d;->d()I

    move-result v5

    :goto_8
    mul-int v5, v5, v10

    add-int/2addr v15, v5

    goto :goto_7

    :goto_9
    if-ne v1, v5, :cond_e

    .line 860
    iget-object v5, v0, Ld/g/a/h/d;->w:Ld/g/a/h/c;

    .line 861
    iget-object v5, v5, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 862
    iget-object v5, v5, Ld/g/a/h/l;->a:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v12, 0x0

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ld/g/a/h/l;

    move-object/from16 p3, v5

    .line 863
    move-object/from16 v5, v16

    check-cast v5, Ld/g/a/h/j;

    move/from16 v17, v9

    const/4 v9, 0x1

    if-ne v10, v9, :cond_a

    .line 864
    iget-object v5, v5, Ld/g/a/h/j;->c:Ld/g/a/h/c;

    iget-object v5, v5, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    add-int v9, v6, v11

    invoke-static {v5, v1, v2, v9}, Ld/b/a/r;->a(Ld/g/a/h/d;IZI)I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_b

    .line 865
    :cond_a
    iget-object v5, v5, Ld/g/a/h/j;->c:Ld/g/a/h/c;

    iget-object v5, v5, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    mul-int v9, v7, v10

    add-int/2addr v9, v11

    invoke-static {v5, v1, v2, v9}, Ld/b/a/r;->a(Ld/g/a/h/d;IZI)I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_b
    move v12, v5

    move-object/from16 v5, p3

    move/from16 v9, v17

    goto :goto_a

    :cond_b
    move/from16 v17, v9

    .line 866
    iget-object v5, v0, Ld/g/a/h/d;->w:Ld/g/a/h/c;

    .line 867
    iget-object v5, v5, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 868
    iget-object v5, v5, Ld/g/a/h/l;->a:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_d

    if-nez v3, :cond_d

    const/4 v3, 0x1

    if-ne v10, v3, :cond_c

    add-int v3, v12, v6

    goto :goto_c

    :cond_c
    sub-int v3, v12, v7

    goto :goto_c

    :cond_d
    move v3, v12

    goto :goto_c

    :cond_e
    move/from16 v17, v9

    const/4 v3, 0x0

    .line 869
    :goto_c
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v14

    add-int/2addr v13, v11

    const/4 v4, -0x1

    if-ne v10, v4, :cond_f

    move/from16 v18, v13

    move v13, v11

    move/from16 v11, v18

    :cond_f
    if-eqz v2, :cond_10

    .line 870
    invoke-static {v0, v1, v11}, Ld/g/a/h/i;->a(Ld/g/a/h/d;II)V

    .line 871
    invoke-virtual {v0, v11, v13, v1}, Ld/g/a/h/d;->a(III)V

    goto :goto_d

    .line 872
    :cond_10
    iget-object v2, v0, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    invoke-virtual {v2, v0, v1}, Ld/g/a/h/f;->a(Ld/g/a/h/d;I)V

    if-nez v1, :cond_11

    .line 873
    iput v11, v0, Ld/g/a/h/d;->K:I

    goto :goto_d

    :cond_11
    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 874
    iput v11, v0, Ld/g/a/h/d;->L:I

    .line 875
    :cond_12
    :goto_d
    invoke-virtual/range {p0 .. p1}, Ld/g/a/h/d;->b(I)Ld/g/a/h/d$a;

    move-result-object v2

    sget-object v4, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v2, v4, :cond_13

    iget v2, v0, Ld/g/a/h/d;->G:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_13

    .line 876
    iget-object v2, v0, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    invoke-virtual {v2, v0, v1}, Ld/g/a/h/f;->a(Ld/g/a/h/d;I)V

    .line 877
    :cond_13
    iget-object v2, v0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v4, v2, v8

    iget-object v4, v4, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v4, :cond_14

    aget-object v4, v2, v17

    iget-object v4, v4, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v4, :cond_14

    .line 878
    iget-object v4, v0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    .line 879
    aget-object v5, v2, v8

    iget-object v5, v5, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v5, v5, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    if-ne v5, v4, :cond_14

    aget-object v2, v2, v17

    iget-object v2, v2, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v2, v2, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    if-ne v2, v4, :cond_14

    .line 880
    iget-object v2, v0, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    invoke-virtual {v2, v0, v1}, Ld/g/a/h/f;->a(Ld/g/a/h/d;I)V

    :cond_14
    return v3
.end method

.method public static a(Ld/g/a/h/f;I)I
    .locals 11

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 262
    iget-object v1, p0, Ld/g/a/h/f;->f:Ljava/util/List;

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 263
    iget-object v1, p0, Ld/g/a/h/f;->g:Ljava/util/List;

    .line 264
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 265
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/g/a/h/d;

    .line 266
    iget-object v8, v7, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v9, v0, 0x1

    aget-object v10, v8, v9

    iget-object v10, v10, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v10, :cond_3

    aget-object v10, v8, v0

    iget-object v10, v10, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v10, :cond_2

    aget-object v8, v8, v9

    iget-object v8, v8, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v8, 0x1

    .line 267
    :goto_3
    invoke-static {v7, p1, v8, v4}, Ld/b/a/r;->a(Ld/g/a/h/d;IZI)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 268
    :cond_4
    iget-object p0, p0, Ld/g/a/h/f;->e:[I

    aput v6, p0, p1

    return v6

    .line 269
    :cond_5
    throw v1
.end method

.method public static a(Ld/t/a/s$u;Ld/t/a/r;Landroid/view/View;Landroid/view/View;Ld/t/a/s$k;Z)I
    .locals 1

    .line 253
    invoke-virtual {p4}, Ld/t/a/s$k;->d()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ld/t/a/s$u;->a()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 254
    invoke-virtual {p4, p2}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p4, p3}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 255
    :cond_1
    invoke-virtual {p1, p3}, Ld/t/a/r;->a(Landroid/view/View;)I

    move-result p0

    .line 256
    invoke-virtual {p1, p2}, Ld/t/a/r;->b(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    .line 257
    invoke-virtual {p1}, Ld/t/a/r;->c()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ld/t/a/s$u;Ld/t/a/r;Landroid/view/View;Landroid/view/View;Ld/t/a/s$k;ZZ)I
    .locals 4

    .line 15
    invoke-virtual {p4}, Ld/t/a/s$k;->d()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ld/t/a/s$u;->a()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p4, p2}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result v0

    .line 17
    invoke-virtual {p4, p3}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result v2

    .line 18
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 19
    invoke-virtual {p4, p2}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result v2

    .line 20
    invoke-virtual {p4, p3}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result v3

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p6, :cond_1

    .line 22
    invoke-virtual {p0}, Ld/t/a/s$u;->a()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    .line 24
    :cond_2
    invoke-virtual {p1, p3}, Ld/t/a/r;->a(Landroid/view/View;)I

    move-result p5

    .line 25
    invoke-virtual {p1, p2}, Ld/t/a/r;->b(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p5, p6

    .line 26
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    .line 27
    invoke-virtual {p4, p2}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result p6

    .line 28
    invoke-virtual {p4, p3}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p6, p3

    .line 29
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float p0, p0, p4

    .line 30
    invoke-virtual {p1}, Ld/t/a/r;->b()I

    move-result p3

    .line 31
    invoke-virtual {p1, p2}, Ld/t/a/r;->b(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    .line 32
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 22

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    .line 952
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v13, v1

    .line 953
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v14, 0x0

    if-ne v1, v2, :cond_0

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v12, :cond_2f

    :cond_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 954
    :cond_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "objectAnimator"

    .line 955
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 956
    new-instance v7, Landroid/animation/ObjectAnimator;

    invoke-direct {v7}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v4, v7

    move/from16 v5, p7

    move-object/from16 v6, p3

    .line 957
    invoke-static/range {v0 .. v6}, Ld/b/a/r;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_2
    const-string v5, "animator"

    .line 958
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v5, p7

    move-object/from16 v6, p3

    .line 959
    invoke-static/range {v0 .. v6}, Ld/b/a/r;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v7

    :goto_1
    move-object v0, v7

    move/from16 v19, v12

    goto/16 :goto_16

    :cond_3
    const-string v5, "set"

    .line 960
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 961
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 962
    sget-object v0, Ld/y/a/a/a;->h:[I

    move-object/from16 v7, p4

    invoke-static {v8, v9, v7, v0}, Ld/b/a/r;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const-string v0, "ordering"

    .line 963
    invoke-static {v6, v10, v0, v14, v14}, Ld/b/a/r;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v15

    move-object/from16 v17, v6

    move/from16 v6, v16

    move/from16 v7, p7

    .line 964
    invoke-static/range {v0 .. v7}, Ld/b/a/r;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 965
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v19, v12

    move-object v0, v15

    goto/16 :goto_16

    :cond_4
    const-string v5, "propertyValuesHolder"

    .line 966
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 967
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v6, 0x0

    .line 968
    :goto_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v2, :cond_28

    if-eq v7, v3, :cond_28

    if-eq v7, v4, :cond_5

    .line 969
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2

    .line 970
    :cond_5
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 971
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 972
    sget-object v3, Ld/y/a/a/a;->i:[I

    invoke-static {v8, v9, v1, v3}, Ld/b/a/r;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const-string v7, "propertyName"

    .line 973
    invoke-static {v3, v10, v7, v2}, Ld/b/a/r;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x4

    const-string v15, "valueType"

    .line 974
    invoke-static {v3, v10, v15, v4, v14}, Ld/b/a/r;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    const/4 v14, 0x0

    move-object/from16 v16, v1

    move v15, v4

    .line 975
    :goto_3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v2, :cond_17

    move/from16 v17, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    .line 976
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyframe"

    .line 977
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "value"

    const/4 v2, 0x4

    if-ne v15, v2, :cond_9

    .line 978
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 979
    sget-object v15, Ld/y/a/a/a;->j:[I

    invoke-static {v8, v9, v2, v15}, Ld/b/a/r;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 980
    invoke-static {v10, v1}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v15, 0x0

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    .line 981
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    :goto_4
    if-eqz v15, :cond_7

    const/16 v17, 0x1

    goto :goto_5

    :cond_7
    const/16 v17, 0x0

    :goto_5
    if-eqz v17, :cond_8

    .line 982
    iget v15, v15, Landroid/util/TypedValue;->type:I

    invoke-static {v15}, Ld/b/a/r;->b(I)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x3

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    .line 983
    :goto_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 984
    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    move-object/from16 v18, v5

    .line 985
    sget-object v5, Ld/y/a/a/a;->j:[I

    invoke-static {v8, v9, v2, v5}, Ld/b/a/r;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/high16 v5, -0x40800000    # -1.0f

    const-string v8, "fraction"

    const/4 v9, 0x3

    .line 986
    invoke-static {v2, v10, v8, v9, v5}, Ld/b/a/r;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    .line 987
    invoke-static {v10, v1}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x0

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    .line 988
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    :goto_7
    if-eqz v8, :cond_b

    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    :goto_8
    move/from16 v19, v12

    const/4 v12, 0x4

    if-ne v15, v12, :cond_d

    if-eqz v9, :cond_c

    .line 989
    iget v8, v8, Landroid/util/TypedValue;->type:I

    invoke-static {v8}, Ld/b/a/r;->b(I)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x3

    goto :goto_9

    :cond_c
    const/4 v8, 0x0

    goto :goto_9

    :cond_d
    move v8, v15

    :goto_9
    if-eqz v9, :cond_10

    if-eqz v8, :cond_f

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    const/4 v9, 0x3

    if-eq v8, v9, :cond_e

    const/4 v1, 0x0

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    .line 990
    invoke-static {v2, v10, v1, v8, v8}, Ld/b/a/r;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 991
    invoke-static {v5, v1}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v1

    goto :goto_a

    :cond_f
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 992
    invoke-static {v2, v10, v1, v8, v9}, Ld/b/a/r;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    .line 993
    invoke-static {v5, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    goto :goto_a

    :cond_10
    if-nez v8, :cond_11

    .line 994
    invoke-static {v5}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v1

    goto :goto_a

    .line 995
    :cond_11
    invoke-static {v5}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v1

    :goto_a
    const-string v5, "interpolator"

    .line 996
    invoke-static {v10, v5}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v5, 0x0

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 997
    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    :goto_b
    move-object/from16 v8, p0

    if-lez v5, :cond_13

    .line 998
    invoke-static {v8, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 999
    invoke-virtual {v1, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1000
    :cond_13
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_15

    if-nez v14, :cond_14

    .line 1001
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    :cond_14
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_15
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/4 v2, 0x3

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v5, v18

    move/from16 v12, v19

    goto/16 :goto_3

    :cond_16
    move-object/from16 v8, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_17
    move-object/from16 v8, p0

    move-object/from16 v18, v5

    move/from16 v19, v12

    if-eqz v14, :cond_22

    .line 1004
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_22

    const/4 v2, 0x0

    .line 1005
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    add-int/lit8 v5, v1, -0x1

    .line 1006
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    .line 1007
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v9

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v17, v9, v12

    if-gez v17, :cond_19

    const/16 v17, 0x0

    cmpg-float v9, v9, v17

    if-gez v9, :cond_18

    .line 1008
    invoke-virtual {v5, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_c

    .line 1009
    :cond_18
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v5, v12}, Ld/b/a/r;->a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v5

    invoke-virtual {v14, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    .line 1010
    :cond_19
    :goto_c
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v9, 0x0

    cmpl-float v12, v5, v9

    if-eqz v12, :cond_1b

    cmpg-float v5, v5, v9

    if-gez v5, :cond_1a

    .line 1011
    invoke-virtual {v2, v9}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_d

    .line 1012
    :cond_1a
    invoke-static {v2, v9}, Ld/b/a/r;->a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v14, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    .line 1013
    :cond_1b
    :goto_d
    new-array v2, v1, [Landroid/animation/Keyframe;

    .line 1014
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v1, :cond_21

    .line 1015
    aget-object v9, v2, v5

    .line 1016
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v12

    const/4 v14, 0x0

    cmpg-float v12, v12, v14

    if-gez v12, :cond_20

    if-nez v5, :cond_1c

    .line 1017
    invoke-virtual {v9, v14}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_12

    :cond_1c
    add-int/lit8 v12, v1, -0x1

    if-ne v5, v12, :cond_1d

    const/high16 v12, 0x3f800000    # 1.0f

    .line 1018
    invoke-virtual {v9, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_12

    :cond_1d
    add-int/lit8 v9, v5, 0x1

    move v14, v5

    :goto_f
    if-ge v9, v12, :cond_1f

    .line 1019
    aget-object v17, v2, v9

    invoke-virtual/range {v17 .. v17}, Landroid/animation/Keyframe;->getFraction()F

    move-result v17

    const/16 v20, 0x0

    cmpl-float v17, v17, v20

    if-ltz v17, :cond_1e

    goto :goto_10

    :cond_1e
    add-int/lit8 v14, v9, 0x1

    move/from16 v21, v14

    move v14, v9

    move/from16 v9, v21

    goto :goto_f

    :cond_1f
    :goto_10
    add-int/lit8 v9, v14, 0x1

    .line 1020
    aget-object v9, v2, v9

    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v9

    add-int/lit8 v12, v5, -0x1

    aget-object v12, v2, v12

    .line 1021
    invoke-virtual {v12}, Landroid/animation/Keyframe;->getFraction()F

    move-result v12

    sub-float/2addr v9, v12

    sub-int v12, v14, v5

    add-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    div-float/2addr v9, v12

    move v12, v5

    :goto_11
    if-gt v12, v14, :cond_20

    move/from16 v17, v1

    .line 1022
    aget-object v1, v2, v12

    add-int/lit8 v20, v12, -0x1

    aget-object v20, v2, v20

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    add-float v8, v20, v9

    invoke-virtual {v1, v8}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p0

    move/from16 v1, v17

    goto :goto_11

    :cond_20
    :goto_12
    move/from16 v17, v1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, p0

    move/from16 v1, v17

    goto :goto_e

    .line 1023
    :cond_21
    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v15, v2, :cond_23

    .line 1024
    sget-object v5, Ld/y/a/a/e;->a:Ld/y/a/a/e;

    .line 1025
    invoke-virtual {v1, v5}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_13

    :cond_22
    const/4 v2, 0x3

    const/4 v1, 0x0

    :cond_23
    :goto_13
    const/4 v5, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_24

    .line 1026
    invoke-static {v3, v4, v5, v8, v7}, Ld/b/a/r;->a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    :cond_24
    if-eqz v1, :cond_26

    if-nez v6, :cond_25

    .line 1027
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v4

    .line 1028
    :cond_25
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    :cond_26
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_14

    :cond_27
    move-object/from16 v16, v1

    move-object/from16 v18, v5

    move/from16 v19, v12

    .line 1030
    :goto_14
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, v16

    move-object/from16 v5, v18

    move/from16 v12, v19

    goto/16 :goto_2

    :cond_28
    move/from16 v19, v12

    if-eqz v6, :cond_29

    .line 1031
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1032
    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_2a

    .line 1033
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/PropertyValuesHolder;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_29
    const/4 v2, 0x0

    :cond_2a
    if-eqz v2, :cond_2b

    .line 1034
    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2b

    .line 1035
    move-object v1, v0

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_2b
    const/4 v14, 0x1

    :goto_16
    if-eqz v11, :cond_2d

    if-nez v14, :cond_2d

    if-nez v13, :cond_2c

    .line 1036
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    :cond_2c
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v12, v19

    goto/16 :goto_0

    .line 1038
    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown animator name: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    if-eqz v11, :cond_32

    if-eqz v13, :cond_32

    .line 1039
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 1040
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    add-int/lit8 v5, v3, 0x1

    .line 1041
    aput-object v4, v1, v3

    move v3, v5

    goto :goto_17

    :cond_30
    if-nez p6, :cond_31

    .line 1042
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_18

    .line 1043
    :cond_31
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_32
    :goto_18
    return-object v0
.end method

.method public static a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2

    .line 1067
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1068
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object p0

    goto :goto_0

    .line 1069
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 1070
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object p0

    goto :goto_0

    .line 1071
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 11

    .line 764
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 765
    iget v0, v0, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 766
    :goto_1
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    .line 767
    iget v4, v4, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne p1, v6, :cond_7

    if-eqz v3, :cond_4

    .line 768
    invoke-static {v0}, Ld/b/a/r;->b(I)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    if-eqz v5, :cond_6

    invoke-static {v4}, Ld/b/a/r;->b(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 p1, 0x3

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :cond_7
    :goto_4
    if-nez p1, :cond_8

    const/4 v6, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_5
    const/4 v8, 0x0

    const/4 v9, 0x2

    if-ne p1, v9, :cond_d

    .line 769
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 770
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 771
    invoke-static {p1}, Ld/b/a/r;->b(Ljava/lang/String;)[Ld/i/c/b;

    move-result-object p2

    .line 772
    invoke-static {p0}, Ld/b/a/r;->b(Ljava/lang/String;)[Ld/i/c/b;

    move-result-object p3

    if-nez p2, :cond_9

    if-eqz p3, :cond_1e

    :cond_9
    if-eqz p2, :cond_c

    .line 773
    new-instance v0, Ld/y/a/a/d;

    invoke-direct {v0}, Ld/y/a/a/d;-><init>()V

    if-eqz p3, :cond_b

    .line 774
    invoke-static {p2, p3}, Ld/b/a/r;->a([Ld/i/c/b;[Ld/i/c/b;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-array p0, v9, [Ljava/lang/Object;

    aput-object p2, p0, v2

    aput-object p3, p0, v1

    .line 775
    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto :goto_6

    .line 776
    :cond_a
    new-instance p2, Landroid/view/InflateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " Can\'t morph from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    new-array p0, v1, [Ljava/lang/Object;

    aput-object p2, p0, v2

    .line 777
    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    :goto_6
    move-object v8, p0

    goto/16 :goto_f

    :cond_c
    if-eqz p3, :cond_1e

    .line 778
    new-instance p0, Ld/y/a/a/d;

    invoke-direct {p0}, Ld/y/a/a/d;-><init>()V

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p3, p1, v2

    .line 779
    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    goto/16 :goto_f

    :cond_d
    if-ne p1, v7, :cond_e

    .line 780
    sget-object p1, Ld/y/a/a/e;->a:Ld/y/a/a/e;

    goto :goto_7

    :cond_e
    move-object p1, v8

    :goto_7
    const/4 v7, 0x5

    const/4 v10, 0x0

    if-eqz v6, :cond_14

    if-eqz v3, :cond_12

    if-ne v0, v7, :cond_f

    .line 781
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_8

    .line 782
    :cond_f
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    :goto_8
    if-eqz v5, :cond_11

    if-ne v4, v7, :cond_10

    .line 783
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_9

    .line 784
    :cond_10
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    :goto_9
    new-array p3, v9, [F

    aput p2, p3, v2

    aput p0, p3, v1

    .line 785
    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto/16 :goto_e

    :cond_11
    new-array p0, v1, [F

    aput p2, p0, v2

    .line 786
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto/16 :goto_e

    :cond_12
    if-ne v4, v7, :cond_13

    .line 787
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_a

    .line 788
    :cond_13
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    :goto_a
    new-array p2, v1, [F

    aput p0, p2, v2

    .line 789
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto/16 :goto_e

    :cond_14
    if-eqz v3, :cond_1a

    if-ne v0, v7, :cond_15

    .line 790
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    goto :goto_b

    .line 791
    :cond_15
    invoke-static {v0}, Ld/b/a/r;->b(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 792
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    goto :goto_b

    .line 793
    :cond_16
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :goto_b
    if-eqz v5, :cond_19

    if-ne v4, v7, :cond_17

    .line 794
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_c

    .line 795
    :cond_17
    invoke-static {v4}, Ld/b/a/r;->b(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 796
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_c

    .line 797
    :cond_18
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    :goto_c
    new-array p3, v9, [I

    aput p2, p3, v2

    aput p0, p3, v1

    .line 798
    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto :goto_e

    :cond_19
    new-array p0, v1, [I

    aput p2, p0, v2

    .line 799
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto :goto_e

    :cond_1a
    if-eqz v5, :cond_1d

    if-ne v4, v7, :cond_1b

    .line 800
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_d

    .line 801
    :cond_1b
    invoke-static {v4}, Ld/b/a/r;->b(I)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 802
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_d

    .line 803
    :cond_1c
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    :goto_d
    new-array p2, v1, [I

    aput p0, p2, v2

    .line 804
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    :goto_e
    move-object v8, p0

    :cond_1d
    if-eqz v8, :cond_1e

    if-eqz p1, :cond_1e

    .line 805
    invoke-virtual {v8, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_1e
    :goto_f
    return-object v8
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    .line 1110
    sget-object v4, Ld/y/a/a/a;->g:[I

    invoke-static {v0, v1, v2, v4}, Ld/b/a/r;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1111
    sget-object v5, Ld/y/a/a/a;->k:[I

    invoke-static {v0, v1, v2, v5}, Ld/b/a/r;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p4, :cond_0

    .line 1112
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    :goto_0
    const/16 v2, 0x12c

    const/4 v5, 0x1

    const-string v6, "duration"

    .line 1113
    invoke-static {v4, v3, v6, v5, v2}, Ld/b/a/r;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v6, v2

    const/4 v2, 0x2

    const/4 v8, 0x0

    const-string v9, "startOffset"

    .line 1114
    invoke-static {v4, v3, v9, v2, v8}, Ld/b/a/r;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    int-to-long v9, v9

    const/4 v11, 0x4

    const/4 v12, 0x7

    const-string v13, "valueType"

    .line 1115
    invoke-static {v4, v3, v13, v12, v11}, Ld/b/a/r;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    const-string v13, "valueFrom"

    .line 1116
    invoke-static {v3, v13}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x3

    if-eqz v13, :cond_9

    const-string v13, "valueTo"

    .line 1117
    invoke-static {v3, v13}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x6

    const/4 v15, 0x5

    if-ne v12, v11, :cond_8

    .line 1118
    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    if-eqz v12, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    if-eqz v16, :cond_2

    .line 1119
    iget v12, v12, Landroid/util/TypedValue;->type:I

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 1120
    :goto_2
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    if-eqz v17, :cond_4

    .line 1121
    iget v2, v2, Landroid/util/TypedValue;->type:I

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    if-eqz v16, :cond_5

    .line 1122
    invoke-static {v12}, Ld/b/a/r;->b(I)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    if-eqz v17, :cond_7

    invoke-static {v2}, Ld/b/a/r;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v12, 0x3

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    :cond_8
    :goto_5
    const-string v2, ""

    .line 1123
    invoke-static {v4, v12, v15, v13, v2}, Ld/b/a/r;->a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    if-eqz v2, :cond_9

    new-array v12, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v12, v8

    .line 1124
    invoke-virtual {v1, v12}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 1125
    :cond_9
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1126
    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-string v2, "repeatCount"

    .line 1127
    invoke-static {v4, v3, v2, v14, v8}, Ld/b/a/r;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-string v2, "repeatMode"

    .line 1128
    invoke-static {v4, v3, v2, v11, v5}, Ld/b/a/r;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    if-eqz v0, :cond_14

    .line 1129
    move-object v2, v1

    check-cast v2, Landroid/animation/ObjectAnimator;

    const-string v6, "pathData"

    .line 1130
    invoke-static {v0, v3, v6, v5}, Ld/b/a/r;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    const-string v7, "propertyXName"

    const/4 v9, 0x2

    .line 1131
    invoke-static {v0, v3, v7, v9}, Ld/b/a/r;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "propertyYName"

    .line 1132
    invoke-static {v0, v3, v9, v14}, Ld/b/a/r;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_b

    if-eqz v9, :cond_a

    goto :goto_6

    .line 1133
    :cond_a
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1134
    :cond_b
    :goto_6
    invoke-static {v6}, Ld/b/a/r;->c(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v10, v10, p5

    .line 1135
    new-instance v11, Landroid/graphics/PathMeasure;

    invoke-direct {v11, v6, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1136
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 1137
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 1138
    :goto_7
    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v15

    add-float/2addr v14, v15

    .line 1139
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v15

    if-nez v15, :cond_12

    .line 1141
    new-instance v11, Landroid/graphics/PathMeasure;

    invoke-direct {v11, v6, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/16 v6, 0x64

    div-float v10, v14, v10

    float-to-int v10, v10

    add-int/2addr v10, v5

    .line 1142
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1143
    new-array v10, v6, [F

    .line 1144
    new-array v15, v6, [F

    const/4 v13, 0x2

    new-array v5, v13, [F

    add-int/lit8 v13, v6, -0x1

    int-to-float v13, v13

    div-float/2addr v14, v13

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_8
    const/4 v4, 0x0

    if-ge v8, v6, :cond_d

    .line 1145
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move/from16 p5, v6

    sub-float v6, v13, v18

    invoke-virtual {v11, v6, v5, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v4, 0x0

    .line 1146
    aget v6, v5, v4

    aput v6, v10, v8

    const/4 v4, 0x1

    .line 1147
    aget v6, v5, v4

    aput v6, v15, v8

    add-float/2addr v13, v14

    add-int/lit8 v4, v1, 0x1

    .line 1148
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_c

    .line 1149
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v13, v6

    if-lez v6, :cond_c

    .line 1150
    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->nextContour()Z

    move v1, v4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, p5

    goto :goto_8

    :cond_d
    if-eqz v7, :cond_e

    .line 1151
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    goto :goto_9

    :cond_e
    move-object v1, v4

    :goto_9
    if-eqz v9, :cond_f

    .line 1152
    invoke-static {v9, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    :cond_f
    if-nez v1, :cond_10

    const/4 v5, 0x1

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v4, v1, v8

    .line 1153
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_a

    :cond_10
    const/4 v5, 0x1

    const/4 v8, 0x0

    if-nez v4, :cond_11

    new-array v4, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v8

    .line 1154
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_a

    :cond_11
    const/4 v13, 0x2

    new-array v6, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v8

    aput-object v4, v6, v5

    .line 1155
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_a

    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_13
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    const-string v1, "propertyName"

    .line 1156
    invoke-static {v0, v3, v1, v8}, Ld/b/a/r;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_a

    :cond_14
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    :goto_a
    const-string v1, "interpolator"

    .line 1158
    invoke-static {v3, v1}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    move-object/from16 v1, v17

    goto :goto_b

    :cond_15
    move-object/from16 v1, v17

    .line 1159
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    :goto_b
    if-lez v8, :cond_16

    move-object/from16 v2, p0

    .line 1160
    invoke-static {v2, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    move-object/from16 v3, v16

    .line 1161
    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_c

    :cond_16
    move-object/from16 v3, v16

    .line 1162
    :goto_c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_17

    .line 1163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_17
    return-object v3
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .line 643
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 644
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Ld/b/a/r;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 645
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 646
    :try_start_1
    invoke-static {p0, v2}, Ld/b/a/r;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 647
    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 648
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    .line 649
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in manifest"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception p0

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    .line 758
    invoke-static {p0, p1}, Ld/b/a/r;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 759
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    .line 760
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-static {p0, v1}, Ld/b/a/r;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 762
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 763
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 424
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 425
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 426
    invoke-static {p0, p1, v0, p2}, Ld/b/a/r;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 427
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 469
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selector"

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 471
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0x14

    new-array v5, v4, [[I

    new-array v4, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 472
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v3, :cond_d

    .line 473
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ge v9, v2, :cond_0

    const/4 v10, 0x3

    if-eq v8, v10, :cond_d

    :cond_0
    const/4 v10, 0x2

    if-ne v8, v10, :cond_c

    if-gt v9, v2, :cond_c

    .line 474
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_7

    .line 475
    :cond_1
    sget-object v8, Landroidx/core/R$styleable;->ColorStateListItem:[I

    if-nez v1, :cond_2

    move-object/from16 v9, p0

    .line 476
    invoke-virtual {v9, v0, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    .line 477
    invoke-virtual {v1, v0, v8, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 478
    :goto_1
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const v11, -0xff01

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    .line 479
    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v8, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 480
    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v8, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_2

    .line 481
    :cond_3
    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v8, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 482
    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v8, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 483
    :cond_4
    :goto_2
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 484
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 485
    new-array v12, v8, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v13, v8, :cond_7

    .line 486
    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    const v3, 0x10101a5

    if-eq v15, v3, :cond_6

    const v3, 0x101031f

    if-eq v15, v3, :cond_6

    .line 487
    sget v3, Landroidx/core/R$attr;->alpha:I

    if-eq v15, v3, :cond_6

    add-int/lit8 v3, v14, 0x1

    .line 488
    invoke-interface {v0, v13, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_4

    :cond_5
    neg-int v15, v15

    :goto_4
    aput v15, v12, v14

    move v14, v3

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    goto :goto_3

    .line 489
    :cond_7
    invoke-static {v12, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v3

    .line 490
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const v11, 0xffffff

    and-int/2addr v10, v11

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v8, v10

    add-int/lit8 v10, v7, 0x1

    .line 491
    array-length v11, v4

    const/4 v12, 0x4

    const/16 v13, 0x8

    if-le v10, v11, :cond_9

    if-gt v7, v12, :cond_8

    const/16 v11, 0x8

    goto :goto_5

    :cond_8
    mul-int/lit8 v11, v7, 0x2

    .line 492
    :goto_5
    new-array v11, v11, [I

    .line 493
    invoke-static {v4, v6, v11, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v11

    .line 494
    :cond_9
    aput v8, v4, v7

    .line 495
    array-length v8, v5

    if-le v10, v8, :cond_b

    .line 496
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    if-gt v7, v12, :cond_a

    goto :goto_6

    :cond_a
    mul-int/lit8 v13, v7, 0x2

    :goto_6
    invoke-static {v8, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 497
    invoke-static {v5, v6, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v8

    .line 498
    :cond_b
    aput-object v3, v5, v7

    .line 499
    check-cast v5, [[I

    move v7, v10

    goto :goto_8

    :cond_c
    :goto_7
    move-object/from16 v9, p0

    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 500
    :cond_d
    new-array v0, v7, [I

    .line 501
    new-array v1, v7, [[I

    .line 502
    invoke-static {v4, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    invoke-static {v5, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 505
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p1, :cond_0

    .line 834
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 835
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 557
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 559
    :cond_0
    sget-boolean v0, Ld/b/a/r;->n:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 560
    :try_start_0
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ld/b/a/r;->m:Ljava/lang/reflect/Field;

    .line 561
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to retrieve mButtonDrawable field"

    .line 562
    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    :goto_0
    sput-boolean v0, Ld/b/a/r;->n:Z

    .line 564
    :cond_1
    sget-object v0, Ld/b/a/r;->m:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 565
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string v0, "Failed to get button drawable via reflection"

    .line 566
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    sput-object v2, Ld/b/a/r;->m:Ljava/lang/reflect/Field;

    :cond_2
    return-object v2
.end method

.method public static a(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .locals 2

    .line 461
    invoke-static {p0, p1}, Ld/b/a/r;->h(Landroid/os/Parcel;I)I

    move-result p1

    .line 462
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 463
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    add-int/2addr v0, p1

    .line 464
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 442
    invoke-static {p0, p1}, Ld/b/a/r;->h(Landroid/os/Parcel;I)I

    move-result p1

    .line 443
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 444
    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    add-int/2addr v0, p1

    .line 445
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2

    .line 1044
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_1

    instance-of v0, p1, Ld/i/j/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    new-instance v0, Ld/i/j/d;

    invoke-direct {v0, p1, p0}, Ld/i/j/d;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    if-eqz p0, :cond_1

    .line 7
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 9
    :goto_0
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 10
    instance-of v0, p2, Ld/b/e/e1;

    if-eqz v0, :cond_0

    .line 11
    check-cast p2, Ld/b/e/e1;

    invoke-interface {p2}, Ld/b/e/e1;->a()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static final a(Landroid/app/Activity;I)Landroidx/navigation/NavController;
    .locals 3

    if-eqz p0, :cond_1

    .line 247
    invoke-static {p0, p1}, Ld/i/a/a;->a(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    .line 248
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "Navigation.findNavController(this, viewId)"

    .line 249
    invoke-static {v0, p0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a NavController set on "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "$this$findNavController"

    .line 251
    invoke-static {p0}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(Landroid/view/View;)Landroidx/navigation/NavController;
    .locals 3

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 751
    sget v1, Landroidx/navigation/R$id;->nav_controller_view_tag:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 752
    instance-of v2, v1, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 753
    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavController;

    goto :goto_1

    .line 754
    :cond_0
    instance-of v2, v1, Landroidx/navigation/NavController;

    if-eqz v2, :cond_1

    .line 755
    check-cast v1, Landroidx/navigation/NavController;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-object v1

    .line 756
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 757
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object p0, v0

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Ld/i/b/b/a;
    .locals 2

    .line 663
    invoke-static {p1, p3}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 664
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 665
    invoke-virtual {p0, p4, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 666
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 667
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 668
    new-instance p1, Ld/i/b/b/a;

    invoke-direct {p1, p3, p3, p0}, Ld/i/b/b/a;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object p1

    .line 669
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    .line 670
    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    .line 671
    :try_start_0
    invoke-static {p1, p0, p2}, Ld/i/b/b/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Ld/i/b/b/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ComplexColorCompat"

    const-string p2, "Failed to inflate ComplexColor."

    .line 672
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, p3

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 673
    :cond_1
    new-instance p0, Ld/i/b/b/a;

    invoke-direct {p0, p3, p3, p5}, Ld/i/b/b/a;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ld/i/b/b/b;
    .locals 18

    move-object/from16 v0, p1

    .line 703
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_f

    const-string v1, "font-family"

    const/4 v4, 0x0

    move-object/from16 v5, p0

    .line 704
    invoke-interface {v5, v3, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 706
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 707
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 708
    sget-object v6, Landroidx/core/R$styleable;->FontFamily:[I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 709
    sget v6, Landroidx/core/R$styleable;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 710
    sget v7, Landroidx/core/R$styleable;->FontFamily_fontProviderPackage:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 711
    sget v8, Landroidx/core/R$styleable;->FontFamily_fontProviderQuery:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 712
    sget v9, Landroidx/core/R$styleable;->FontFamily_fontProviderCerts:I

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 713
    sget v11, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 714
    sget v12, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    const/16 v13, 0x1f4

    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 715
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x3

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 716
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 717
    invoke-static/range {p0 .. p0}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 718
    :cond_1
    invoke-static {v0, v9}, Ld/b/a/r;->a(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    .line 719
    new-instance v4, Ld/i/b/b/e;

    new-instance v1, Ld/i/f/a;

    invoke-direct {v1, v6, v7, v8, v0}, Ld/i/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v4, v1, v11, v12}, Ld/i/b/b/e;-><init>(Ld/i/f/a;II)V

    goto/16 :goto_a

    .line 720
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 721
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_c

    .line 722
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v3, :cond_3

    goto :goto_2

    .line 723
    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "font"

    .line 724
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 725
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 726
    sget-object v8, Landroidx/core/R$styleable;->FontFamilyFont:[I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 727
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    goto :goto_3

    :cond_4
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_fontWeight:I

    :goto_3
    const/16 v9, 0x190

    .line 728
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 729
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_5

    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    goto :goto_4

    :cond_5
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_fontStyle:I

    .line 730
    :goto_4
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-ne v2, v8, :cond_6

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    .line 731
    :goto_5
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_7

    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    goto :goto_6

    :cond_7
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_ttcIndex:I

    .line 732
    :goto_6
    sget v9, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    .line 733
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_8

    sget v9, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    goto :goto_7

    :cond_8
    sget v9, Landroidx/core/R$styleable;->FontFamilyFont_android_fontVariationSettings:I

    .line 734
    :goto_7
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 735
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 736
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_9

    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    goto :goto_8

    :cond_9
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_font:I

    .line 737
    :goto_8
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 738
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 739
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 740
    :goto_9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_a

    .line 741
    invoke-static/range {p0 .. p0}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 742
    :cond_a
    new-instance v7, Ld/i/b/b/d;

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Ld/i/b/b/d;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    .line 743
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 744
    :cond_b
    invoke-static/range {p0 .. p0}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 745
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_a

    .line 746
    :cond_d
    new-instance v4, Ld/i/b/b/c;

    .line 747
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ld/i/b/b/d;

    .line 748
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/i/b/b/d;

    invoke-direct {v4, v0}, Ld/i/b/b/c;-><init>([Ld/i/b/b/d;)V

    goto :goto_a

    .line 749
    :cond_e
    invoke-static/range {p0 .. p0}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_a
    return-object v4

    .line 750
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/widget/TextView;)Ld/i/g/a$a;
    .locals 8

    .line 1072
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1073
    new-instance v0, Ld/i/g/a$a;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/i/g/a$a;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0

    .line 1074
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    .line 1075
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 1076
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x17

    const/4 v5, 0x1

    if-lt v2, v4, :cond_1

    const/4 v2, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1077
    :goto_0
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 1078
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v4, :cond_2

    .line 1079
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v2

    .line 1080
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v6

    .line 1081
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v4, :cond_3

    .line 1082
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 1083
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_6

    .line 1084
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    .line 1085
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    .line 1086
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    .line 1087
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    .line 1088
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result p0

    if-eq p0, v5, :cond_5

    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    goto :goto_1

    .line 1089
    :cond_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 1090
    :cond_5
    :goto_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 1091
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v5, :cond_7

    const/4 v3, 0x1

    .line 1092
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    if-eqz v3, :cond_8

    .line 1093
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 1094
    :pswitch_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 1095
    :pswitch_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 1096
    :pswitch_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 1097
    :pswitch_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 1098
    :pswitch_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 1099
    :pswitch_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 1100
    :cond_8
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 1101
    :goto_2
    new-instance v1, Ld/i/g/a$a;

    invoke-direct {v1, v0, p0, v2, v6}, Ld/i/g/a$a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ld/m/a/i;Landroidx/fragment/app/Fragment;Z)Ld/m/a/g;
    .locals 5

    .line 56
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    .line 57
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v1

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p2, v2}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 59
    iget v3, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v3}, Ld/m/a/i;->a(I)Landroid/view/View;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 60
    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 61
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 62
    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 63
    :cond_0
    iget-object p1, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object v3

    .line 64
    :cond_1
    invoke-virtual {p2, v0, p3, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 65
    new-instance p0, Ld/m/a/g;

    invoke-direct {p0, p1}, Ld/m/a/g;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 66
    :cond_2
    invoke-virtual {p2, v0, p3, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 67
    new-instance p0, Ld/m/a/g;

    invoke-direct {p0, p1}, Ld/m/a/g;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_3
    if-eqz v1, :cond_7

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 70
    :try_start_0
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 71
    new-instance v4, Ld/m/a/g;

    invoke-direct {v4, p2}, Ld/m/a/g;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-exception p0

    .line 72
    throw p0

    :cond_5
    :goto_0
    if-nez v2, :cond_7

    .line 73
    :try_start_1
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 74
    new-instance v2, Ld/m/a/g;

    invoke-direct {v2, p2}, Ld/m/a/g;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_2
    move-exception p2

    if-nez p1, :cond_6

    .line 75
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 76
    new-instance p0, Ld/m/a/g;

    invoke-direct {p0, p1}, Ld/m/a/g;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 77
    :cond_6
    throw p2

    :cond_7
    if-nez v0, :cond_8

    return-object v3

    :cond_8
    const/16 p1, 0x1001

    if-eq v0, p1, :cond_d

    const/16 p1, 0x1003

    if-eq v0, p1, :cond_b

    const/16 p1, 0x2002

    if-eq v0, p1, :cond_9

    const/4 p1, -0x1

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_a

    .line 78
    sget p1, Landroidx/fragment/R$anim;->fragment_close_enter:I

    goto :goto_1

    :cond_a
    sget p1, Landroidx/fragment/R$anim;->fragment_close_exit:I

    goto :goto_1

    :cond_b
    if-eqz p3, :cond_c

    .line 79
    sget p1, Landroidx/fragment/R$anim;->fragment_fade_enter:I

    goto :goto_1

    :cond_c
    sget p1, Landroidx/fragment/R$anim;->fragment_fade_exit:I

    goto :goto_1

    :cond_d
    if-eqz p3, :cond_e

    .line 80
    sget p1, Landroidx/fragment/R$anim;->fragment_open_enter:I

    goto :goto_1

    :cond_e
    sget p1, Landroidx/fragment/R$anim;->fragment_open_exit:I

    :goto_1
    if-gez p1, :cond_f

    return-object v3

    .line 81
    :cond_f
    new-instance p2, Ld/m/a/g;

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-direct {p2, p0}, Ld/m/a/g;-><init>(Landroid/view/animation/Animation;)V

    return-object p2
.end method

.method public static a(Ljava/io/RandomAccessFile;)Ld/r/e;
    .locals 7

    .line 270
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    const-wide/32 v4, 0x10000

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    const v4, 0x6054b50

    .line 271
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 272
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 273
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_1

    const/4 v0, 0x2

    .line 274
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 275
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 276
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 277
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 278
    new-instance v0, Ld/r/e;

    invoke-direct {v0}, Ld/r/e;-><init>()V

    .line 279
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, v0, Ld/r/e;->b:J

    .line 280
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    int-to-long v1, p0

    and-long/2addr v1, v3

    iput-wide v1, v0, Ld/r/e;->a:J

    return-object v0

    :cond_1
    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-ltz v5, :cond_2

    goto :goto_1

    .line 281
    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "End Of Central Directory signature not found"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_3
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "File too short to be a zip file: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ".font"

    .line 259
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 260
    new-instance v3, Ljava/io/File;

    invoke-static {v1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return-object v3

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 285
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 819
    invoke-static {p1, p2}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 820
    :cond_0
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 7

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "r"

    .line 447
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    .line 448
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 449
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 450
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    .line 452
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 454
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p2

    :catchall_0
    move-exception p2

    .line 455
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 456
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    .line 457
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p2

    .line 458
    :try_start_9
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p0

    :try_start_a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 821
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 822
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 823
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 824
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 826
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 827
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 p1, 0x0

    .line 828
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 829
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 830
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld/b/a/r;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 831
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld/b/a/r;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 833
    throw p0
.end method

.method public static a([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 836
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 837
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 838
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 806
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 807
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    .line 808
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 809
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    .line 810
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ld/b/a/r;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 811
    :cond_1
    instance-of v0, p0, Ld/i/c/j/b;

    if-eqz v0, :cond_2

    .line 812
    check-cast p0, Ld/i/c/j/b;

    invoke-interface {p0}, Ld/i/c/j/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ld/b/a/r;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 813
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_4

    .line 814
    check-cast p0, Landroid/graphics/drawable/DrawableContainer;

    .line 815
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    .line 816
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 817
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 818
    invoke-static {v2}, Ld/b/a/r;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 689
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 698
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 1

    .line 239
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_0

    return-void

    .line 240
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called on the handler thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/os/Parcel;II)V
    .locals 1

    const/4 v0, 0x4

    .line 42
    invoke-static {p0, p1, v0}, Ld/b/a/r;->c(Landroid/os/Parcel;II)V

    .line 43
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IJ)V
    .locals 1

    const/16 v0, 0x8

    .line 82
    invoke-static {p0, p1, v0}, Ld/b/a/r;->c(Landroid/os/Parcel;II)V

    .line 83
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 465
    invoke-static {p0, p1, p2}, Ld/b/a/r;->c(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 466
    :cond_1
    invoke-static {p0, p1}, Ld/b/a/r;->j(Landroid/os/Parcel;I)I

    move-result p1

    .line 467
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 468
    invoke-static {p0, p1}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 507
    invoke-static {p0, p1, p2}, Ld/b/a/r;->c(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 508
    :cond_1
    invoke-static {p0, p1}, Ld/b/a/r;->j(Landroid/os/Parcel;I)I

    move-result p1

    .line 509
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 510
    invoke-static {p0, p1}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 438
    invoke-static {p0, p1, p2}, Ld/b/a/r;->c(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 439
    :cond_1
    invoke-static {p0, p1}, Ld/b/a/r;->j(Landroid/os/Parcel;I)I

    move-result p1

    .line 440
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    invoke-static {p0, p1}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    .line 890
    invoke-static {p0, p1, v0}, Ld/b/a/r;->c(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 891
    :cond_1
    invoke-static {p0, p1}, Ld/b/a/r;->j(Landroid/os/Parcel;I)I

    move-result p1

    .line 892
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 893
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 894
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-nez v2, :cond_2

    .line 895
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 896
    :cond_2
    invoke-static {p0, v2, v0}, Ld/b/a/r;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    :cond_3
    invoke-static {p0, p1}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;IZ)V
    .locals 1

    const/4 v0, 0x4

    .line 5
    invoke-static {p0, p1, v0}, Ld/b/a/r;->c(Landroid/os/Parcel;II)V

    .line 6
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    .line 881
    invoke-static {p0, p1, v0}, Ld/b/a/r;->c(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 882
    :cond_1
    invoke-static {p0, p1}, Ld/b/a/r;->j(Landroid/os/Parcel;I)I

    move-result p1

    .line 883
    array-length p4, p2

    .line 884
    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_3

    .line 885
    aget-object v2, p2, v1

    if-nez v2, :cond_2

    .line 886
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 887
    :cond_2
    invoke-static {p0, v2, p3}, Ld/b/a/r;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 888
    :cond_3
    invoke-static {p0, p1}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    .line 898
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    .line 899
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 901
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 902
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 903
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p1, v1

    .line 904
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Ld/b/e/a1;->G:Ld/b/e/a1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Ld/b/e/a1;->x:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 48
    invoke-static {v1}, Ld/b/e/a1;->a(Ld/b/e/a1;)V

    .line 49
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    sget-object p1, Ld/b/e/a1;->H:Ld/b/e/a1;

    if-eqz p1, :cond_2

    iget-object v0, p1, Ld/b/e/a1;->x:Landroid/view/View;

    if-ne v0, p0, :cond_2

    .line 51
    invoke-virtual {p1}, Ld/b/e/a1;->b()V

    .line 52
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 54
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    .line 55
    :cond_3
    new-instance v0, Ld/b/e/a1;

    invoke-direct {v0, p0, p1}, Ld/b/e/a1;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 7

    .line 84
    sget-boolean v0, Ld/b/a/r;->t:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ViewUtilsApi18"

    if-nez v0, :cond_0

    .line 85
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v4, "suppressLayout"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ld/b/a/r;->s:Ljava/lang/reflect/Method;

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Failed to retrieve suppressLayout method"

    .line 87
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :goto_0
    sput-boolean v2, Ld/b/a/r;->t:Z

    .line 89
    :cond_0
    sget-object v0, Ld/b/a/r;->s:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 90
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Error invoking suppressLayout method"

    .line 91
    invoke-static {v3, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p0

    const-string p1, "Failed to invoke suppressLayout method"

    .line 92
    invoke-static {v3, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;I)V
    .locals 6

    .line 690
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 691
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    return-void

    .line 692
    :cond_0
    sget-boolean v0, Ld/b/a/r;->p:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 693
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setWindowLayoutType"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ld/b/a/r;->o:Ljava/lang/reflect/Method;

    .line 694
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :catch_0
    sput-boolean v2, Ld/b/a/r;->p:Z

    .line 696
    :cond_1
    sget-object v0, Ld/b/a/r;->o:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 697
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .locals 4

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 429
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    goto :goto_1

    .line 430
    :cond_0
    sget-boolean v0, Ld/b/a/r;->r:Z

    const-string v1, "PopupWindowCompatApi21"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 431
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "mOverlapAnchor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ld/b/a/r;->q:Ljava/lang/reflect/Field;

    .line 432
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Could not fetch mOverlapAnchor field from PopupWindow"

    .line 433
    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    :goto_0
    sput-boolean v0, Ld/b/a/r;->r:Z

    .line 435
    :cond_1
    sget-object v0, Ld/b/a/r;->q:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 436
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Could not set overlap anchor field in PopupWindow"

    .line 437
    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 3

    .line 1056
    invoke-static {p1}, Ld/b/a/r;->a(I)I

    .line 1057
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1058
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void

    .line 1059
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 1060
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1061
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    .line 1062
    :cond_1
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1063
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_2

    add-int/2addr p1, v0

    .line 1064
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    .line 1065
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 1066
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/widget/TextView;Ld/i/g/a;)V
    .locals 3

    .line 1102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    if-eqz p1, :cond_0

    .line 1103
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1104
    :cond_0
    throw v1

    .line 1105
    :cond_1
    invoke-static {p0}, Ld/b/a/r;->a(Landroid/widget/TextView;)Ld/i/g/a$a;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 1106
    invoke-virtual {v0, v1}, Ld/i/g/a$a;->a(Ld/i/g/a$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1107
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 1108
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given text can not be applied to TextView."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1109
    :cond_3
    throw v1
.end method

.method public static a(Ld/g/a/h/e;)V
    .locals 10

    .line 511
    iget v0, p0, Ld/g/a/h/e;->C0:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Ld/g/a/h/e;->w0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 513
    iget-object v0, p0, Ld/g/a/h/e;->w0:Ljava/util/List;

    new-instance v1, Ld/g/a/h/f;

    iget-object p0, p0, Ld/g/a/h/n;->k0:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ld/g/a/h/f;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Ld/g/a/h/e;->D0:Z

    .line 515
    iput-boolean v2, p0, Ld/g/a/h/e;->x0:Z

    .line 516
    iput-boolean v2, p0, Ld/g/a/h/e;->y0:Z

    .line 517
    iput-boolean v2, p0, Ld/g/a/h/e;->z0:Z

    .line 518
    iget-object v1, p0, Ld/g/a/h/n;->k0:Ljava/util/ArrayList;

    .line 519
    iget-object v3, p0, Ld/g/a/h/e;->w0:Ljava/util/List;

    .line 520
    invoke-virtual {p0}, Ld/g/a/h/d;->e()Ld/g/a/h/d$a;

    move-result-object v4

    sget-object v5, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 521
    :goto_0
    invoke-virtual {p0}, Ld/g/a/h/d;->h()Ld/g/a/h/d$a;

    move-result-object v5

    sget-object v6, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x1

    .line 522
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 523
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/g/a/h/d;

    const/4 v9, 0x0

    .line 524
    iput-object v9, v8, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    .line 525
    iput-boolean v2, v8, Ld/g/a/h/d;->d0:Z

    .line 526
    invoke-virtual {v8}, Ld/g/a/h/d;->l()V

    goto :goto_4

    .line 527
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/g/a/h/d;

    .line 528
    iget-object v8, v7, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    if-nez v8, :cond_6

    .line 529
    new-instance v8, Ld/g/a/h/f;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v8, v9, v0}, Ld/g/a/h/f;-><init>(Ljava/util/List;Z)V

    .line 530
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-static {v7, v8, v3, v6}, Ld/b/a/r;->a(Ld/g/a/h/d;Ld/g/a/h/f;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_6

    .line 532
    iget-object v0, p0, Ld/g/a/h/e;->w0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 533
    iget-object v0, p0, Ld/g/a/h/e;->w0:Ljava/util/List;

    new-instance v1, Ld/g/a/h/f;

    iget-object v3, p0, Ld/g/a/h/n;->k0:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ld/g/a/h/f;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 534
    iput-boolean v2, p0, Ld/g/a/h/e;->D0:Z

    return-void

    .line 535
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/g/a/h/f;

    .line 536
    invoke-static {v8, v2}, Ld/b/a/r;->a(Ld/g/a/h/f;I)I

    move-result v9

    .line 537
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 538
    invoke-static {v8, v0}, Ld/b/a/r;->a(Ld/g/a/h/f;I)I

    move-result v8

    .line 539
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    .line 540
    sget-object v1, Ld/g/a/h/d$a;->FIXED:Ld/g/a/h/d$a;

    invoke-virtual {p0, v1}, Ld/g/a/h/d;->a(Ld/g/a/h/d$a;)V

    .line 541
    invoke-virtual {p0, v6}, Ld/g/a/h/d;->f(I)V

    .line 542
    iput-boolean v0, p0, Ld/g/a/h/e;->x0:Z

    .line 543
    iput-boolean v0, p0, Ld/g/a/h/e;->y0:Z

    .line 544
    iput v6, p0, Ld/g/a/h/e;->A0:I

    :cond_9
    if-eqz v5, :cond_a

    .line 545
    sget-object v1, Ld/g/a/h/d$a;->FIXED:Ld/g/a/h/d$a;

    invoke-virtual {p0, v1}, Ld/g/a/h/d;->b(Ld/g/a/h/d$a;)V

    .line 546
    invoke-virtual {p0, v7}, Ld/g/a/h/d;->e(I)V

    .line 547
    iput-boolean v0, p0, Ld/g/a/h/e;->x0:Z

    .line 548
    iput-boolean v0, p0, Ld/g/a/h/e;->z0:Z

    .line 549
    iput v7, p0, Ld/g/a/h/e;->B0:I

    .line 550
    :cond_a
    invoke-virtual {p0}, Ld/g/a/h/d;->i()I

    move-result v1

    invoke-static {v3, v2, v1}, Ld/b/a/r;->a(Ljava/util/List;II)V

    .line 551
    invoke-virtual {p0}, Ld/g/a/h/d;->d()I

    move-result p0

    invoke-static {v3, v0, p0}, Ld/b/a/r;->a(Ljava/util/List;II)V

    return-void
.end method

.method public static a(Ld/g/a/h/e;Ld/g/a/e;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 93
    iget v5, v0, Ld/g/a/h/e;->s0:I

    .line 94
    iget-object v6, v0, Ld/g/a/h/e;->v0:[Ld/g/a/h/b;

    const/4 v7, 0x0

    goto :goto_0

    .line 95
    :cond_0
    iget v5, v0, Ld/g/a/h/e;->t0:I

    .line 96
    iget-object v6, v0, Ld/g/a/h/e;->u0:[Ld/g/a/h/b;

    const/4 v7, 0x2

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_52

    .line 97
    aget-object v9, v6, v8

    .line 98
    iget-boolean v10, v9, Ld/g/a/h/b;->q:Z

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v14, 0x1

    if-nez v10, :cond_13

    .line 99
    iget v10, v9, Ld/g/a/h/b;->l:I

    mul-int/lit8 v10, v10, 0x2

    .line 100
    iget-object v15, v9, Ld/g/a/h/b;->a:Ld/g/a/h/d;

    move-object v4, v15

    const/16 v16, 0x0

    :goto_2
    if-nez v16, :cond_10

    .line 101
    iget v13, v9, Ld/g/a/h/b;->i:I

    add-int/2addr v13, v14

    iput v13, v9, Ld/g/a/h/b;->i:I

    .line 102
    iget-object v13, v15, Ld/g/a/h/d;->i0:[Ld/g/a/h/d;

    iget v14, v9, Ld/g/a/h/b;->l:I

    aput-object v11, v13, v14

    .line 103
    iget-object v13, v15, Ld/g/a/h/d;->h0:[Ld/g/a/h/d;

    aput-object v11, v13, v14

    .line 104
    iget v13, v15, Ld/g/a/h/d;->Y:I

    if-eq v13, v12, :cond_b

    .line 105
    iget-object v13, v9, Ld/g/a/h/b;->b:Ld/g/a/h/d;

    if-nez v13, :cond_1

    .line 106
    iput-object v15, v9, Ld/g/a/h/b;->b:Ld/g/a/h/d;

    .line 107
    :cond_1
    iput-object v15, v9, Ld/g/a/h/b;->d:Ld/g/a/h/d;

    .line 108
    iget-object v13, v15, Ld/g/a/h/d;->C:[Ld/g/a/h/d$a;

    iget v14, v9, Ld/g/a/h/b;->l:I

    aget-object v13, v13, v14

    sget-object v11, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v13, v11, :cond_b

    iget-object v11, v15, Ld/g/a/h/d;->g:[I

    aget v13, v11, v14

    const/4 v12, 0x3

    if-eqz v13, :cond_2

    aget v13, v11, v14

    if-eq v13, v12, :cond_2

    aget v11, v11, v14

    if-ne v11, v3, :cond_b

    .line 109
    :cond_2
    iget v11, v9, Ld/g/a/h/b;->j:I

    const/4 v13, 0x1

    add-int/2addr v11, v13

    iput v11, v9, Ld/g/a/h/b;->j:I

    .line 110
    iget-object v11, v15, Ld/g/a/h/d;->g0:[F

    iget v13, v9, Ld/g/a/h/b;->l:I

    aget v14, v11, v13

    const/16 v17, 0x0

    cmpl-float v19, v14, v17

    if-lez v19, :cond_3

    .line 111
    iget v3, v9, Ld/g/a/h/b;->k:F

    aget v11, v11, v13

    add-float/2addr v3, v11

    iput v3, v9, Ld/g/a/h/b;->k:F

    .line 112
    :cond_3
    iget v3, v9, Ld/g/a/h/b;->l:I

    .line 113
    iget v11, v15, Ld/g/a/h/d;->Y:I

    const/16 v13, 0x8

    if-eq v11, v13, :cond_5

    .line 114
    iget-object v11, v15, Ld/g/a/h/d;->C:[Ld/g/a/h/d$a;

    aget-object v11, v11, v3

    sget-object v13, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v11, v13, :cond_5

    iget-object v11, v15, Ld/g/a/h/d;->g:[I

    aget v13, v11, v3

    if-eqz v13, :cond_4

    aget v3, v11, v3

    if-ne v3, v12, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_8

    const/4 v3, 0x0

    cmpg-float v11, v14, v3

    if-gez v11, :cond_6

    const/4 v3, 0x1

    .line 115
    iput-boolean v3, v9, Ld/g/a/h/b;->n:Z

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    .line 116
    iput-boolean v3, v9, Ld/g/a/h/b;->o:Z

    .line 117
    :goto_4
    iget-object v3, v9, Ld/g/a/h/b;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v9, Ld/g/a/h/b;->h:Ljava/util/ArrayList;

    .line 119
    :cond_7
    iget-object v3, v9, Ld/g/a/h/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_8
    iget-object v3, v9, Ld/g/a/h/b;->f:Ld/g/a/h/d;

    if-nez v3, :cond_9

    .line 121
    iput-object v15, v9, Ld/g/a/h/b;->f:Ld/g/a/h/d;

    .line 122
    :cond_9
    iget-object v3, v9, Ld/g/a/h/b;->g:Ld/g/a/h/d;

    if-eqz v3, :cond_a

    .line 123
    iget-object v3, v3, Ld/g/a/h/d;->h0:[Ld/g/a/h/d;

    iget v11, v9, Ld/g/a/h/b;->l:I

    aput-object v15, v3, v11

    .line 124
    :cond_a
    iput-object v15, v9, Ld/g/a/h/b;->g:Ld/g/a/h/d;

    :cond_b
    if-eq v4, v15, :cond_c

    .line 125
    iget-object v3, v4, Ld/g/a/h/d;->i0:[Ld/g/a/h/d;

    iget v4, v9, Ld/g/a/h/b;->l:I

    aput-object v15, v3, v4

    .line 126
    :cond_c
    iget-object v3, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v4, v10, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_d

    .line 127
    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    .line 128
    iget-object v4, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v11, v4, v10

    iget-object v11, v11, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v11, :cond_d

    aget-object v4, v4, v10

    iget-object v4, v4, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v4, v4, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    if-eq v4, v15, :cond_e

    :cond_d
    const/4 v3, 0x0

    :cond_e
    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move-object v3, v15

    const/16 v16, 0x1

    :goto_5
    move-object v4, v15

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v14, 0x1

    move-object v15, v3

    const/4 v3, 0x2

    goto/16 :goto_2

    .line 129
    :cond_10
    iput-object v15, v9, Ld/g/a/h/b;->c:Ld/g/a/h/d;

    .line 130
    iget v3, v9, Ld/g/a/h/b;->l:I

    if-nez v3, :cond_11

    iget-boolean v3, v9, Ld/g/a/h/b;->m:Z

    if-eqz v3, :cond_11

    .line 131
    iput-object v15, v9, Ld/g/a/h/b;->e:Ld/g/a/h/d;

    goto :goto_6

    .line 132
    :cond_11
    iget-object v3, v9, Ld/g/a/h/b;->a:Ld/g/a/h/d;

    iput-object v3, v9, Ld/g/a/h/b;->e:Ld/g/a/h/d;

    .line 133
    :goto_6
    iget-boolean v3, v9, Ld/g/a/h/b;->o:Z

    if-eqz v3, :cond_12

    iget-boolean v3, v9, Ld/g/a/h/b;->n:Z

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v9, Ld/g/a/h/b;->p:Z

    :cond_13
    const/4 v3, 0x1

    .line 134
    iput-boolean v3, v9, Ld/g/a/h/b;->q:Z

    const/4 v3, 0x4

    .line 135
    invoke-virtual {v0, v3}, Ld/g/a/h/e;->g(I)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 136
    iget-object v3, v9, Ld/g/a/h/b;->a:Ld/g/a/h/d;

    .line 137
    iget-object v4, v9, Ld/g/a/h/b;->c:Ld/g/a/h/d;

    .line 138
    iget-object v10, v9, Ld/g/a/h/b;->b:Ld/g/a/h/d;

    .line 139
    iget-object v11, v9, Ld/g/a/h/b;->d:Ld/g/a/h/d;

    .line 140
    iget-object v12, v9, Ld/g/a/h/b;->e:Ld/g/a/h/d;

    .line 141
    iget v13, v9, Ld/g/a/h/b;->k:F

    .line 142
    iget-object v14, v0, Ld/g/a/h/d;->C:[Ld/g/a/h/d$a;

    aget-object v14, v14, v2

    sget-object v14, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    if-nez v2, :cond_16

    .line 143
    iget v14, v12, Ld/g/a/h/d;->e0:I

    if-nez v14, :cond_14

    const/4 v14, 0x1

    goto :goto_8

    :cond_14
    const/4 v14, 0x0

    .line 144
    :goto_8
    iget v15, v12, Ld/g/a/h/d;->e0:I

    move/from16 v16, v5

    const/4 v5, 0x1

    if-ne v15, v5, :cond_15

    const/4 v5, 0x1

    goto :goto_9

    :cond_15
    const/4 v5, 0x0

    .line 145
    :goto_9
    iget v12, v12, Ld/g/a/h/d;->e0:I

    const/4 v15, 0x2

    if-ne v12, v15, :cond_19

    goto :goto_c

    :cond_16
    move/from16 v16, v5

    .line 146
    iget v5, v12, Ld/g/a/h/d;->f0:I

    if-nez v5, :cond_17

    const/4 v5, 0x1

    goto :goto_a

    :cond_17
    const/4 v5, 0x0

    .line 147
    :goto_a
    iget v14, v12, Ld/g/a/h/d;->f0:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_18

    const/4 v14, 0x1

    goto :goto_b

    :cond_18
    const/4 v14, 0x0

    .line 148
    :goto_b
    iget v12, v12, Ld/g/a/h/d;->f0:I

    const/4 v15, 0x2

    move/from16 v26, v14

    move v14, v5

    move/from16 v5, v26

    if-ne v12, v15, :cond_19

    :goto_c
    const/4 v12, 0x1

    goto :goto_d

    :cond_19
    const/4 v12, 0x0

    :goto_d
    move-object v15, v3

    move-object/from16 v22, v6

    move/from16 v23, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_e
    if-nez v21, :cond_27

    .line 149
    iget v0, v15, Ld/g/a/h/d;->Y:I

    move-object/from16 v24, v9

    const/16 v9, 0x8

    if-eq v0, v9, :cond_1d

    add-int/lit8 v6, v6, 0x1

    if-nez v2, :cond_1a

    .line 150
    invoke-virtual {v15}, Ld/g/a/h/d;->i()I

    move-result v0

    goto :goto_f

    .line 151
    :cond_1a
    invoke-virtual {v15}, Ld/g/a/h/d;->d()I

    move-result v0

    :goto_f
    int-to-float v0, v0

    add-float v19, v19, v0

    if-eq v15, v10, :cond_1b

    .line 152
    iget-object v0, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v0

    int-to-float v0, v0

    add-float v19, v19, v0

    :cond_1b
    if-eq v15, v11, :cond_1c

    .line 153
    iget-object v0, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v9, v7, 0x1

    aget-object v0, v0, v9

    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v0

    int-to-float v0, v0

    add-float v19, v19, v0

    .line 154
    :cond_1c
    iget-object v0, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v0

    int-to-float v0, v0

    add-float v20, v20, v0

    .line 155
    iget-object v0, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v9, v7, 0x1

    aget-object v0, v0, v9

    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v0

    int-to-float v0, v0

    add-float v20, v20, v0

    .line 156
    :cond_1d
    iget-object v0, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v0, v0, v7

    .line 157
    iget v0, v15, Ld/g/a/h/d;->Y:I

    const/16 v9, 0x8

    if-eq v0, v9, :cond_23

    .line 158
    iget-object v0, v15, Ld/g/a/h/d;->C:[Ld/g/a/h/d$a;

    aget-object v0, v0, v2

    sget-object v9, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v0, v9, :cond_23

    add-int/lit8 v8, v8, 0x1

    if-nez v2, :cond_1f

    .line 159
    iget v0, v15, Ld/g/a/h/d;->e:I

    if-eqz v0, :cond_1e

    :goto_10
    goto :goto_11

    .line 160
    :cond_1e
    iget v0, v15, Ld/g/a/h/d;->h:I

    if-nez v0, :cond_20

    iget v0, v15, Ld/g/a/h/d;->i:I

    if-eqz v0, :cond_22

    goto :goto_11

    .line 161
    :cond_1f
    iget v0, v15, Ld/g/a/h/d;->f:I

    if-eqz v0, :cond_21

    :cond_20
    :goto_11
    move-object v13, v1

    goto/16 :goto_2b

    .line 162
    :cond_21
    iget v0, v15, Ld/g/a/h/d;->k:I

    if-nez v0, :cond_20

    iget v0, v15, Ld/g/a/h/d;->l:I

    if-eqz v0, :cond_22

    goto :goto_12

    .line 163
    :cond_22
    iget v0, v15, Ld/g/a/h/d;->G:F

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_23

    :goto_12
    goto :goto_10

    .line 164
    :cond_23
    iget-object v0, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v9, v7, 0x1

    aget-object v0, v0, v9

    iget-object v0, v0, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v0, :cond_25

    .line 165
    iget-object v0, v0, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    .line 166
    iget-object v9, v0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    move-object/from16 v25, v0

    aget-object v0, v9, v7

    iget-object v0, v0, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v0, :cond_25

    aget-object v0, v9, v7

    iget-object v0, v0, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v0, v0, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    if-eq v0, v15, :cond_24

    goto :goto_13

    :cond_24
    move-object/from16 v0, v25

    goto :goto_14

    :cond_25
    :goto_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_26

    move-object v15, v0

    move-object/from16 v9, v24

    move-object/from16 v0, p0

    goto/16 :goto_e

    :cond_26
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v9, v24

    goto/16 :goto_e

    :cond_27
    move-object/from16 v24, v9

    .line 167
    iget-object v0, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v0, v0, v7

    .line 168
    iget-object v0, v0, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 169
    iget-object v9, v4, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v18, v7, 0x1

    aget-object v9, v9, v18

    .line 170
    iget-object v9, v9, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    move-object/from16 v21, v3

    .line 171
    iget-object v3, v0, Ld/g/a/h/j;->d:Ld/g/a/h/j;

    if-eqz v3, :cond_20

    iget-object v1, v9, Ld/g/a/h/j;->d:Ld/g/a/h/j;

    if-nez v1, :cond_28

    goto :goto_15

    .line 172
    :cond_28
    iget v3, v3, Ld/g/a/h/l;->b:I

    move/from16 v25, v13

    const/4 v13, 0x1

    if-ne v3, v13, :cond_2a

    iget v1, v1, Ld/g/a/h/l;->b:I

    if-eq v1, v13, :cond_29

    goto :goto_15

    :cond_29
    if-lez v8, :cond_2b

    if-eq v8, v6, :cond_2b

    :cond_2a
    :goto_15
    move-object/from16 v13, p1

    goto/16 :goto_2b

    :cond_2b
    if-nez v12, :cond_2d

    if-nez v14, :cond_2d

    if-eqz v5, :cond_2c

    goto :goto_16

    :cond_2c
    const/4 v1, 0x0

    goto :goto_18

    :cond_2d
    :goto_16
    if-eqz v10, :cond_2e

    .line 173
    iget-object v1, v10, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ld/g/a/h/c;->a()I

    move-result v1

    int-to-float v1, v1

    goto :goto_17

    :cond_2e
    const/4 v1, 0x0

    :goto_17
    if-eqz v11, :cond_2f

    .line 174
    iget-object v3, v11, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Ld/g/a/h/c;->a()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 175
    :cond_2f
    :goto_18
    iget-object v3, v0, Ld/g/a/h/j;->d:Ld/g/a/h/j;

    iget v3, v3, Ld/g/a/h/j;->g:F

    .line 176
    iget-object v9, v9, Ld/g/a/h/j;->d:Ld/g/a/h/j;

    iget v9, v9, Ld/g/a/h/j;->g:F

    cmpg-float v11, v3, v9

    if-gez v11, :cond_30

    sub-float/2addr v9, v3

    goto :goto_19

    :cond_30
    sub-float v9, v3, v9

    :goto_19
    sub-float v9, v9, v19

    const/high16 v11, -0x40800000    # -1.0f

    if-lez v8, :cond_39

    if-ne v8, v6, :cond_39

    .line 177
    iget-object v1, v15, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-eqz v1, :cond_31

    .line 178
    iget-object v1, v1, Ld/g/a/h/d;->C:[Ld/g/a/h/d$a;

    aget-object v1, v1, v2

    sget-object v5, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    if-ne v1, v5, :cond_31

    goto :goto_15

    :cond_31
    add-float v9, v9, v19

    sub-float v9, v9, v20

    move v1, v3

    move-object/from16 v3, v21

    :goto_1a
    if-eqz v3, :cond_37

    .line 179
    iget-object v5, v3, Ld/g/a/h/d;->i0:[Ld/g/a/h/d;

    aget-object v5, v5, v2

    if-nez v5, :cond_33

    if-ne v3, v4, :cond_32

    goto :goto_1b

    :cond_32
    move-object/from16 v13, p1

    goto :goto_1d

    :cond_33
    :goto_1b
    int-to-float v6, v8

    div-float v6, v9, v6

    const/4 v10, 0x0

    cmpl-float v12, v25, v10

    if-lez v12, :cond_35

    .line 180
    iget-object v6, v3, Ld/g/a/h/d;->g0:[F

    aget v10, v6, v2

    cmpl-float v10, v10, v11

    if-nez v10, :cond_34

    const/4 v6, 0x0

    goto :goto_1c

    .line 181
    :cond_34
    aget v6, v6, v2

    mul-float v6, v6, v9

    div-float v6, v6, v25

    .line 182
    :cond_35
    :goto_1c
    iget v10, v3, Ld/g/a/h/d;->Y:I

    const/16 v12, 0x8

    if-ne v10, v12, :cond_36

    const/4 v6, 0x0

    .line 183
    :cond_36
    iget-object v10, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Ld/g/a/h/c;->a()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v1, v10

    .line 184
    iget-object v10, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v10, v10, v7

    .line 185
    iget-object v10, v10, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 186
    iget-object v12, v0, Ld/g/a/h/j;->f:Ld/g/a/h/j;

    invoke-virtual {v10, v12, v1}, Ld/g/a/h/j;->a(Ld/g/a/h/j;F)V

    .line 187
    iget-object v10, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v10, v10, v18

    .line 188
    iget-object v10, v10, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 189
    iget-object v12, v0, Ld/g/a/h/j;->f:Ld/g/a/h/j;

    add-float/2addr v1, v6

    invoke-virtual {v10, v12, v1}, Ld/g/a/h/j;->a(Ld/g/a/h/j;F)V

    .line 190
    iget-object v6, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v6, v7

    .line 191
    iget-object v6, v6, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    move-object/from16 v13, p1

    .line 192
    invoke-virtual {v6, v13}, Ld/g/a/h/j;->a(Ld/g/a/e;)V

    .line 193
    iget-object v6, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v6, v18

    .line 194
    iget-object v6, v6, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 195
    invoke-virtual {v6, v13}, Ld/g/a/h/j;->a(Ld/g/a/e;)V

    .line 196
    iget-object v3, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Ld/g/a/h/c;->a()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    :goto_1d
    move-object v3, v5

    goto :goto_1a

    :cond_37
    move-object/from16 v13, p1

    :cond_38
    :goto_1e
    const/4 v14, 0x1

    goto/16 :goto_2c

    :cond_39
    move-object/from16 v13, p1

    const/4 v8, 0x0

    cmpg-float v8, v9, v8

    if-gez v8, :cond_3a

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    :cond_3a
    if-eqz v12, :cond_40

    sub-float/2addr v9, v1

    if-nez v2, :cond_3b

    move-object/from16 v8, v21

    .line 197
    iget v11, v8, Ld/g/a/h/d;->V:F

    goto :goto_1f

    :cond_3b
    move-object/from16 v8, v21

    const/4 v1, 0x1

    if-ne v2, v1, :cond_3c

    .line 198
    iget v11, v8, Ld/g/a/h/d;->W:F

    :cond_3c
    :goto_1f
    mul-float v9, v9, v11

    add-float/2addr v9, v3

    move-object v3, v8

    :goto_20
    if-eqz v3, :cond_41

    .line 199
    iget-object v1, v3, Ld/g/a/h/d;->i0:[Ld/g/a/h/d;

    aget-object v1, v1, v2

    if-nez v1, :cond_3d

    if-ne v3, v4, :cond_3f

    :cond_3d
    if-nez v2, :cond_3e

    .line 200
    invoke-virtual {v3}, Ld/g/a/h/d;->i()I

    move-result v5

    goto :goto_21

    .line 201
    :cond_3e
    invoke-virtual {v3}, Ld/g/a/h/d;->d()I

    move-result v5

    :goto_21
    int-to-float v5, v5

    .line 202
    iget-object v6, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ld/g/a/h/c;->a()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v9, v6

    .line 203
    iget-object v6, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v6, v7

    .line 204
    iget-object v6, v6, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 205
    iget-object v8, v0, Ld/g/a/h/j;->f:Ld/g/a/h/j;

    invoke-virtual {v6, v8, v9}, Ld/g/a/h/j;->a(Ld/g/a/h/j;F)V

    .line 206
    iget-object v6, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v6, v18

    .line 207
    iget-object v6, v6, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 208
    iget-object v8, v0, Ld/g/a/h/j;->f:Ld/g/a/h/j;

    add-float/2addr v9, v5

    invoke-virtual {v6, v8, v9}, Ld/g/a/h/j;->a(Ld/g/a/h/j;F)V

    .line 209
    iget-object v5, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v5, v5, v7

    .line 210
    iget-object v5, v5, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 211
    invoke-virtual {v5, v13}, Ld/g/a/h/j;->a(Ld/g/a/e;)V

    .line 212
    iget-object v5, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v5, v5, v18

    .line 213
    iget-object v5, v5, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 214
    invoke-virtual {v5, v13}, Ld/g/a/h/j;->a(Ld/g/a/e;)V

    .line 215
    iget-object v3, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Ld/g/a/h/c;->a()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v9, v3

    :cond_3f
    move-object v3, v1

    goto :goto_20

    :cond_40
    move-object/from16 v8, v21

    if-nez v14, :cond_42

    if-eqz v5, :cond_41

    goto :goto_22

    :cond_41
    const/4 v5, 0x1

    goto :goto_1e

    :cond_42
    :goto_22
    if-eqz v14, :cond_43

    goto :goto_23

    :cond_43
    if-eqz v5, :cond_44

    :goto_23
    sub-float/2addr v9, v1

    :cond_44
    add-int/lit8 v1, v6, 0x1

    int-to-float v1, v1

    div-float v1, v9, v1

    if-eqz v5, :cond_46

    const/4 v11, 0x1

    if-le v6, v11, :cond_45

    add-int/lit8 v1, v6, -0x1

    int-to-float v1, v1

    goto :goto_24

    :cond_45
    const/high16 v1, 0x40000000    # 2.0f

    :goto_24
    div-float v1, v9, v1

    .line 216
    :cond_46
    iget v9, v8, Ld/g/a/h/d;->Y:I

    const/16 v11, 0x8

    if-eq v9, v11, :cond_47

    add-float v9, v3, v1

    goto :goto_25

    :cond_47
    move v9, v3

    :goto_25
    if-eqz v5, :cond_48

    const/4 v5, 0x1

    if-le v6, v5, :cond_49

    .line 217
    iget-object v6, v10, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ld/g/a/h/c;->a()I

    move-result v6

    int-to-float v6, v6

    add-float v9, v6, v3

    goto :goto_26

    :cond_48
    const/4 v5, 0x1

    :cond_49
    :goto_26
    if-eqz v14, :cond_4a

    if-eqz v10, :cond_4a

    .line 218
    iget-object v3, v10, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ld/g/a/h/c;->a()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v9, v3

    :cond_4a
    move-object v3, v8

    :goto_27
    if-eqz v3, :cond_38

    .line 219
    iget-object v6, v3, Ld/g/a/h/d;->i0:[Ld/g/a/h/d;

    aget-object v6, v6, v2

    if-nez v6, :cond_4c

    if-ne v3, v4, :cond_4b

    goto :goto_28

    :cond_4b
    const/16 v8, 0x8

    goto :goto_2a

    :cond_4c
    :goto_28
    if-nez v2, :cond_4d

    .line 220
    invoke-virtual {v3}, Ld/g/a/h/d;->i()I

    move-result v8

    goto :goto_29

    .line 221
    :cond_4d
    invoke-virtual {v3}, Ld/g/a/h/d;->d()I

    move-result v8

    :goto_29
    int-to-float v8, v8

    if-eq v3, v10, :cond_4e

    .line 222
    iget-object v11, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ld/g/a/h/c;->a()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    .line 223
    :cond_4e
    iget-object v11, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v11, v11, v7

    .line 224
    iget-object v11, v11, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 225
    iget-object v12, v0, Ld/g/a/h/j;->f:Ld/g/a/h/j;

    invoke-virtual {v11, v12, v9}, Ld/g/a/h/j;->a(Ld/g/a/h/j;F)V

    .line 226
    iget-object v11, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v11, v11, v18

    .line 227
    iget-object v11, v11, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 228
    iget-object v12, v0, Ld/g/a/h/j;->f:Ld/g/a/h/j;

    add-float v14, v9, v8

    invoke-virtual {v11, v12, v14}, Ld/g/a/h/j;->a(Ld/g/a/h/j;F)V

    .line 229
    iget-object v11, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v11, v11, v7

    .line 230
    iget-object v11, v11, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 231
    invoke-virtual {v11, v13}, Ld/g/a/h/j;->a(Ld/g/a/e;)V

    .line 232
    iget-object v11, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v11, v11, v18

    .line 233
    iget-object v11, v11, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 234
    invoke-virtual {v11, v13}, Ld/g/a/h/j;->a(Ld/g/a/e;)V

    .line 235
    iget-object v3, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Ld/g/a/h/c;->a()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v8, v3

    add-float/2addr v9, v8

    if-eqz v6, :cond_4b

    .line 236
    iget v3, v6, Ld/g/a/h/d;->Y:I

    const/16 v8, 0x8

    if-eq v3, v8, :cond_4f

    add-float/2addr v9, v1

    :cond_4f
    :goto_2a
    move-object v3, v6

    goto :goto_27

    :goto_2b
    const/4 v14, 0x0

    :goto_2c
    move-object/from16 v0, p0

    if-nez v14, :cond_51

    move-object/from16 v1, v24

    .line 237
    invoke-static {v0, v13, v2, v7, v1}, Ld/b/a/r;->a(Ld/g/a/h/e;Ld/g/a/e;IILd/g/a/h/b;)V

    goto :goto_2d

    :cond_50
    move-object v13, v1

    move/from16 v16, v5

    move-object/from16 v22, v6

    move/from16 v23, v8

    move-object v1, v9

    .line 238
    invoke-static {v0, v13, v2, v7, v1}, Ld/b/a/r;->a(Ld/g/a/h/e;Ld/g/a/e;IILd/g/a/h/b;)V

    :cond_51
    :goto_2d
    add-int/lit8 v8, v23, 0x1

    move-object v1, v13

    move/from16 v5, v16

    move-object/from16 v6, v22

    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_52
    return-void
.end method

.method public static a(Ld/g/a/h/e;Ld/g/a/e;IILd/g/a/h/b;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p4

    .line 286
    iget-object v10, v1, Ld/g/a/h/b;->a:Ld/g/a/h/d;

    .line 287
    iget-object v11, v1, Ld/g/a/h/b;->c:Ld/g/a/h/d;

    .line 288
    iget-object v12, v1, Ld/g/a/h/b;->b:Ld/g/a/h/d;

    .line 289
    iget-object v13, v1, Ld/g/a/h/b;->d:Ld/g/a/h/d;

    .line 290
    iget-object v2, v1, Ld/g/a/h/b;->e:Ld/g/a/h/d;

    .line 291
    iget v3, v1, Ld/g/a/h/b;->k:F

    .line 292
    iget-object v4, v0, Ld/g/a/h/d;->C:[Ld/g/a/h/d$a;

    aget-object v4, v4, p2

    sget-object v5, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-nez p2, :cond_3

    .line 293
    iget v8, v2, Ld/g/a/h/d;->e0:I

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 294
    :goto_1
    iget v14, v2, Ld/g/a/h/d;->e0:I

    if-ne v14, v7, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 295
    :goto_2
    iget v15, v2, Ld/g/a/h/d;->e0:I

    if-ne v15, v5, :cond_6

    goto :goto_5

    .line 296
    :cond_3
    iget v8, v2, Ld/g/a/h/d;->f0:I

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 297
    :goto_3
    iget v14, v2, Ld/g/a/h/d;->f0:I

    if-ne v14, v7, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    .line 298
    :goto_4
    iget v15, v2, Ld/g/a/h/d;->f0:I

    if-ne v15, v5, :cond_6

    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    move-object v7, v10

    move v15, v14

    move v14, v8

    const/4 v8, 0x0

    :goto_7
    const/16 v21, 0x0

    if-nez v8, :cond_13

    .line 299
    iget-object v6, v7, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v6, p3

    if-nez v4, :cond_8

    if-eqz v5, :cond_7

    goto :goto_8

    :cond_7
    const/16 v23, 0x4

    goto :goto_9

    :cond_8
    :goto_8
    const/16 v23, 0x1

    .line 300
    :goto_9
    invoke-virtual {v6}, Ld/g/a/h/c;->a()I

    move-result v24

    move/from16 v25, v3

    .line 301
    iget-object v3, v6, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_9

    if-eq v7, v10, :cond_9

    .line 302
    invoke-virtual {v3}, Ld/g/a/h/c;->a()I

    move-result v3

    add-int v24, v3, v24

    :cond_9
    move/from16 v3, v24

    if-eqz v5, :cond_a

    if-eq v7, v10, :cond_a

    if-eq v7, v12, :cond_a

    move/from16 v24, v8

    move/from16 v23, v15

    const/4 v8, 0x6

    goto :goto_a

    :cond_a
    if-eqz v14, :cond_b

    if-eqz v4, :cond_b

    move/from16 v24, v8

    move/from16 v23, v15

    const/4 v8, 0x4

    goto :goto_a

    :cond_b
    move/from16 v24, v8

    move/from16 v8, v23

    move/from16 v23, v15

    .line 303
    :goto_a
    iget-object v15, v6, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v15, :cond_d

    if-ne v7, v12, :cond_c

    move/from16 v26, v14

    .line 304
    iget-object v14, v6, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v15, v15, Ld/g/a/h/c;->i:Ld/g/a/g;

    move-object/from16 v27, v2

    const/4 v2, 0x5

    invoke-virtual {v9, v14, v15, v3, v2}, Ld/g/a/e;->b(Ld/g/a/g;Ld/g/a/g;II)V

    goto :goto_b

    :cond_c
    move-object/from16 v27, v2

    move/from16 v26, v14

    .line 305
    iget-object v2, v6, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v14, v15, Ld/g/a/h/c;->i:Ld/g/a/g;

    const/4 v15, 0x6

    invoke-virtual {v9, v2, v14, v3, v15}, Ld/g/a/e;->b(Ld/g/a/g;Ld/g/a/g;II)V

    .line 306
    :goto_b
    iget-object v2, v6, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v6, v6, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v6, v6, Ld/g/a/h/c;->i:Ld/g/a/g;

    invoke-virtual {v9, v2, v6, v3, v8}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;II)Ld/g/a/b;

    goto :goto_c

    :cond_d
    move-object/from16 v27, v2

    move/from16 v26, v14

    :goto_c
    if-eqz v4, :cond_f

    .line 307
    iget v2, v7, Ld/g/a/h/d;->Y:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    .line 308
    iget-object v2, v7, Ld/g/a/h/d;->C:[Ld/g/a/h/d$a;

    aget-object v2, v2, p2

    sget-object v3, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v2, v3, :cond_e

    .line 309
    iget-object v2, v7, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v3, p3, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Ld/g/a/h/c;->i:Ld/g/a/g;

    aget-object v2, v2, p3

    iget-object v2, v2, Ld/g/a/h/c;->i:Ld/g/a/g;

    const/4 v6, 0x5

    const/4 v8, 0x0

    invoke-virtual {v9, v3, v2, v8, v6}, Ld/g/a/e;->b(Ld/g/a/g;Ld/g/a/g;II)V

    goto :goto_d

    :cond_e
    const/4 v8, 0x0

    .line 310
    :goto_d
    iget-object v2, v7, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v2, v2, p3

    iget-object v2, v2, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v3, v0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v3, v3, p3

    iget-object v3, v3, Ld/g/a/h/c;->i:Ld/g/a/g;

    const/4 v6, 0x6

    invoke-virtual {v9, v2, v3, v8, v6}, Ld/g/a/e;->b(Ld/g/a/g;Ld/g/a/g;II)V

    .line 311
    :cond_f
    iget-object v2, v7, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v2, :cond_11

    .line 312
    iget-object v2, v2, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    .line 313
    iget-object v3, v2, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v3, p3

    iget-object v6, v6, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v6, :cond_11

    aget-object v3, v3, p3

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    if-eq v3, v7, :cond_10

    goto :goto_e

    :cond_10
    move-object/from16 v21, v2

    :cond_11
    :goto_e
    if-eqz v21, :cond_12

    move-object/from16 v7, v21

    move/from16 v8, v24

    goto :goto_f

    :cond_12
    const/4 v8, 0x1

    :goto_f
    move/from16 v15, v23

    move/from16 v3, v25

    move/from16 v14, v26

    move-object/from16 v2, v27

    goto/16 :goto_7

    :cond_13
    move-object/from16 v27, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v23, v15

    if-eqz v13, :cond_14

    .line 314
    iget-object v2, v11, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v3, p3, 0x1

    aget-object v6, v2, v3

    iget-object v6, v6, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v6, :cond_14

    .line 315
    iget-object v6, v13, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v6, v3

    .line 316
    iget-object v7, v6, Ld/g/a/h/c;->i:Ld/g/a/g;

    aget-object v2, v2, v3

    iget-object v2, v2, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v2, v2, Ld/g/a/h/c;->i:Ld/g/a/g;

    .line 317
    invoke-virtual {v6}, Ld/g/a/h/c;->a()I

    move-result v3

    neg-int v3, v3

    const/4 v6, 0x5

    .line 318
    invoke-virtual {v9, v7, v2, v3, v6}, Ld/g/a/e;->c(Ld/g/a/g;Ld/g/a/g;II)V

    goto :goto_10

    :cond_14
    const/4 v6, 0x5

    :goto_10
    if-eqz v4, :cond_15

    .line 319
    iget-object v0, v0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v3, v11, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v4, v3, v2

    iget-object v4, v4, Ld/g/a/h/c;->i:Ld/g/a/g;

    aget-object v2, v3, v2

    .line 320
    invoke-virtual {v2}, Ld/g/a/h/c;->a()I

    move-result v2

    const/4 v3, 0x6

    .line 321
    invoke-virtual {v9, v0, v4, v2, v3}, Ld/g/a/e;->b(Ld/g/a/g;Ld/g/a/g;II)V

    .line 322
    :cond_15
    iget-object v0, v1, Ld/g/a/h/b;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 323
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1f

    .line 324
    iget-boolean v4, v1, Ld/g/a/h/b;->n:Z

    if-eqz v4, :cond_16

    iget-boolean v4, v1, Ld/g/a/h/b;->p:Z

    if-nez v4, :cond_16

    .line 325
    iget v4, v1, Ld/g/a/h/b;->j:I

    int-to-float v4, v4

    goto :goto_11

    :cond_16
    move/from16 v4, v25

    :goto_11
    const/4 v7, 0x0

    move-object/from16 v14, v21

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_12
    if-ge v8, v2, :cond_1f

    .line 326
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ld/g/a/h/d;

    .line 327
    iget-object v6, v3, Ld/g/a/h/d;->g0:[F

    aget v6, v6, p2

    move-object/from16 v24, v0

    cmpg-float v25, v6, v7

    if-gez v25, :cond_18

    .line 328
    iget-boolean v6, v1, Ld/g/a/h/b;->p:Z

    if-eqz v6, :cond_17

    .line 329
    iget-object v0, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v3, p3, 0x1

    aget-object v3, v0, v3

    iget-object v3, v3, Ld/g/a/h/c;->i:Ld/g/a/g;

    aget-object v0, v0, p3

    iget-object v0, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v9, v3, v0, v7, v6}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;II)Ld/g/a/b;

    const/4 v6, 0x6

    goto :goto_13

    :cond_17
    const/high16 v6, 0x3f800000    # 1.0f

    :cond_18
    const/4 v7, 0x4

    const/16 v20, 0x0

    cmpl-float v25, v6, v20

    if-nez v25, :cond_19

    .line 330
    iget-object v0, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v3, p3, 0x1

    aget-object v3, v0, v3

    iget-object v3, v3, Ld/g/a/h/c;->i:Ld/g/a/g;

    aget-object v0, v0, p3

    iget-object v0, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v9, v3, v0, v7, v6}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;II)Ld/g/a/b;

    :goto_13
    move/from16 v29, v2

    move-object/from16 v30, v11

    const/16 v17, 0x6

    goto/16 :goto_17

    :cond_19
    const/4 v7, 0x0

    const/16 v17, 0x6

    if-eqz v14, :cond_1e

    .line 331
    iget-object v14, v14, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v7, v14, p3

    iget-object v7, v7, Ld/g/a/h/c;->i:Ld/g/a/g;

    add-int/lit8 v28, p3, 0x1

    .line 332
    aget-object v14, v14, v28

    iget-object v14, v14, Ld/g/a/h/c;->i:Ld/g/a/g;

    .line 333
    iget-object v0, v3, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    move/from16 v29, v2

    aget-object v2, v0, p3

    iget-object v2, v2, Ld/g/a/h/c;->i:Ld/g/a/g;

    .line 334
    aget-object v0, v0, v28

    iget-object v0, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    move-object/from16 v28, v3

    .line 335
    invoke-virtual/range {p1 .. p1}, Ld/g/a/e;->b()Ld/g/a/b;

    move-result-object v3

    const/4 v1, 0x0

    .line 336
    iput v1, v3, Ld/g/a/b;->b:F

    move-object/from16 v30, v11

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v31, v4, v1

    if-eqz v31, :cond_1d

    cmpl-float v31, v15, v6

    if-nez v31, :cond_1a

    goto :goto_14

    :cond_1a
    cmpl-float v31, v15, v1

    if-nez v31, :cond_1b

    .line 337
    iget-object v0, v3, Ld/g/a/b;->d:Ld/g/a/a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7, v2}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 338
    iget-object v0, v3, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v0, v14, v11}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    goto :goto_15

    :cond_1b
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v25, :cond_1c

    .line 339
    iget-object v7, v3, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v7, v2, v1}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 340
    iget-object v1, v3, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v1, v0, v11}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    goto :goto_15

    :cond_1c
    div-float/2addr v15, v4

    div-float v25, v6, v4

    div-float v15, v15, v25

    .line 341
    iget-object v11, v3, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v11, v7, v1}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 342
    iget-object v1, v3, Ld/g/a/b;->d:Ld/g/a/a;

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v1, v14, v11}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 343
    iget-object v1, v3, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v1, v0, v15}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 344
    iget-object v0, v3, Ld/g/a/b;->d:Ld/g/a/a;

    neg-float v1, v15

    invoke-virtual {v0, v2, v1}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    goto :goto_15

    :cond_1d
    :goto_14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 345
    iget-object v15, v3, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v15, v7, v1}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 346
    iget-object v7, v3, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v7, v14, v11}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 347
    iget-object v7, v3, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v7, v0, v1}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 348
    iget-object v0, v3, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v0, v2, v11}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 349
    :goto_15
    invoke-virtual {v9, v3}, Ld/g/a/e;->a(Ld/g/a/b;)V

    goto :goto_16

    :cond_1e
    move/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v11

    :goto_16
    move v15, v6

    move-object/from16 v14, v28

    :goto_17
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p4

    move-object/from16 v0, v24

    move/from16 v2, v29

    move-object/from16 v11, v30

    const/4 v3, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    goto/16 :goto_12

    :cond_1f
    move-object/from16 v30, v11

    const/16 v17, 0x6

    if-eqz v12, :cond_25

    if-eq v12, v13, :cond_20

    if-eqz v5, :cond_25

    .line 350
    :cond_20
    iget-object v0, v10, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v1, v0, p3

    move-object/from16 v11, v30

    .line 351
    iget-object v2, v11, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 352
    aget-object v4, v0, p3

    iget-object v4, v4, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v4, :cond_21

    aget-object v0, v0, p3

    iget-object v0, v0, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v0, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    move-object v4, v0

    goto :goto_18

    :cond_21
    move-object/from16 v4, v21

    .line 353
    :goto_18
    iget-object v0, v11, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v5, v0, v3

    iget-object v5, v5, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v5, :cond_22

    aget-object v0, v0, v3

    iget-object v0, v0, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v0, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    move-object v5, v0

    goto :goto_19

    :cond_22
    move-object/from16 v5, v21

    :goto_19
    if-ne v12, v13, :cond_23

    .line 354
    iget-object v0, v12, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v1, v0, p3

    .line 355
    aget-object v2, v0, v3

    :cond_23
    if-eqz v4, :cond_48

    if-eqz v5, :cond_48

    if-nez p2, :cond_24

    move-object/from16 v0, v27

    .line 356
    iget v0, v0, Ld/g/a/h/d;->V:F

    goto :goto_1a

    :cond_24
    move-object/from16 v0, v27

    .line 357
    iget v0, v0, Ld/g/a/h/d;->W:F

    :goto_1a
    move v6, v0

    .line 358
    invoke-virtual {v1}, Ld/g/a/h/c;->a()I

    move-result v3

    .line 359
    invoke-virtual {v2}, Ld/g/a/h/c;->a()I

    move-result v7

    .line 360
    iget-object v1, v1, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v8, v2, Ld/g/a/h/c;->i:Ld/g/a/g;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    move-object v2, v4

    move v4, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;IFLd/g/a/g;Ld/g/a/g;II)V

    goto/16 :goto_32

    :cond_25
    move-object/from16 v11, v30

    if-eqz v26, :cond_37

    if-eqz v12, :cond_37

    move-object/from16 v0, p4

    .line 361
    iget v1, v0, Ld/g/a/h/b;->j:I

    if-lez v1, :cond_26

    iget v0, v0, Ld/g/a/h/b;->i:I

    if-ne v0, v1, :cond_26

    const/16 v19, 0x1

    goto :goto_1b

    :cond_26
    const/16 v19, 0x0

    :goto_1b
    move-object v14, v12

    move-object v15, v14

    :goto_1c
    if-eqz v14, :cond_48

    .line 362
    iget-object v0, v14, Ld/g/a/h/d;->i0:[Ld/g/a/h/d;

    aget-object v0, v0, p2

    move-object v8, v0

    :goto_1d
    if-eqz v8, :cond_27

    .line 363
    iget v0, v8, Ld/g/a/h/d;->Y:I

    const/16 v6, 0x8

    if-ne v0, v6, :cond_28

    .line 364
    iget-object v0, v8, Ld/g/a/h/d;->i0:[Ld/g/a/h/d;

    aget-object v8, v0, p2

    goto :goto_1d

    :cond_27
    const/16 v6, 0x8

    :cond_28
    if-nez v8, :cond_2a

    if-ne v14, v13, :cond_29

    goto :goto_1e

    :cond_29
    move-object/from16 v16, v8

    const/16 v17, 0x4

    const/16 v18, 0x6

    goto/16 :goto_25

    .line 365
    :cond_2a
    :goto_1e
    iget-object v0, v14, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v0, v0, p3

    .line 366
    iget-object v1, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    .line 367
    iget-object v2, v0, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v2, :cond_2b

    iget-object v2, v2, Ld/g/a/h/c;->i:Ld/g/a/g;

    goto :goto_1f

    :cond_2b
    move-object/from16 v2, v21

    :goto_1f
    if-eq v15, v14, :cond_2c

    .line 368
    iget-object v2, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Ld/g/a/h/c;->i:Ld/g/a/g;

    goto :goto_20

    :cond_2c
    if-ne v14, v12, :cond_2e

    if-ne v15, v14, :cond_2e

    .line 369
    iget-object v2, v10, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v3, v2, p3

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_2d

    aget-object v2, v2, p3

    iget-object v2, v2, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v2, v2, Ld/g/a/h/c;->i:Ld/g/a/g;

    goto :goto_20

    :cond_2d
    move-object/from16 v2, v21

    .line 370
    :cond_2e
    :goto_20
    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v0

    .line 371
    iget-object v3, v14, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ld/g/a/h/c;->a()I

    move-result v3

    if-eqz v8, :cond_2f

    .line 372
    iget-object v5, v8, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v5, v5, p3

    .line 373
    iget-object v7, v5, Ld/g/a/h/c;->i:Ld/g/a/g;

    .line 374
    iget-object v6, v14, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v6, v4

    iget-object v6, v6, Ld/g/a/h/c;->i:Ld/g/a/g;

    move-object/from16 v32, v7

    move-object v7, v6

    move-object/from16 v6, v32

    goto :goto_22

    .line 375
    :cond_2f
    iget-object v5, v11, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v5, v5, v4

    iget-object v5, v5, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v5, :cond_30

    .line 376
    iget-object v6, v5, Ld/g/a/h/c;->i:Ld/g/a/g;

    goto :goto_21

    :cond_30
    move-object/from16 v6, v21

    .line 377
    :goto_21
    iget-object v7, v14, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v7, v7, v4

    iget-object v7, v7, Ld/g/a/h/c;->i:Ld/g/a/g;

    :goto_22
    if-eqz v5, :cond_31

    .line 378
    invoke-virtual {v5}, Ld/g/a/h/c;->a()I

    move-result v5

    add-int/2addr v3, v5

    :cond_31
    if-eqz v15, :cond_32

    .line 379
    iget-object v5, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ld/g/a/h/c;->a()I

    move-result v5

    add-int/2addr v0, v5

    :cond_32
    if-eqz v1, :cond_29

    if-eqz v2, :cond_29

    if-eqz v6, :cond_29

    if-eqz v7, :cond_29

    if-ne v14, v12, :cond_33

    .line 380
    iget-object v0, v12, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v0

    :cond_33
    move v5, v0

    if-ne v14, v13, :cond_34

    .line 381
    iget-object v0, v13, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v0

    move/from16 v16, v0

    goto :goto_23

    :cond_34
    move/from16 v16, v3

    :goto_23
    if-eqz v19, :cond_35

    const/16 v22, 0x6

    goto :goto_24

    :cond_35
    const/16 v22, 0x4

    :goto_24
    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move v3, v5

    move-object v5, v6

    const/16 v17, 0x4

    const/16 v18, 0x6

    move-object v6, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    move/from16 v8, v22

    .line 382
    invoke-virtual/range {v0 .. v8}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;IFLd/g/a/g;Ld/g/a/g;II)V

    .line 383
    :goto_25
    iget v0, v14, Ld/g/a/h/d;->Y:I

    const/16 v8, 0x8

    if-eq v0, v8, :cond_36

    move-object v15, v14

    :cond_36
    move-object/from16 v14, v16

    const/16 v17, 0x6

    goto/16 :goto_1c

    :cond_37
    move-object/from16 v0, p4

    const/16 v8, 0x8

    const/16 v17, 0x4

    const/16 v18, 0x6

    if-eqz v23, :cond_48

    if-eqz v12, :cond_48

    .line 384
    iget v1, v0, Ld/g/a/h/b;->j:I

    if-lez v1, :cond_38

    iget v0, v0, Ld/g/a/h/b;->i:I

    if-ne v0, v1, :cond_38

    const/16 v19, 0x1

    goto :goto_26

    :cond_38
    const/16 v19, 0x0

    :goto_26
    move-object v14, v12

    move-object v15, v14

    :goto_27
    if-eqz v14, :cond_44

    .line 385
    iget-object v0, v14, Ld/g/a/h/d;->i0:[Ld/g/a/h/d;

    aget-object v0, v0, p2

    :goto_28
    if-eqz v0, :cond_39

    .line 386
    iget v1, v0, Ld/g/a/h/d;->Y:I

    if-ne v1, v8, :cond_39

    .line 387
    iget-object v0, v0, Ld/g/a/h/d;->i0:[Ld/g/a/h/d;

    aget-object v0, v0, p2

    goto :goto_28

    :cond_39
    if-eq v14, v12, :cond_42

    if-eq v14, v13, :cond_42

    if-eqz v0, :cond_42

    if-ne v0, v13, :cond_3a

    move-object/from16 v7, v21

    goto :goto_29

    :cond_3a
    move-object v7, v0

    .line 388
    :goto_29
    iget-object v0, v14, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v0, v0, p3

    .line 389
    iget-object v1, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    .line 390
    iget-object v2, v0, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v2, :cond_3b

    iget-object v2, v2, Ld/g/a/h/c;->i:Ld/g/a/g;

    .line 391
    :cond_3b
    iget-object v2, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Ld/g/a/h/c;->i:Ld/g/a/g;

    .line 392
    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v0

    .line 393
    iget-object v4, v14, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ld/g/a/h/c;->a()I

    move-result v4

    if-eqz v7, :cond_3d

    .line 394
    iget-object v5, v7, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v5, v5, p3

    .line 395
    iget-object v6, v5, Ld/g/a/h/c;->i:Ld/g/a/g;

    .line 396
    iget-object v8, v5, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v8, :cond_3c

    iget-object v8, v8, Ld/g/a/h/c;->i:Ld/g/a/g;

    goto :goto_2b

    :cond_3c
    move-object/from16 v8, v21

    goto :goto_2b

    .line 397
    :cond_3d
    iget-object v5, v14, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v5, v5, v3

    iget-object v5, v5, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v5, :cond_3e

    .line 398
    iget-object v6, v5, Ld/g/a/h/c;->i:Ld/g/a/g;

    goto :goto_2a

    :cond_3e
    move-object/from16 v6, v21

    .line 399
    :goto_2a
    iget-object v8, v14, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v8, v8, v3

    iget-object v8, v8, Ld/g/a/h/c;->i:Ld/g/a/g;

    :goto_2b
    if-eqz v5, :cond_3f

    .line 400
    invoke-virtual {v5}, Ld/g/a/h/c;->a()I

    move-result v5

    add-int/2addr v5, v4

    move/from16 v20, v5

    goto :goto_2c

    :cond_3f
    move/from16 v20, v4

    .line 401
    :goto_2c
    iget-object v4, v15, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ld/g/a/h/c;->a()I

    move-result v3

    add-int/2addr v3, v0

    if-eqz v19, :cond_40

    const/16 v22, 0x6

    goto :goto_2d

    :cond_40
    const/16 v22, 0x4

    :goto_2d
    if-eqz v1, :cond_41

    if-eqz v2, :cond_41

    if-eqz v6, :cond_41

    if-eqz v8, :cond_41

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move-object v5, v6

    move-object v6, v8

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v15

    const/16 v15, 0x8

    move/from16 v8, v22

    .line 402
    invoke-virtual/range {v0 .. v8}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;IFLd/g/a/g;Ld/g/a/g;II)V

    goto :goto_2e

    :cond_41
    move-object/from16 v16, v7

    move-object/from16 v20, v15

    const/16 v15, 0x8

    :goto_2e
    move-object/from16 v0, v16

    goto :goto_2f

    :cond_42
    move-object/from16 v20, v15

    const/16 v15, 0x8

    .line 403
    :goto_2f
    iget v1, v14, Ld/g/a/h/d;->Y:I

    if-eq v1, v15, :cond_43

    goto :goto_30

    :cond_43
    move-object/from16 v14, v20

    :goto_30
    move-object v15, v14

    const/16 v8, 0x8

    move-object v14, v0

    goto/16 :goto_27

    .line 404
    :cond_44
    iget-object v0, v12, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v0, v0, p3

    .line 405
    iget-object v1, v10, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v1, v1, p3

    iget-object v1, v1, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    .line 406
    iget-object v2, v13, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    .line 407
    iget-object v2, v11, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v2, v2, v3

    iget-object v14, v2, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v1, :cond_46

    if-eq v12, v13, :cond_45

    .line 408
    iget-object v2, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v1, v1, Ld/g/a/h/c;->i:Ld/g/a/g;

    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v0

    const/4 v15, 0x5

    invoke-virtual {v9, v2, v1, v0, v15}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;II)Ld/g/a/b;

    goto :goto_31

    :cond_45
    const/4 v15, 0x5

    if-eqz v14, :cond_47

    .line 409
    iget-object v2, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v3, v1, Ld/g/a/h/c;->i:Ld/g/a/g;

    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v10, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v7, v14, Ld/g/a/h/c;->i:Ld/g/a/g;

    .line 410
    invoke-virtual {v10}, Ld/g/a/h/c;->a()I

    move-result v8

    const/16 v16, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v16

    .line 411
    invoke-virtual/range {v0 .. v8}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;IFLd/g/a/g;Ld/g/a/g;II)V

    goto :goto_31

    :cond_46
    const/4 v15, 0x5

    :cond_47
    :goto_31
    if-eqz v14, :cond_48

    if-eq v12, v13, :cond_48

    .line 412
    iget-object v0, v10, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v1, v14, Ld/g/a/h/c;->i:Ld/g/a/g;

    invoke-virtual {v10}, Ld/g/a/h/c;->a()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v9, v0, v1, v2, v15}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;II)Ld/g/a/b;

    :cond_48
    :goto_32
    if-nez v26, :cond_49

    if-eqz v23, :cond_4f

    :cond_49
    if-eqz v12, :cond_4f

    .line 413
    iget-object v0, v12, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v0, v0, p3

    .line 414
    iget-object v1, v13, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 415
    iget-object v3, v0, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_4a

    iget-object v3, v3, Ld/g/a/h/c;->i:Ld/g/a/g;

    goto :goto_33

    :cond_4a
    move-object/from16 v3, v21

    .line 416
    :goto_33
    iget-object v4, v1, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v4, :cond_4b

    iget-object v4, v4, Ld/g/a/h/c;->i:Ld/g/a/g;

    goto :goto_34

    :cond_4b
    move-object/from16 v4, v21

    :goto_34
    if-eq v11, v13, :cond_4d

    .line 417
    iget-object v4, v11, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v4, v4, v2

    .line 418
    iget-object v4, v4, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v4, :cond_4c

    iget-object v4, v4, Ld/g/a/h/c;->i:Ld/g/a/g;

    move-object/from16 v21, v4

    :cond_4c
    move-object/from16 v5, v21

    goto :goto_35

    :cond_4d
    move-object v5, v4

    :goto_35
    if-ne v12, v13, :cond_4e

    .line 419
    iget-object v0, v12, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v1, v0, p3

    .line 420
    aget-object v0, v0, v2

    move-object/from16 v32, v1

    move-object v1, v0

    move-object/from16 v0, v32

    :cond_4e
    if-eqz v3, :cond_4f

    if-eqz v5, :cond_4f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 421
    invoke-virtual {v0}, Ld/g/a/h/c;->a()I

    move-result v6

    .line 422
    iget-object v7, v13, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v2, v7, v2

    invoke-virtual {v2}, Ld/g/a/h/c;->a()I

    move-result v7

    .line 423
    iget-object v2, v0, Ld/g/a/h/c;->i:Ld/g/a/g;

    iget-object v8, v1, Ld/g/a/h/c;->i:Ld/g/a/g;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;IFLd/g/a/g;Ld/g/a/g;II)V

    :cond_4f
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static a(Ljava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/g/a/h/f;",
            ">;II)V"
        }
    .end annotation

    .line 918
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_a

    .line 919
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/g/a/h/f;

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    const/4 v5, 0x1

    if-nez p1, :cond_0

    .line 920
    iget-object v4, v3, Ld/g/a/h/f;->h:Ljava/util/HashSet;

    goto :goto_1

    :cond_0
    if-ne p1, v5, :cond_1

    .line 921
    iget-object v4, v3, Ld/g/a/h/f;->i:Ljava/util/HashSet;

    .line 922
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/g/a/h/d;

    .line 923
    iget-boolean v6, v4, Ld/g/a/h/d;->b0:Z

    if-eqz v6, :cond_2

    mul-int/lit8 v6, p1, 0x2

    .line 924
    iget-object v7, v4, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v8, v7, v6

    add-int/lit8 v9, v6, 0x1

    .line 925
    aget-object v7, v7, v9

    .line 926
    iget-object v9, v8, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v9, :cond_3

    iget-object v9, v7, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_4

    .line 927
    invoke-static {v4, p1}, Ld/b/a/r;->a(Ld/g/a/h/d;I)I

    move-result v6

    invoke-virtual {v8}, Ld/g/a/h/c;->a()I

    move-result v7

    add-int/2addr v7, v6

    .line 928
    invoke-static {v4, p1, v7}, Ld/g/a/h/i;->a(Ld/g/a/h/d;II)V

    goto :goto_2

    .line 929
    :cond_4
    iget v9, v4, Ld/g/a/h/d;->G:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    invoke-virtual {v4, p1}, Ld/g/a/h/d;->b(I)Ld/g/a/h/d$a;

    move-result-object v9

    sget-object v10, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v9, v10, :cond_5

    .line 930
    invoke-static {v4}, Ld/b/a/r;->a(Ld/g/a/h/d;)I

    move-result v9

    .line 931
    iget-object v10, v4, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v6, v10, v6

    .line 932
    iget-object v6, v6, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 933
    iget v6, v6, Ld/g/a/h/j;->g:F

    float-to-int v6, v6

    add-int v10, v6, v9

    .line 934
    iget-object v7, v7, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    iget-object v8, v8, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 935
    iput-object v8, v7, Ld/g/a/h/j;->f:Ld/g/a/h/j;

    int-to-float v8, v9

    .line 936
    iput v8, v7, Ld/g/a/h/j;->g:F

    .line 937
    iput v5, v7, Ld/g/a/h/l;->b:I

    .line 938
    invoke-virtual {v4, v6, v10, p1}, Ld/g/a/h/d;->a(III)V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    .line 939
    iget v6, v4, Ld/g/a/h/d;->K:I

    goto :goto_4

    :cond_6
    if-ne p1, v5, :cond_7

    .line 940
    iget v6, v4, Ld/g/a/h/d;->L:I

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    sub-int v6, p2, v6

    .line 941
    invoke-virtual {v4, p1}, Ld/g/a/h/d;->c(I)I

    move-result v7

    sub-int v7, v6, v7

    .line 942
    invoke-virtual {v4, v7, v6, p1}, Ld/g/a/h/d;->a(III)V

    .line 943
    invoke-static {v4, p1, v7}, Ld/g/a/h/i;->a(Ld/g/a/h/d;II)V

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 944
    :cond_9
    throw v4

    :cond_a
    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_2

    .line 889
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)Z
    .locals 7

    .line 906
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 907
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    return p0

    .line 908
    :cond_0
    sget-boolean v0, Ld/b/a/r;->j:Z

    const-string v1, "DrawableCompat"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 909
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v4, "setLayoutDirection"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 910
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ld/b/a/r;->i:Ljava/lang/reflect/Method;

    .line 911
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    .line 912
    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    :goto_0
    sput-boolean v3, Ld/b/a/r;->j:Z

    .line 914
    :cond_1
    sget-object v0, Ld/b/a/r;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 915
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    move-exception p0

    const-string p1, "Failed to invoke setLayoutDirection(int) via reflection"

    .line 916
    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 917
    sput-object p0, Ld/b/a/r;->i:Ljava/lang/reflect/Method;

    :cond_2
    return v2
.end method

.method public static a(Ld/g/a/h/d;Ld/g/a/h/f;Ljava/util/List;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/g/a/h/d;",
            "Ld/g/a/h/f;",
            "Ljava/util/List<",
            "Ld/g/a/h/f;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 568
    iput-boolean v1, p0, Ld/g/a/h/d;->c0:Z

    .line 569
    iget-object v2, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    .line 570
    check-cast v2, Ld/g/a/h/e;

    .line 571
    iget-object v3, p0, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    if-nez v3, :cond_1e

    .line 572
    iput-boolean v0, p0, Ld/g/a/h/d;->b0:Z

    .line 573
    iget-object v3, p1, Ld/g/a/h/f;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iput-object p1, p0, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    .line 575
    iget-object v3, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_1

    iget-object v3, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_1

    iget-object v3, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_1

    iget-object v3, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_1

    iget-object v3, p0, Ld/g/a/h/d;->w:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_1

    iget-object v3, p0, Ld/g/a/h/d;->z:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_1

    .line 576
    iput-boolean v1, p1, Ld/g/a/h/f;->d:Z

    .line 577
    iput-boolean v1, v2, Ld/g/a/h/e;->D0:Z

    .line 578
    iput-boolean v1, p0, Ld/g/a/h/d;->b0:Z

    if-eqz p3, :cond_1

    return v1

    .line 579
    :cond_1
    iget-object v3, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_4

    .line 580
    invoke-virtual {v2}, Ld/g/a/h/d;->h()Ld/g/a/h/d$a;

    move-result-object v3

    sget-object v4, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    if-eqz p3, :cond_2

    .line 581
    iput-boolean v1, p1, Ld/g/a/h/f;->d:Z

    .line 582
    iput-boolean v1, v2, Ld/g/a/h/e;->D0:Z

    .line 583
    iput-boolean v1, p0, Ld/g/a/h/d;->b0:Z

    return v1

    .line 584
    :cond_2
    iget-object v3, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    .line 585
    iget-object v4, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-ne v3, v4, :cond_3

    .line 586
    iget-object v3, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    if-eq v3, v4, :cond_4

    .line 587
    :cond_3
    iput-boolean v1, p1, Ld/g/a/h/f;->d:Z

    .line 588
    iput-boolean v1, v2, Ld/g/a/h/e;->D0:Z

    .line 589
    iput-boolean v1, p0, Ld/g/a/h/d;->b0:Z

    .line 590
    :cond_4
    iget-object v3, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_7

    .line 591
    invoke-virtual {v2}, Ld/g/a/h/d;->e()Ld/g/a/h/d$a;

    move-result-object v3

    sget-object v4, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    if-eqz p3, :cond_5

    .line 592
    iput-boolean v1, p1, Ld/g/a/h/f;->d:Z

    .line 593
    iput-boolean v1, v2, Ld/g/a/h/e;->D0:Z

    .line 594
    iput-boolean v1, p0, Ld/g/a/h/d;->b0:Z

    return v1

    .line 595
    :cond_5
    iget-object v3, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    .line 596
    iget-object v4, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-ne v3, v4, :cond_6

    .line 597
    iget-object v3, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    if-eq v3, v4, :cond_7

    .line 598
    :cond_6
    iput-boolean v1, p1, Ld/g/a/h/f;->d:Z

    .line 599
    iput-boolean v1, v2, Ld/g/a/h/e;->D0:Z

    .line 600
    iput-boolean v1, p0, Ld/g/a/h/d;->b0:Z

    .line 601
    :cond_7
    invoke-virtual {p0}, Ld/g/a/h/d;->e()Ld/g/a/h/d$a;

    move-result-object v3

    sget-object v4, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    .line 602
    :goto_0
    invoke-virtual {p0}, Ld/g/a/h/d;->h()Ld/g/a/h/d$a;

    move-result-object v4

    sget-object v5, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    :goto_1
    xor-int/2addr v3, v4

    if-eqz v3, :cond_a

    iget v3, p0, Ld/g/a/h/d;->G:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a

    .line 603
    invoke-static {p0}, Ld/b/a/r;->a(Ld/g/a/h/d;)I

    goto :goto_2

    .line 604
    :cond_a
    invoke-virtual {p0}, Ld/g/a/h/d;->e()Ld/g/a/h/d$a;

    move-result-object v3

    sget-object v4, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-eq v3, v4, :cond_b

    .line 605
    invoke-virtual {p0}, Ld/g/a/h/d;->h()Ld/g/a/h/d$a;

    move-result-object v3

    sget-object v4, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    if-ne v3, v4, :cond_c

    .line 606
    :cond_b
    iput-boolean v1, p1, Ld/g/a/h/f;->d:Z

    .line 607
    iput-boolean v1, v2, Ld/g/a/h/e;->D0:Z

    .line 608
    iput-boolean v1, p0, Ld/g/a/h/d;->b0:Z

    if-eqz p3, :cond_c

    return v1

    .line 609
    :cond_c
    :goto_2
    iget-object v3, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_d

    iget-object v3, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_10

    :cond_d
    iget-object v3, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_e

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    iget-object v4, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_10

    :cond_e
    iget-object v3, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_f

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    iget-object v4, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-ne v3, v4, :cond_f

    iget-object v3, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_10

    :cond_f
    iget-object v3, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_11

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    iget-object v4, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-ne v3, v4, :cond_11

    iget-object v3, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_11

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    if-ne v3, v4, :cond_11

    :cond_10
    iget-object v3, p0, Ld/g/a/h/d;->z:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_11

    .line 610
    instance-of v3, p0, Ld/g/a/h/g;

    if-nez v3, :cond_11

    instance-of v3, p0, Ld/g/a/h/h;

    if-nez v3, :cond_11

    .line 611
    iget-object v3, p1, Ld/g/a/h/f;->f:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_11
    iget-object v3, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_12

    iget-object v3, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_15

    :cond_12
    iget-object v3, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_13

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    iget-object v4, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-ne v3, v4, :cond_13

    iget-object v3, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_15

    :cond_13
    iget-object v3, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_14

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    iget-object v4, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-ne v3, v4, :cond_14

    iget-object v3, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_15

    :cond_14
    iget-object v3, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_16

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    iget-object v4, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-ne v3, v4, :cond_16

    iget-object v3, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v3, :cond_16

    iget-object v3, v3, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    if-ne v3, v4, :cond_16

    :cond_15
    iget-object v3, p0, Ld/g/a/h/d;->z:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_16

    iget-object v3, p0, Ld/g/a/h/d;->w:Ld/g/a/h/c;

    iget-object v3, v3, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-nez v3, :cond_16

    .line 613
    instance-of v3, p0, Ld/g/a/h/g;

    if-nez v3, :cond_16

    instance-of v3, p0, Ld/g/a/h/h;

    if-nez v3, :cond_16

    .line 614
    iget-object v3, p1, Ld/g/a/h/f;->g:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_16
    instance-of v3, p0, Ld/g/a/h/h;

    if-eqz v3, :cond_19

    .line 616
    iput-boolean v1, p1, Ld/g/a/h/f;->d:Z

    .line 617
    iput-boolean v1, v2, Ld/g/a/h/e;->D0:Z

    .line 618
    iput-boolean v1, p0, Ld/g/a/h/d;->b0:Z

    if-eqz p3, :cond_17

    return v1

    .line 619
    :cond_17
    move-object v3, p0

    check-cast v3, Ld/g/a/h/h;

    const/4 v4, 0x0

    .line 620
    :goto_3
    iget v5, v3, Ld/g/a/h/h;->l0:I

    if-ge v4, v5, :cond_19

    .line 621
    iget-object v5, v3, Ld/g/a/h/h;->k0:[Ld/g/a/h/d;

    aget-object v5, v5, v4

    invoke-static {v5, p1, p2, p3}, Ld/b/a/r;->a(Ld/g/a/h/d;Ld/g/a/h/f;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_18

    return v1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 622
    :cond_19
    iget-object v3, p0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_1d

    .line 623
    iget-object v5, p0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    aget-object v5, v5, v4

    .line 624
    iget-object v6, v5, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eqz v6, :cond_1c

    iget-object v7, v6, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    .line 625
    iget-object v8, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-eq v7, v8, :cond_1c

    .line 626
    iget-object v7, v5, Ld/g/a/h/c;->c:Ld/g/a/h/c$c;

    sget-object v8, Ld/g/a/h/c$c;->CENTER:Ld/g/a/h/c$c;

    if-ne v7, v8, :cond_1a

    .line 627
    iput-boolean v1, p1, Ld/g/a/h/f;->d:Z

    .line 628
    iput-boolean v1, v2, Ld/g/a/h/e;->D0:Z

    .line 629
    iput-boolean v1, p0, Ld/g/a/h/d;->b0:Z

    if-eqz p3, :cond_1b

    return v1

    .line 630
    :cond_1a
    iget-object v7, v5, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    if-eqz v6, :cond_1b

    .line 631
    iget-object v8, v6, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    if-eq v8, v5, :cond_1b

    .line 632
    iget-object v6, v6, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 633
    iget-object v6, v6, Ld/g/a/h/l;->a:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_1b
    iget-object v5, v5, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    iget-object v5, v5, Ld/g/a/h/c;->b:Ld/g/a/h/d;

    invoke-static {v5, p1, p2, p3}, Ld/b/a/r;->a(Ld/g/a/h/d;Ld/g/a/h/f;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_1d
    return v0

    :cond_1e
    if-eq v3, p1, :cond_20

    .line 635
    iget-object p3, p1, Ld/g/a/h/f;->a:Ljava/util/List;

    iget-object v2, v3, Ld/g/a/h/f;->a:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 636
    iget-object p3, p1, Ld/g/a/h/f;->f:Ljava/util/List;

    iget-object v2, p0, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    iget-object v2, v2, Ld/g/a/h/f;->f:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 637
    iget-object p3, p1, Ld/g/a/h/f;->g:Ljava/util/List;

    iget-object v2, p0, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    iget-object v2, v2, Ld/g/a/h/f;->g:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 638
    iget-object p3, p0, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    iget-boolean p3, p3, Ld/g/a/h/f;->d:Z

    if-nez p3, :cond_1f

    .line 639
    iput-boolean v1, p1, Ld/g/a/h/f;->d:Z

    .line 640
    :cond_1f
    iget-object p3, p0, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 641
    iget-object p0, p0, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    iget-object p0, p0, Ld/g/a/h/f;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/g/a/h/d;

    .line 642
    iput-object p1, p2, Ld/g/a/h/d;->p:Ld/g/a/h/f;

    goto :goto_5

    :cond_20
    return v0
.end method

.method public static a(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 0

    .line 699
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 700
    :try_start_1
    invoke-static {p0, p1}, Ld/b/a/r;->a(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 701
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 702
    :catch_1
    :cond_1
    throw p0
.end method

.method public static a(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 5

    .line 677
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 678
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    :try_start_1
    new-array p0, p0, [B

    .line 679
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 680
    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 681
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 682
    :catch_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    const-string p1, "TypefaceCompatUtil"

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error copying resource contents to temp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 684
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 685
    :catch_3
    :cond_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_2
    if-eqz v2, :cond_2

    .line 686
    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 687
    :catch_4
    :cond_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 688
    throw p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 252
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a([Ld/i/c/b;[Ld/i/c/b;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 674
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 675
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 676
    aget-object v2, p0, v1

    iget-char v2, v2, Ld/i/c/b;->a:C

    aget-object v3, p1, v1

    iget-char v3, v3, Ld/i/c/b;->a:C

    if-ne v2, v3, :cond_3

    aget-object v2, p0, v1

    iget-object v2, v2, Ld/i/c/b;->b:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Ld/i/c/b;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static a([FII)[F
    .locals 2

    if-gt p1, p2, :cond_1

    .line 241
    array-length v0, p0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 242
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 243
    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 244
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 245
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 246
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a([Ld/i/c/b;)[Ld/i/c/b;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 554
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ld/i/c/b;

    const/4 v1, 0x0

    .line 555
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 556
    new-instance v2, Ld/i/c/b;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ld/i/c/b;-><init>(Ld/i/c/b;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 0

    .line 44
    invoke-static {p1, p2}, Ld/b/a/r;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p4

    .line 45
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)I
    .locals 6

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p0

    return p0

    .line 72
    :cond_0
    sget-boolean v0, Ld/b/a/r;->l:Z

    const-string v1, "DrawableCompat"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 73
    :try_start_0
    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string v4, "getLayoutDirection"

    new-array v5, v2, [Ljava/lang/Class;

    .line 74
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Ld/b/a/r;->k:Ljava/lang/reflect/Method;

    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to retrieve getLayoutDirection() method"

    .line 76
    invoke-static {v1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :goto_0
    sput-boolean v0, Ld/b/a/r;->l:Z

    .line 78
    :cond_1
    sget-object v0, Ld/b/a/r;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 79
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    const-string v0, "Failed to invoke getLayoutDirection() via reflection"

    .line 80
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 81
    sput-object p0, Ld/b/a/r;->k:Ljava/lang/reflect/Method;

    :cond_2
    return v2
.end method

.method public static b(Landroid/os/Parcel;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2
    invoke-static {p0, v0}, Ld/b/a/r;->h(Landroid/os/Parcel;I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v0

    const/16 v4, 0x4f45

    if-eq v3, v4, :cond_1

    .line 4
    new-instance v1, Le/c/a/a/b/j/s/b;

    const-string v2, "Expected object header. Got 0x"

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v0, p0}, Le/c/a/a/b/j/s/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    add-int/2addr v1, v2

    if-lt v1, v2, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gt v1, v0, :cond_2

    return v1

    .line 6
    :cond_2
    new-instance v0, Le/c/a/a/b/j/s/b;

    const/16 v3, 0x36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Size read is invalid start="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Le/c/a/a/b/j/s/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static b(Ld/t/a/s$u;Ld/t/a/r;Landroid/view/View;Landroid/view/View;Ld/t/a/s$k;Z)I
    .locals 1

    .line 11
    invoke-virtual {p4}, Ld/t/a/s$k;->d()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ld/t/a/s$u;->a()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 12
    invoke-virtual {p0}, Ld/t/a/s$u;->a()I

    move-result p0

    return p0

    .line 13
    :cond_1
    invoke-virtual {p1, p3}, Ld/t/a/r;->a(Landroid/view/View;)I

    move-result p5

    .line 14
    invoke-virtual {p1, p2}, Ld/t/a/r;->b(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p5, p1

    .line 15
    invoke-virtual {p4, p2}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result p1

    .line 16
    invoke-virtual {p4, p3}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p5

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 18
    invoke-virtual {p0}, Ld/t/a/s$u;->a()I

    move-result p0

    int-to-float p0, p0

    mul-float p2, p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/16 v1, 0x280

    .line 63
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    const v1, 0x100c0280

    goto :goto_0

    :cond_0
    if-lt v3, v2, :cond_1

    const v1, 0xc0280

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 65
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    .line 66
    :cond_2
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "android.support.PARENT_ACTIVITY"

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public static b(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 2

    .line 19
    invoke-static {p0, p1}, Ld/b/a/r;->h(Landroid/os/Parcel;I)I

    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, p1

    .line 22
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static b(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static b(Landroid/os/Parcel;II)V
    .locals 4

    .line 8
    invoke-static {p0, p1}, Ld/b/a/r;->h(Landroid/os/Parcel;I)I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Le/c/a/a/b/j/s/b;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected size "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " got "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (0x"

    const-string p2, ")"

    invoke-static {v3, p1, v1, p2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Le/c/a/a/b/j/s/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static b(Landroid/widget/TextView;I)V
    .locals 3

    .line 86
    invoke-static {p1}, Ld/b/a/r;->a(I)I

    .line 87
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    .line 90
    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 91
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v0

    .line 92
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 93
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 94
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 4

    .line 47
    sget-boolean v0, Ld/b/a/r;->d:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 48
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ld/b/a/r;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Could not find ThemedResourceCache class"

    .line 49
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :goto_0
    sput-boolean v1, Ld/b/a/r;->d:Z

    .line 51
    :cond_0
    sget-object v0, Ld/b/a/r;->c:Ljava/lang/Class;

    if-nez v0, :cond_1

    return-void

    .line 52
    :cond_1
    sget-boolean v3, Ld/b/a/r;->f:Z

    if-nez v3, :cond_2

    :try_start_1
    const-string v3, "mUnthemedEntries"

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ld/b/a/r;->e:Ljava/lang/reflect/Field;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    .line 55
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_1
    sput-boolean v1, Ld/b/a/r;->f:Z

    .line 57
    :cond_2
    sget-object v0, Ld/b/a/r;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 58
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p0

    goto :goto_2

    :catch_2
    move-exception p0

    const-string v0, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    .line 59
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_4
    return-void
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)[Ld/i/c/b;
    .locals 16

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 23
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 24
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_10

    .line 25
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ge v3, v5, :cond_3

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v8, v5, -0x41

    add-int/lit8 v9, v5, -0x5a

    mul-int v9, v9, v8

    if-lez v9, :cond_1

    add-int/lit8 v8, v5, -0x61

    add-int/lit8 v9, v5, -0x7a

    mul-int v9, v9, v8

    if-gtz v9, :cond_2

    :cond_1
    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 27
    :cond_3
    :goto_2
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    .line 29
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x7a

    if-eq v5, v8, :cond_e

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5a

    if-ne v5, v8, :cond_4

    goto/16 :goto_a

    .line 30
    :cond_4
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [F

    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_3
    if-ge v9, v8, :cond_d

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v9

    .line 32
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_a

    .line 33
    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v7, 0x20

    if-eq v15, v7, :cond_7

    const/16 v7, 0x65

    if-eq v15, v6, :cond_6

    if-eq v15, v7, :cond_6

    packed-switch v15, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-nez v12, :cond_5

    const/4 v12, 0x1

    goto :goto_6

    :pswitch_1
    if-eq v14, v9, :cond_8

    if-nez v13, :cond_8

    :cond_5
    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    const/16 v7, 0x65

    :goto_5
    :pswitch_2
    const/4 v2, 0x1

    :cond_8
    :goto_6
    const/4 v13, 0x0

    :goto_7
    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_a
    :goto_8
    if-ge v9, v14, :cond_b

    add-int/lit8 v2, v10, 0x1

    .line 34
    invoke-virtual {v4, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 35
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v5, v10

    move v10, v2

    :cond_b
    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v14, v14, 0x1

    :goto_9
    move v9, v14

    const/4 v2, 0x0

    goto :goto_3

    .line 36
    :cond_d
    invoke-static {v5, v2, v10}, Ld/b/a/r;->a([FII)[F

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move-object v5, v2

    const/4 v2, 0x0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error in parsing \""

    const-string v3, "\""

    invoke-static {v2, v4, v3}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    :goto_a
    new-array v5, v2, [F

    .line 38
    :goto_b
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 39
    new-instance v4, Ld/i/c/b;

    invoke-direct {v4, v2, v5}, Ld/i/c/b;-><init>(C[F)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x0

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_10
    sub-int/2addr v3, v4

    const/4 v2, 0x1

    if-ne v3, v2, :cond_11

    .line 40
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_11

    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    new-array v2, v2, [F

    .line 42
    new-instance v3, Ld/i/c/b;

    invoke-direct {v3, v0, v2}, Ld/i/c/b;-><init>(C[F)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ld/i/c/b;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/i/c/b;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 82
    invoke-static {p0, p1}, Ld/b/a/r;->h(Landroid/os/Parcel;I)I

    move-result p1

    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    add-int/2addr v0, p1

    .line 85
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 3

    .line 6
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    invoke-static {p0}, Ld/b/a/r;->b(Ljava/lang/String;)[Ld/i/c/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    :try_start_0
    invoke-static {v1, v0}, Ld/i/c/b;->a([Ld/i/c/b;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in parsing "

    invoke-static {v2, p0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    return-object p0

    .line 11
    :cond_0
    instance-of v0, p0, Ld/i/c/j/a;

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Ld/i/c/j/d;

    invoke-direct {v0, p0}, Ld/i/c/j/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Le/c/a/a/b/j/o;
    .locals 2

    .line 2
    new-instance v0, Le/c/a/a/b/j/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/c/a/a/b/j/o;-><init>(Ljava/lang/Object;Le/c/a/a/b/j/i0;)V

    return-object v0
.end method

.method public static c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 13
    invoke-static {p0, p1}, Ld/b/a/r;->h(Landroid/os/Parcel;I)I

    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    add-int/2addr v0, p1

    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static c(Landroid/os/Parcel;I)V
    .locals 3

    .line 17
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance v0, Le/c/a/a/b/j/s/b;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Overread allowed size end="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Le/c/a/a/b/j/s/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static c(Landroid/os/Parcel;II)V
    .locals 1

    const v0, 0xffff

    if-lt p2, v0, :cond_0

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static c(Landroid/widget/TextView;I)V
    .locals 2

    .line 19
    invoke-static {p1}, Ld/b/a/r;->a(I)I

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Landroid/widget/TextView;I)V
    .locals 2

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public static d(Landroid/os/Parcel;I)Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Ld/b/a/r;->b(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ld/b/a/r;->h(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static f(Landroid/os/Parcel;I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Ld/b/a/r;->b(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static g(Landroid/os/Parcel;I)J
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-static {p0, p1, v0}, Ld/b/a/r;->b(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static h(Landroid/os/Parcel;I)I
    .locals 2

    const/high16 v0, -0x10000

    and-int v1, p1, v0

    if-eq v1, v0, :cond_0

    shr-int/lit8 p0, p1, 0x10

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static i(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ld/b/a/r;->h(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static j(Landroid/os/Parcel;I)I
    .locals 1

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method public static k(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 p1, p1, -0x4

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
