.class public Le/c/a/a/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/c/a/a/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/g/h<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/c/a/a/g/h;

    invoke-direct {v0}, Le/c/a/a/g/h;-><init>()V

    iput-object v0, p0, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    return-void
.end method
