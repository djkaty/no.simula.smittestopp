.class public Lcom/microsoft/appcenter/crashes/model/TestCrashException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final CRASH_MESSAGE:Ljava/lang/String; = "Test crash exception generated by SDK"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Test crash exception generated by SDK"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
