.class public Ld/p/a/b$c;
.super Ld/o/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/p/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final d:Ld/o/a0;


# instance fields
.field public c:Ld/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/f/i<",
            "Ld/p/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld/p/a/b$c$a;

    invoke-direct {v0}, Ld/p/a/b$c$a;-><init>()V

    sput-object v0, Ld/p/a/b$c;->d:Ld/o/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld/o/y;-><init>()V

    .line 2
    new-instance v0, Ld/f/i;

    const/16 v1, 0xa

    .line 3
    invoke-direct {v0, v1}, Ld/f/i;-><init>(I)V

    .line 4
    iput-object v0, p0, Ld/p/a/b$c;->c:Ld/f/i;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld/p/a/b$c;->c:Ld/f/i;

    invoke-virtual {v0}, Ld/f/i;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Ld/p/a/b$c;->c:Ld/f/i;

    invoke-virtual {v0, v2}, Ld/f/i;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/p/a/b$a;

    if-eqz v0, :cond_0

    .line 3
    throw v1

    .line 4
    :cond_0
    throw v1

    .line 5
    :cond_1
    iget-object v0, p0, Ld/p/a/b$c;->c:Ld/f/i;

    .line 6
    iget v3, v0, Ld/f/i;->A:I

    .line 7
    iget-object v4, v0, Ld/f/i;->z:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 8
    aput-object v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iput v2, v0, Ld/f/i;->A:I

    .line 10
    iput-boolean v2, v0, Ld/f/i;->x:Z

    return-void
.end method
