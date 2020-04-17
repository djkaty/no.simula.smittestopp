.class public final Lno/simula/corona/MainActivity$d;
.super Lh/k/b/h;
.source "SourceFile"

# interfaces
.implements Lh/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/k/b/h;",
        "Lh/k/a/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final x:Lno/simula/corona/MainActivity$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lno/simula/corona/MainActivity$d;

    invoke-direct {v0}, Lno/simula/corona/MainActivity$d;-><init>()V

    sput-object v0, Lno/simula/corona/MainActivity$d;->x:Lno/simula/corona/MainActivity$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh/k/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
