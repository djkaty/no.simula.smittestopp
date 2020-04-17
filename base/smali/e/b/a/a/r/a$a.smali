.class public final Le/b/a/a/r/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[I

.field public final e:[Ljava/lang/String;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(III[I[Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/b/a/a/r/a$a;->a:I

    .line 3
    iput p2, p0, Le/b/a/a/r/a$a;->b:I

    .line 4
    iput p3, p0, Le/b/a/a/r/a$a;->c:I

    .line 5
    iput-object p4, p0, Le/b/a/a/r/a$a;->d:[I

    .line 6
    iput-object p5, p0, Le/b/a/a/r/a$a;->e:[Ljava/lang/String;

    .line 7
    iput p6, p0, Le/b/a/a/r/a$a;->f:I

    .line 8
    iput p7, p0, Le/b/a/a/r/a$a;->g:I

    return-void
.end method

.method public constructor <init>(Le/b/a/a/r/a;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget v0, p1, Le/b/a/a/r/a;->g:I

    .line 11
    iput v0, p0, Le/b/a/a/r/a$a;->a:I

    .line 12
    iget v0, p1, Le/b/a/a/r/a;->k:I

    .line 13
    iput v0, p0, Le/b/a/a/r/a$a;->b:I

    .line 14
    iget v0, p1, Le/b/a/a/r/a;->j:I

    .line 15
    iput v0, p0, Le/b/a/a/r/a$a;->c:I

    .line 16
    iget-object v0, p1, Le/b/a/a/r/a;->f:[I

    .line 17
    iput-object v0, p0, Le/b/a/a/r/a$a;->d:[I

    .line 18
    iget-object v0, p1, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    .line 19
    iput-object v0, p0, Le/b/a/a/r/a$a;->e:[Ljava/lang/String;

    .line 20
    iget v0, p1, Le/b/a/a/r/a;->m:I

    .line 21
    iput v0, p0, Le/b/a/a/r/a$a;->f:I

    .line 22
    iget p1, p1, Le/b/a/a/r/a;->n:I

    .line 23
    iput p1, p0, Le/b/a/a/r/a$a;->g:I

    return-void
.end method

.method public static a(I)Le/b/a/a/r/a$a;
    .locals 9

    shl-int/lit8 v7, p0, 0x3

    .line 1
    invoke-static {p0}, Le/b/a/a/r/a;->d(I)I

    move-result v3

    .line 2
    new-instance v8, Le/b/a/a/r/a$a;

    new-array v4, v7, [I

    shl-int/lit8 v0, p0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    sub-int v6, v7, p0

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Le/b/a/a/r/a$a;-><init>(III[I[Ljava/lang/String;II)V

    return-object v8
.end method
