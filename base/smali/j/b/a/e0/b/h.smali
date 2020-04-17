.class public final Lj/b/a/e0/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic x:Lno/simula/corona/ui/main/SettingsFragment;


# direct methods
.method public constructor <init>(Lno/simula/corona/ui/main/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lj/b/a/e0/b/h;->x:Lno/simula/corona/ui/main/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/b/a/e0/b/h;->x:Lno/simula/corona/ui/main/SettingsFragment;

    const-string v1, "error"

    invoke-static {p1, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(Lno/simula/corona/ui/main/SettingsFragment;Lcom/android/volley/VolleyError;)V

    return-void
.end method
