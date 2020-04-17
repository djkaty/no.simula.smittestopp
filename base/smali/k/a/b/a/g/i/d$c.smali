.class public Lk/a/b/a/g/i/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/g/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/g/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lk/a/b/a/g/i/d;


# direct methods
.method public synthetic constructor <init>(Lk/a/b/a/g/i/d;Lk/a/b/a/g/i/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/g/i/d$c;->a:Lk/a/b/a/g/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/g/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/d$c;->a:Lk/a/b/a/g/i/d;

    invoke-static {v0, p1}, Lk/a/b/a/g/i/d;->a(Lk/a/b/a/g/i/d;Lk/a/b/a/g/g;)V

    return-void
.end method
