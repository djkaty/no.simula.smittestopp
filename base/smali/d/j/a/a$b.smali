.class public Ld/j/a/a$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ld/j/a/a;


# direct methods
.method public constructor <init>(Ld/j/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/j/a/a$b;->a:Ld/j/a/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/j/a/a$b;->a:Ld/j/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ld/j/a/a;->x:Z

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/j/a/a$b;->a:Ld/j/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ld/j/a/a;->x:Z

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
