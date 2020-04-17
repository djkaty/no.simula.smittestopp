.class public Li/a/b/l/d;
.super Li/a/b/l/c;
.source "SourceFile"


# instance fields
.field public x:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li/a/b/l/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-ge p1, v0, :cond_1

    .line 1
    iget-object v0, p0, Li/a/b/l/d;->x:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, p2, -0x1

    if-le v0, p1, :cond_3

    .line 2
    iget-object v1, p0, Li/a/b/l/d;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move p2, v0

    goto :goto_1

    .line 3
    :cond_3
    :goto_2
    iget-object v0, p0, Li/a/b/l/d;->x:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li/a/b/l/b;->e:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget v0, p0, Li/a/b/l/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Li/a/b/l/b;->f:I

    iget v1, p0, Li/a/b/l/c;->w:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 2
    iput-char v0, p0, Li/a/b/l/b;->a:C

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Li/a/b/l/d;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Li/a/b/l/b;->a:C

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Li/a/b/l/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Li/a/b/l/b;->f:I

    iget v1, p0, Li/a/b/l/c;->w:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 2
    iput-char v0, p0, Li/a/b/l/b;->a:C

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Li/a/b/l/d;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Li/a/b/l/b;->a:C

    :goto_0
    return-void
.end method
