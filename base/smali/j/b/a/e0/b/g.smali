.class public final Lj/b/a/e0/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic x:Lno/simula/corona/ui/main/SettingsFragment;


# direct methods
.method public constructor <init>(Lno/simula/corona/ui/main/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lj/b/a/e0/b/g;->x:Lno/simula/corona/ui/main/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lj/b/a/e0/b/g;->x:Lno/simula/corona/ui/main/SettingsFragment;

    const-string v1, "response"

    invoke-static {p1, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(Lno/simula/corona/ui/main/SettingsFragment;Lorg/json/JSONObject;)V

    return-void
.end method
