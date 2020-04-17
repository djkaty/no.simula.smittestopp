.class public Li/a/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/b/h$a;
    }
.end annotation


# static fields
.field public static final a:Li/a/b/h$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/b/h$a;

    invoke-direct {v0}, Li/a/b/h$a;-><init>()V

    sput-object v0, Li/a/b/h;->a:Li/a/b/h$a;

    return-void
.end method
