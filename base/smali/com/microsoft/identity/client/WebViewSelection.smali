.class public final enum Lcom/microsoft/identity/client/WebViewSelection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/client/WebViewSelection;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/identity/client/WebViewSelection;

.field public static final enum EMBEDDED_WEBVIEW:Lcom/microsoft/identity/client/WebViewSelection;

.field public static final enum SYSTEM_BROWSER:Lcom/microsoft/identity/client/WebViewSelection;


# instance fields
.field public mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/WebViewSelection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "EMBEDDED_WEBVIEW"

    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/identity/client/WebViewSelection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/identity/client/WebViewSelection;->EMBEDDED_WEBVIEW:Lcom/microsoft/identity/client/WebViewSelection;

    .line 2
    new-instance v0, Lcom/microsoft/identity/client/WebViewSelection;

    const/4 v3, 0x2

    const-string v4, "SYSTEM_BROWSER"

    invoke-direct {v0, v4, v2, v3}, Lcom/microsoft/identity/client/WebViewSelection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/identity/client/WebViewSelection;->SYSTEM_BROWSER:Lcom/microsoft/identity/client/WebViewSelection;

    new-array v3, v3, [Lcom/microsoft/identity/client/WebViewSelection;

    .line 3
    sget-object v4, Lcom/microsoft/identity/client/WebViewSelection;->EMBEDDED_WEBVIEW:Lcom/microsoft/identity/client/WebViewSelection;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/identity/client/WebViewSelection;->$VALUES:[Lcom/microsoft/identity/client/WebViewSelection;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/microsoft/identity/client/WebViewSelection;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/client/WebViewSelection;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/client/WebViewSelection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/WebViewSelection;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/client/WebViewSelection;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/client/WebViewSelection;->$VALUES:[Lcom/microsoft/identity/client/WebViewSelection;

    invoke-virtual {v0}, [Lcom/microsoft/identity/client/WebViewSelection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/client/WebViewSelection;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/client/WebViewSelection;->mId:I

    return v0
.end method
