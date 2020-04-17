.class public Lcom/microsoft/appcenter/AppCenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AppCenter;->setInstanceCustomProperties(Lcom/microsoft/appcenter/CustomProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/AppCenter;

.field public final synthetic val$properties:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter$3;->this$0:Lcom/microsoft/appcenter/AppCenter;

    iput-object p2, p0, Lcom/microsoft/appcenter/AppCenter$3;->val$properties:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter$3;->this$0:Lcom/microsoft/appcenter/AppCenter;

    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter$3;->val$properties:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/AppCenter;->access$300(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Map;)V

    return-void
.end method
