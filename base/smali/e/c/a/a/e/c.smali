.class public Le/c/a/a/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/c/a/a/b/i/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a$g<",
            "Le/c/a/a/d/c/o;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Le/c/a/a/b/i/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a$a<",
            "Le/c/a/a/d/c/o;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Le/c/a/a/b/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Le/c/a/a/b/i/a$g;

    invoke-direct {v0}, Le/c/a/a/b/i/a$g;-><init>()V

    sput-object v0, Le/c/a/a/e/c;->a:Le/c/a/a/b/i/a$g;

    new-instance v0, Le/c/a/a/e/g;

    invoke-direct {v0}, Le/c/a/a/e/g;-><init>()V

    sput-object v0, Le/c/a/a/e/c;->b:Le/c/a/a/b/i/a$a;

    new-instance v1, Le/c/a/a/b/i/a;

    sget-object v2, Le/c/a/a/e/c;->a:Le/c/a/a/b/i/a$g;

    const-string v3, "LocationServices.API"

    invoke-direct {v1, v3, v0, v2}, Le/c/a/a/b/i/a;-><init>(Ljava/lang/String;Le/c/a/a/b/i/a$a;Le/c/a/a/b/i/a$g;)V

    sput-object v1, Le/c/a/a/e/c;->c:Le/c/a/a/b/i/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Le/c/a/a/e/a;
    .locals 1

    new-instance v0, Le/c/a/a/e/a;

    invoke-direct {v0, p0}, Le/c/a/a/e/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
