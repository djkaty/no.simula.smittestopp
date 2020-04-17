.class public final Ld/w/a/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/w/a/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/w/a/c$b;)Ld/w/a/c;
    .locals 3

    .line 1
    new-instance v0, Ld/w/a/f/c;

    iget-object v1, p1, Ld/w/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p1, Ld/w/a/c$b;->b:Ljava/lang/String;

    iget-object p1, p1, Ld/w/a/c$b;->c:Ld/w/a/c$a;

    invoke-direct {v0, v1, v2, p1}, Ld/w/a/f/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ld/w/a/c$a;)V

    return-object v0
.end method
