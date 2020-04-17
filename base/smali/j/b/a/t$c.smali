.class public Lj/b/a/t$c;
.super Ld/u/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b/a/t;-><init>(Ld/u/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lj/b/a/t;Ld/u/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ld/u/k;-><init>(Ld/u/g;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM measurement"

    return-object v0
.end method
