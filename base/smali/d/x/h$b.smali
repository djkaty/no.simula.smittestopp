.class public Ld/x/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/x/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Ld/x/p;

.field public d:Ld/x/d0;

.field public e:Ld/x/h;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ld/x/h;Ld/x/d0;Ld/x/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/x/h$b;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Ld/x/h$b;->b:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Ld/x/h$b;->c:Ld/x/p;

    .line 5
    iput-object p4, p0, Ld/x/h$b;->d:Ld/x/d0;

    .line 6
    iput-object p3, p0, Ld/x/h$b;->e:Ld/x/h;

    return-void
.end method
