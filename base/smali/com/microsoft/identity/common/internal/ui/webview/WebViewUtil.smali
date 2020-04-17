.class public Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "WebViewUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCookieManager(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->setDataDirectorySuffix(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    return-object p0
.end method

.method public static removeCookiesFromWebView(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->getCookieManager(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method public static removeSessionCookiesFromWebView(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->getCookieManager(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method public static setAcceptCookie(ZLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->getCookieManager(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void
.end method

.method public static setDataDirectorySuffix(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/ProcessUtil;->isRunningOnAuthService(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "auth"

    .line 3
    invoke-static {p0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/ui/webview/WebViewUtil;->TAG:Ljava/lang/String;

    const-string v1, ":setDataDirectorySuffix"

    const-string v2, "WebView is already initialized. IllegalStateException is expected when setDataDirectorySuffix() is invoked"

    invoke-static {p0, v0, v1, v2}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
