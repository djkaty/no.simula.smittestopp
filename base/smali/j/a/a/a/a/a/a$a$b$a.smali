.class public Lj/a/a/a/a/a/a$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/a/a/a/a/a$a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Lj/a/a/a/a/a/j;

.field public final synthetic y:Lj/a/a/a/a/a/a$a$b;


# direct methods
.method public constructor <init>(Lj/a/a/a/a/a/a$a$b;Lj/a/a/a/a/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/a/a/a/a/a$a$b$a;->y:Lj/a/a/a/a/a/a$a$b;

    iput-object p2, p0, Lj/a/a/a/a/a/a$a$b$a;->x:Lj/a/a/a/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj/a/a/a/a/a/a$a$b$a;->y:Lj/a/a/a/a/a/a$a$b;

    iget-object v0, v0, Lj/a/a/a/a/a/a$a$b;->x:Lj/a/a/a/a/a/a$a;

    iget-object v0, v0, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    iget-object v1, p0, Lj/a/a/a/a/a/a$a$b$a;->x:Lj/a/a/a/a/a/j;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lj/a/a/a/a/a/g;->a(ILj/a/a/a/a/a/j;)V

    return-void
.end method
