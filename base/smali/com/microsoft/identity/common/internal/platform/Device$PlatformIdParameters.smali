.class public final Lcom/microsoft/identity/common/internal/platform/Device$PlatformIdParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/platform/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformIdParameters"
.end annotation


# static fields
.field public static final BROKER_VERSION:Ljava/lang/String; = "x-client-brkrver"

.field public static final CPU_PLATFORM:Ljava/lang/String; = "x-client-CPU"

.field public static final DEVICE_MODEL:Ljava/lang/String; = "x-client-DM"

.field public static final OS:Ljava/lang/String; = "x-client-OS"

.field public static final PRODUCT:Ljava/lang/String; = "x-client-SKU"

.field public static final PRODUCT_NAME:Ljava/lang/String; = "MSAL.Android"

.field public static final PRODUCT_VERSION:Ljava/lang/String; = "1.4.0"

.field public static final VERSION:Ljava/lang/String; = "x-client-Ver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
