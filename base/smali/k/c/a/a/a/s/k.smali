.class public Lk/c/a/a/a/s/k;
.super Lk/c/a/a/a/s/h;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/c/a/a/a/s/h;-><init>()V

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.messages"

    .line 2
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lk/c/a/a/a/s/k;->b:Ljava/util/ResourceBundle;

    return-void
.end method
