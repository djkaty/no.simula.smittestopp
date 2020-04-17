.class public Lcom/microsoft/identity/common/internal/util/ICacheRecordGsonAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/c/i<",
        "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 0

    .line 2
    const-class p2, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    return-object p1
.end method

.method public bridge synthetic deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/util/ICacheRecordGsonAdapter;->deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    return-object p1
.end method
