.class public final Lg/b/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final c:Lg/b/a/b$c;


# instance fields
.field public final a:Lg/b/a/b$d;

.field public final b:Lg/c/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/b/a/b$c;

    invoke-direct {v0}, Lg/b/a/b$c;-><init>()V

    sput-object v0, Lg/b/a/b$c;->c:Lg/b/a/b$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/b/a/b$d;

    .line 3
    sget-object v1, Lg/c/f$a;->a:Lg/c/f;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v0, v1, v2}, Lg/b/a/b$d;-><init>(Lg/c/f;Lg/b/a/b$a;)V

    iput-object v0, p0, Lg/b/a/b$c;->a:Lg/b/a/b$d;

    .line 5
    iget-object v0, v0, Lg/c/h;->a:Lg/c/f;

    .line 6
    sget-object v1, Lg/c/j;->uintptr_t:Lg/c/j;

    invoke-virtual {v0, v1}, Lg/c/f;->a(Lg/c/j;)Lg/c/i;

    move-result-object v0

    iput-object v0, p0, Lg/b/a/b$c;->b:Lg/c/i;

    return-void
.end method


# virtual methods
.method public final a(Lg/c/e;IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lg/b/a/b$c;->a:Lg/b/a/b$d;

    .line 2
    iget p2, p1, Lg/c/h;->f:I

    .line 3
    iget-object p1, p1, Lg/b/a/b$d;->g:Lg/c/h$i;

    invoke-virtual {p1}, Lg/c/h$a;->a()J

    const/4 p1, 0x0

    throw p1
.end method
