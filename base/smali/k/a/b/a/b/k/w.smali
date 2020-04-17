.class public abstract Lk/a/b/a/b/k/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lk/a/b/a/b/k/x;

.field public c:Lk/a/b/a/b/k/y;

.field public d:Lk/a/b/a/b/h;

.field public e:Z

.field public f:Ljava/util/Map;

.field public g:[Lk/a/b/a/b/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk/a/b/a/b/k/x;->NONE:Lk/a/b/a/b/k/x;

    iput-object v0, p0, Lk/a/b/a/b/k/w;->b:Lk/a/b/a/b/k/x;

    .line 3
    sget-object v0, Lk/a/b/a/b/k/y;->SESSION_END:Lk/a/b/a/b/k/y;

    iput-object v0, p0, Lk/a/b/a/b/k/w;->c:Lk/a/b/a/b/k/y;

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/b/k/w;->d:Lk/a/b/a/b/h;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/b/k/w;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lk/a/b/a/b/k/x;->NONE:Lk/a/b/a/b/k/x;

    iput-object v0, p0, Lk/a/b/a/b/k/w;->b:Lk/a/b/a/b/k/x;

    .line 7
    sget-object v0, Lk/a/b/a/b/k/y;->SESSION_END:Lk/a/b/a/b/k/y;

    iput-object v0, p0, Lk/a/b/a/b/k/w;->c:Lk/a/b/a/b/k/y;

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/b/k/w;->d:Lk/a/b/a/b/h;

    .line 9
    iget-object v0, p1, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    iput-object v0, p0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lk/a/b/a/b/k/w;->b:Lk/a/b/a/b/k/x;

    iput-object v0, p0, Lk/a/b/a/b/k/w;->b:Lk/a/b/a/b/k/x;

    .line 11
    iget-object v0, p1, Lk/a/b/a/b/k/w;->c:Lk/a/b/a/b/k/y;

    iput-object v0, p0, Lk/a/b/a/b/k/w;->c:Lk/a/b/a/b/k/y;

    .line 12
    iget-object v0, p1, Lk/a/b/a/b/k/w;->d:Lk/a/b/a/b/h;

    iput-object v0, p0, Lk/a/b/a/b/k/w;->d:Lk/a/b/a/b/h;

    .line 13
    iget-boolean v0, p1, Lk/a/b/a/b/k/w;->e:Z

    iput-boolean v0, p0, Lk/a/b/a/b/k/w;->e:Z

    .line 14
    iget-object v0, p1, Lk/a/b/a/b/k/w;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lk/a/b/a/b/k/w;->f:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lk/a/b/a/b/k/w;->f:Ljava/util/Map;

    .line 16
    :cond_0
    iget-object p1, p1, Lk/a/b/a/b/k/w;->g:[Lk/a/b/a/b/f;

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, [Lk/a/b/a/b/f;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lk/a/b/a/b/f;

    iput-object p1, p0, Lk/a/b/a/b/k/w;->g:[Lk/a/b/a/b/f;

    :cond_1
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    return-object v0
.end method
