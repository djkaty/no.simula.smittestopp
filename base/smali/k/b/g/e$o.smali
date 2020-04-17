.class public Lk/b/g/e$o;
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
    name = "o"
.end annotation


# instance fields
.field public final synthetic a:Lk/b/g/e;


# direct methods
.method public synthetic constructor <init>(Lk/b/g/e;Lk/b/g/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/b/g/e$o;->a:Lk/b/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/b/j/h/b/b;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lk/b/b/e;

    .line 1
    iget-object p1, p1, Lk/b/j/h/b/b;->c:[B

    .line 2
    invoke-direct {v0, p1}, Lk/b/b/e;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lk/b/g/b;

    const-string v1, "problem parsing cert: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/a/a/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lk/b/g/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
