.class public Ld/o/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ld/o/g$b;

.field public b:Ld/o/j;


# direct methods
.method public constructor <init>(Ld/o/k;Ld/o/g$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ld/o/o;->a(Ljava/lang/Object;)Ld/o/j;

    move-result-object p1

    iput-object p1, p0, Ld/o/m$a;->b:Ld/o/j;

    .line 3
    iput-object p2, p0, Ld/o/m$a;->a:Ld/o/g$b;

    return-void
.end method


# virtual methods
.method public a(Ld/o/l;Ld/o/g$a;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ld/o/m;->b(Ld/o/g$a;)Ld/o/g$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ld/o/m$a;->a:Ld/o/g$b;

    invoke-static {v1, v0}, Ld/o/m;->a(Ld/o/g$b;Ld/o/g$b;)Ld/o/g$b;

    move-result-object v1

    iput-object v1, p0, Ld/o/m$a;->a:Ld/o/g$b;

    .line 3
    iget-object v1, p0, Ld/o/m$a;->b:Ld/o/j;

    invoke-interface {v1, p1, p2}, Ld/o/j;->a(Ld/o/l;Ld/o/g$a;)V

    .line 4
    iput-object v0, p0, Ld/o/m$a;->a:Ld/o/g$b;

    return-void
.end method
