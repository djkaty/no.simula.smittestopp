.class public Lcom/microsoft/azure/storage/Constants$EncryptionConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionConstants"
.end annotation


# static fields
.field public static final BLOB_ENCRYPTION_DATA:Ljava/lang/String; = "encryptiondata"

.field public static final CONTENT_ENCRYPTION_IV:Ljava/lang/String; = "ContentEncryptionIV"

.field public static final ENCRYPTION_AGENT:Ljava/lang/String; = "EncryptionAgent"

.field public static final ENCRYPTION_LIBRARY:Ljava/lang/String; = "EncryptionLibrary"

.field public static final ENCRYPTION_MODE:Ljava/lang/String; = "EncryptionMode"

.field public static final ENCRYPTION_PROTOCOL_V1:Ljava/lang/String; = "1.0"

.field public static final FULL_BLOB:Ljava/lang/String; = "FullBlob"

.field public static final KEY_WRAPPING_IV:Ljava/lang/String; = "KeyWrappingIV"

.field public static final KEY_WRAPPING_METADATA:Ljava/lang/String; = "KeyWrappingMetadata"

.field public static final TABLE_ENCRYPTION_KEY_DETAILS:Ljava/lang/String; = "_ClientEncryptionMetadata1"

.field public static final TABLE_ENCRYPTION_PROPERTY_DETAILS:Ljava/lang/String; = "_ClientEncryptionMetadata2"

.field public static final WRAPPED_CONTENT_KEY:Ljava/lang/String; = "WrappedContentKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
