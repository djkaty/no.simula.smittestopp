.class public Lj/b/a/c$b;
.super Ld/u/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b/a/c;-><init>(Ld/u/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lj/b/a/c;Ld/u/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ld/u/k;-><init>(Ld/u/g;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE from bluetoothcontact WHERE isUploaded is 1"

    return-object v0
.end method
