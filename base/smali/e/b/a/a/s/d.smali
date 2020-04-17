.class public Le/b/a/a/s/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/b/a/a/s/d;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final x:Le/b/a/a/p/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/b/a/a/p/g;

    const-string v1, " "

    invoke-direct {v0, v1}, Le/b/a/a/p/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/b/a/a/s/d;->x:Le/b/a/a/p/g;

    return-void
.end method
