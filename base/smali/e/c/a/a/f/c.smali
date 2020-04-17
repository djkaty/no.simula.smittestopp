.class public final Le/c/a/a/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/c/a/a/b/i/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a$g<",
            "Le/c/a/a/f/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Le/c/a/a/b/i/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a$g<",
            "Le/c/a/a/f/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Le/c/a/a/b/i/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a$a<",
            "Le/c/a/a/f/b/a;",
            "Le/c/a/a/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Le/c/a/a/b/i/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a$a<",
            "Le/c/a/a/f/b/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/c/a/a/b/i/a$g;

    invoke-direct {v0}, Le/c/a/a/b/i/a$g;-><init>()V

    sput-object v0, Le/c/a/a/f/c;->a:Le/c/a/a/b/i/a$g;

    .line 2
    new-instance v0, Le/c/a/a/b/i/a$g;

    invoke-direct {v0}, Le/c/a/a/b/i/a$g;-><init>()V

    sput-object v0, Le/c/a/a/f/c;->b:Le/c/a/a/b/i/a$g;

    .line 3
    new-instance v0, Le/c/a/a/f/d;

    invoke-direct {v0}, Le/c/a/a/f/d;-><init>()V

    sput-object v0, Le/c/a/a/f/c;->c:Le/c/a/a/b/i/a$a;

    .line 4
    new-instance v0, Le/c/a/a/f/e;

    invoke-direct {v0}, Le/c/a/a/f/e;-><init>()V

    sput-object v0, Le/c/a/a/f/c;->d:Le/c/a/a/b/i/a$a;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const/4 v1, 0x1

    const-string v2, "profile"

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    .line 7
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "email"

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    .line 9
    sget-object v0, Le/c/a/a/f/c;->c:Le/c/a/a/b/i/a$a;

    sget-object v1, Le/c/a/a/f/c;->a:Le/c/a/a/b/i/a$g;

    const-string v2, "Cannot construct an Api with a null ClientBuilder"

    .line 10
    invoke-static {v0, v2}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    .line 11
    invoke-static {v1, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Le/c/a/a/f/c;->d:Le/c/a/a/b/i/a$a;

    sget-object v3, Le/c/a/a/f/c;->b:Le/c/a/a/b/i/a$g;

    .line 13
    invoke-static {v1, v2}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v3, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
