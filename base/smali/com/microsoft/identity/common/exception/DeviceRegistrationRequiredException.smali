.class public final Lcom/microsoft/identity/common/exception/DeviceRegistrationRequiredException;
.super Lcom/microsoft/identity/common/exception/BaseException;
.source "SourceFile"


# static fields
.field public static final sName:Ljava/lang/String;


# instance fields
.field public mUsername:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/exception/DeviceRegistrationRequiredException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/exception/DeviceRegistrationRequiredException;->sName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/microsoft/identity/common/exception/DeviceRegistrationRequiredException;->mUsername:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/exception/DeviceRegistrationRequiredException;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/exception/DeviceRegistrationRequiredException;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/exception/DeviceRegistrationRequiredException;->mUsername:Ljava/lang/String;

    return-void
.end method
