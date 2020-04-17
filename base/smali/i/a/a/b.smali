.class public Li/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/i;


# static fields
.field public static final a:Li/a/a/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/a/b;

    invoke-direct {v0}, Li/a/a/b;-><init>()V

    sput-object v0, Li/a/a/b;->a:Li/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
