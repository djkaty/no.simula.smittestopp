.class public final Lcom/microsoft/identity/common/internal/platform/DevicePopManager$CertificateProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/platform/DevicePopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CertificateProperties"
.end annotation


# static fields
.field public static final CERTIFICATE_VALIDITY_YEARS:I = 0x63

.field public static final COMMON_NAME:Ljava/lang/String; = "CN=device-pop"

.field public static final SERIAL_NUMBER:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sput-object v0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$CertificateProperties;->SERIAL_NUMBER:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
