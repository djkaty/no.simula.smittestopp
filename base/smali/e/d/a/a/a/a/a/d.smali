.class public final synthetic Le/d/a/a/a/a/a/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Le/d/a/a/a/a/a/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/d/a/a/a/a/a/d;

    invoke-direct {v0}, Le/d/a/a/a/a/a/d;-><init>()V

    sput-object v0, Le/d/a/a/a/a/a/d;->a:Le/d/a/a/a/a/a/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
