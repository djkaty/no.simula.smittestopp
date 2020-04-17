.class public Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpochAndSeq"
.end annotation


# instance fields
.field public final epoch:Ljava/lang/String;

.field public seq:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;->epoch:Ljava/lang/String;

    return-void
.end method
