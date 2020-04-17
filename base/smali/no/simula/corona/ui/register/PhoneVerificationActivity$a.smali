.class public final Lno/simula/corona/ui/register/PhoneVerificationActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/AuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/ui/register/PhoneVerificationActivity;->onCreated(Lcom/microsoft/identity/client/IPublicClientApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno/simula/corona/ui/register/PhoneVerificationActivity;

.field public final synthetic b:Lh/k/b/k;


# direct methods
.method public constructor <init>(Lno/simula/corona/ui/register/PhoneVerificationActivity;Lh/k/b/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/k/b/k;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->a:Lno/simula/corona/ui/register/PhoneVerificationActivity;

    iput-object p2, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->b:Lh/k/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "Acquire Token Cancelled"

    .line 1
    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->a:Lno/simula/corona/ui/register/PhoneVerificationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 3
    iget-object v0, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->a:Lno/simula/corona/ui/register/PhoneVerificationActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    iget-object v0, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->a:Lno/simula/corona/ui/register/PhoneVerificationActivity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    sget-object v3, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v3, v0, v2}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "where"

    const-string v3, "PhoneVerAcquireToken"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v0, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 5
    iget-object p1, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->a:Lno/simula/corona/ui/register/PhoneVerificationActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 6
    iget-object p1, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->a:Lno/simula/corona/ui/register/PhoneVerificationActivity;

    invoke-virtual {p1, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onSuccess(Lcom/microsoft/identity/client/IAuthenticationResult;)V
    .locals 10

    const-string v0, "Acquired token"

    .line 1
    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->b:Lh/k/b/k;

    iget-object v1, v1, Lh/k/b/k;->x:Ljava/lang/Object;

    check-cast v1, Landroid/app/Application;

    const-string v2, "longLivingApp"

    invoke-static {v1, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/client/IAuthenticationResult;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "result.accessToken"

    invoke-static {v3, v4}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "signInNames.phoneNumber"

    const/4 v6, 0x0

    const-string v7, "."

    .line 3
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v3, v7, v0, v0, v8}, Lh/o/g;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    const-string v9, "settings"

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    .line 5
    :try_start_0
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v3, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v7, "Base64.decode(parts[1], Base64.NO_WRAP)"

    invoke-static {v3, v7}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lh/o/a;->a:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "phone.getString(\"signInNames.phoneNumber\")"

    invoke-static {v3, v5}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v9, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "phone-number"

    .line 11
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "where"

    const-string v7, "storePhoneNumber"

    .line 14
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v1, v3, v6}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 16
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 17
    invoke-interface {p1}, Lcom/microsoft/identity/client/IAuthenticationResult;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    const-string v5, "token"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object v3, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->b:Lh/k/b/k;

    iget-object v3, v3, Lh/k/b/k;->x:Ljava/lang/Object;

    check-cast v3, Landroid/app/Application;

    invoke-static {v3, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/client/IAuthenticationResult;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v9, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 20
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 21
    invoke-interface {v2, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string p1, "timestamp"

    invoke-interface {v2, p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    iget-object p1, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->a:Lno/simula/corona/ui/register/PhoneVerificationActivity;

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 25
    :cond_1
    iget-object p1, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->a:Lno/simula/corona/ui/register/PhoneVerificationActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 26
    iget-object p1, p0, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;->a:Lno/simula/corona/ui/register/PhoneVerificationActivity;

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
