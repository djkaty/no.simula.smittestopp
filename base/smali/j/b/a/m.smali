.class public final Lj/b/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic x:Lj/b/a/h$b;


# direct methods
.method public constructor <init>(Lj/b/a/h$b;)V
    .locals 0

    iput-object p1, p0, Lj/b/a/m;->x:Lj/b/a/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/b/a/m;->x:Lj/b/a/h$b;

    if-eqz v0, :cond_0

    const-string v1, "error"

    invoke-static {p1, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lj/b/a/h$b;->a(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method
