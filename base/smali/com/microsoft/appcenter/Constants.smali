.class public Lcom/microsoft/appcenter/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static APPLICATION_DEBUGGABLE:Z = false

.field public static final APP_SECRET:Ljava/lang/String; = "App-Secret"

.field public static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final COMMON_SCHEMA_PREFIX_SEPARATOR:Ljava/lang/String; = ":"

.field public static final DATABASE:Ljava/lang/String; = "com.microsoft.appcenter.documents"

.field public static final DEFAULT_TRIGGER_COUNT:I = 0x32

.field public static final DEFAULT_TRIGGER_INTERVAL:I = 0xbb8

.field public static final DEFAULT_TRIGGER_MAX_PARALLEL_REQUESTS:I = 0x3

.field public static FILES_PATH:Ljava/lang/String; = null

.field public static final READONLY_TABLE:Ljava/lang/String; = "app_documents"

.field public static final USER_TABLE_FORMAT:Ljava/lang/String; = "user_%s_documents"

.field public static final WRAPPER_SDK_NAME_NDK:Ljava/lang/String; = "appcenter.ndk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadFilesPath(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/microsoft/appcenter/Constants;->FILES_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AppCenter"

    const-string v1, "Exception thrown when accessing the application filesystem"

    .line 3
    invoke-static {v0, v1, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static loadFromContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/appcenter/Constants;->loadFilesPath(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/microsoft/appcenter/Constants;->setDebuggableFlag(Landroid/content/Context;)V

    return-void
.end method

.method public static setDebuggableFlag(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/microsoft/appcenter/Constants;->APPLICATION_DEBUGGABLE:Z

    :cond_1
    return-void
.end method
