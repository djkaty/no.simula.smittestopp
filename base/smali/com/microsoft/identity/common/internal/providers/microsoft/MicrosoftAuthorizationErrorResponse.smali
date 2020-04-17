.class public Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationErrorResponse;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;
.source "SourceFile"


# static fields
.field public static final AUTHORIZATION_FAILED:Ljava/lang/String; = "authorization_failed"

.field public static final AUTHORIZATION_SERVER_INVALID_RESPONSE:Ljava/lang/String; = "The authorization server returned an invalid response."

.field public static final BROKER_NEEDS_TO_BE_INSTALLED:Ljava/lang/String; = "Device needs to have broker installed"

.field public static final DEVICE_REGISTRATION_NEEDED:Ljava/lang/String; = "Device needs to be registered to access the resource"

.field public static final NULL_INTENT:Ljava/lang/String; = "Received null intent"

.field public static final SDK_AUTH_CANCEL:Ljava/lang/String; = "auth_cancelled_by_sdk"

.field public static final SDK_CANCELLED_FLOW:Ljava/lang/String; = "Sdk cancelled the auth flow as the app launched a new interactive auth request."

.field public static final STATE_NOT_RETURNED:Ljava/lang/String; = "State is not returned"

.field public static final STATE_NOT_THE_SAME:Ljava/lang/String; = "Returned state from authorize endpoint is not the same as the one sent"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "Unknown error"

.field public static final UNKNOWN_RESULT_CODE:Ljava/lang/String; = "Unknown result code returned "

.field public static final USER_CANCEL:Ljava/lang/String; = "user_cancelled"

.field public static final USER_CANCELLED_FLOW:Ljava/lang/String; = "User pressed device back button to cancel the flow."


# instance fields
.field public mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationErrorResponse;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationErrorResponse;->mUserName:Ljava/lang/String;

    return-void
.end method
