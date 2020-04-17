.class public Ld/x/n$a;
.super Ld/x/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/x/n;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/x/h;


# direct methods
.method public constructor <init>(Ld/x/n;Ld/x/h;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld/x/n$a;->a:Ld/x/h;

    invoke-direct {p0}, Ld/x/k;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld/x/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/x/n$a;->a:Ld/x/h;

    invoke-virtual {v0}, Ld/x/h;->c()V

    .line 2
    invoke-virtual {p1, p0}, Ld/x/h;->b(Ld/x/h$d;)Ld/x/h;

    return-void
.end method
