.class public Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/NetworkStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/utils/NetworkStateHelper;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;->this$0:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;-><init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;->this$0:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    invoke-static {p1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->access$300(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V

    return-void
.end method
