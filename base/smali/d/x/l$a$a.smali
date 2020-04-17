.class public Ld/x/l$a$a;
.super Ld/x/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/x/l$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/f/a;

.field public final synthetic b:Ld/x/l$a;


# direct methods
.method public constructor <init>(Ld/x/l$a;Ld/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/x/l$a$a;->b:Ld/x/l$a;

    iput-object p2, p0, Ld/x/l$a$a;->a:Ld/f/a;

    invoke-direct {p0}, Ld/x/k;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld/x/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/x/l$a$a;->a:Ld/f/a;

    iget-object v1, p0, Ld/x/l$a$a;->b:Ld/x/l$a;

    iget-object v1, v1, Ld/x/l$a;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ld/f/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
