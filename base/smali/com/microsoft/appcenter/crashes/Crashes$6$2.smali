.class public Lcom/microsoft/appcenter/crashes/Crashes$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes$6;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes$6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/Crashes$6$2;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$6$2;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    iget-object v0, v0, Lcom/microsoft/appcenter/crashes/Crashes$6;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->access$700(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/crashes/CrashesListener;->onBeforeSending(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V

    return-void
.end method

.method public shouldDeleteThrowable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
