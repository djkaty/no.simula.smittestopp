.class public Lcom/microsoft/appcenter/crashes/model/NativeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final CRASH_MESSAGE:Ljava/lang/String; = "Native exception read from a minidump file"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Native exception read from a minidump file"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
