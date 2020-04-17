.class public Lk/b/g/e$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/j/h/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final synthetic a:Lk/b/g/e;


# direct methods
.method public synthetic constructor <init>(Lk/b/g/e;Lk/b/g/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/b/g/e$m;->a:Lk/b/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/b/j/h/b/b;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lk/b/b/c;

    .line 1
    iget-object p1, p1, Lk/b/j/h/b/b;->c:[B

    .line 2
    invoke-direct {v0, p1}, Lk/b/b/c;-><init>([B)V

    return-object v0
.end method
