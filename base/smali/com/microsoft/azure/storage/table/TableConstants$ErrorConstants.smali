.class public Lcom/microsoft/azure/storage/table/TableConstants$ErrorConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/table/TableConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorConstants"
.end annotation


# static fields
.field public static final ERROR_CODE:Ljava/lang/String; = "code"

.field public static final ERROR_EXCEPTION_STACK_TRACE:Ljava/lang/String; = "stacktrace"

.field public static final ERROR_EXCEPTION_TYPE:Ljava/lang/String; = "type"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "message"

.field public static final ERROR_ROOT_ELEMENT:Ljava/lang/String; = "error"

.field public static final INNER_ERROR:Ljava/lang/String; = "innererror"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
