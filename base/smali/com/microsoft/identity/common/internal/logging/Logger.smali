.class public final Lcom/microsoft/identity/common/internal/logging/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;
    }
.end annotation


# static fields
.field public static final CUSTOM_LOG_ERROR:Ljava/lang/String; = "Custom log failed to log message:%s"

.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final INSTANCE:Lcom/microsoft/identity/common/internal/logging/Logger;

.field public static sAllowLogcat:Z

.field public static sAllowPii:Z

.field public static sLogExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public mExternalLogger:Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;

.field public mLogLevel:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/logging/Logger;->sLogExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/Logger;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/logging/Logger;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/logging/Logger;->INSTANCE:Lcom/microsoft/identity/common/internal/logging/Logger;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/microsoft/identity/common/internal/logging/Logger;->sAllowPii:Z

    .line 4
    sput-boolean v0, Lcom/microsoft/identity/common/internal/logging/Logger;->sAllowLogcat:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/logging/Logger;->mLogLevel:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/logging/Logger;)Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/logging/Logger;->mLogLevel:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    return-object p0
.end method

.method public static synthetic access$100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/microsoft/identity/common/internal/logging/Logger;->sAllowPii:Z

    return v0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/logging/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/logging/Logger;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/microsoft/identity/common/internal/logging/Logger;->sAllowLogcat:Z

    return v0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/internal/logging/Logger;Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/logging/Logger;->sendLogcatLogs(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/internal/logging/Logger;)Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/logging/Logger;->mExternalLogger:Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;

    return-object p0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/logging/IRequestContext;->toJsonString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/logging/IRequestContext;->toJsonString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "N/A"

    :cond_0
    const-string v0, " ["

    .line 2
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getUTCDateTimeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "] "

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, " - "

    invoke-static {v1, p1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Android "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getAllowLogcat()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/microsoft/identity/common/internal/logging/Logger;->sAllowLogcat:Z

    return v0
.end method

.method public static getAllowPii()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/microsoft/identity/common/internal/logging/Logger;->sAllowPii:Z

    return v0
.end method

.method public static getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/Logger;->INSTANCE:Lcom/microsoft/identity/common/internal/logging/Logger;

    return-object v0
.end method

.method public static getUTCDateTimeAsString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/logging/IRequestContext;->toJsonString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static infoPII(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/logging/IRequestContext;->toJsonString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static infoPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 10

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/Logger;->sLogExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/microsoft/identity/common/internal/logging/Logger$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move/from16 v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/microsoft/identity/common/internal/logging/Logger$1;-><init>(Lcom/microsoft/identity/common/internal/logging/Logger;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendLogcatLogs(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 2
    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown log level"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setAllowLogcat(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/microsoft/identity/common/internal/logging/Logger;->sAllowLogcat:Z

    return-void
.end method

.method public static setAllowPii(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/microsoft/identity/common/internal/logging/Logger;->sAllowPii:Z

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/logging/IRequestContext;->toJsonString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static verbosePII(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/logging/IRequestContext;->toJsonString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static verbosePII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/logging/IRequestContext;->toJsonString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static warnPII(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/logging/IRequestContext;->toJsonString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static warnPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getInstance()Lcom/microsoft/identity/common/internal/logging/Logger;

    move-result-object v0

    sget-object v2, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method


# virtual methods
.method public setExternalLogger(Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/logging/Logger;->mExternalLogger:Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;

    return-void
.end method

.method public setLogLevel(Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/logging/Logger;->mLogLevel:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    return-void
.end method
