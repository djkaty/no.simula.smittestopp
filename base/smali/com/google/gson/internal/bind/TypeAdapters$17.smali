.class public final Lcom/google/gson/internal/bind/TypeAdapters$17;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Le/c/c/y/a;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Le/c/c/y/a;->r()Le/c/c/y/b;

    move-result-object v0

    sget-object v1, Le/c/c/y/b;->NULL:Le/c/c/y/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/c/c/y/a;->o()V

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Le/c/c/y/a;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Le/c/c/s;

    invoke-direct {v0, p1}, Le/c/c/s;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Le/c/c/y/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/math/BigDecimal;

    .line 2
    invoke-virtual {p1, p2}, Le/c/c/y/c;->a(Ljava/lang/Number;)Le/c/c/y/c;

    return-void
.end method
