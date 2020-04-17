.class public Le/c/a/a/b/i/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/b/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/b/i/c$a$a;
    }
.end annotation


# instance fields
.field public final a:Le/c/a/a/b/i/k/a;

.field public final b:Landroid/os/Looper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/c/a/a/b/i/c$a$a;

    invoke-direct {v0}, Le/c/a/a/b/i/c$a$a;-><init>()V

    invoke-virtual {v0}, Le/c/a/a/b/i/c$a$a;->a()Le/c/a/a/b/i/c$a;

    return-void
.end method

.method public synthetic constructor <init>(Le/c/a/a/b/i/k/a;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/c/a/a/b/i/c$a;->a:Le/c/a/a/b/i/k/a;

    .line 3
    iput-object p3, p0, Le/c/a/a/b/i/c$a;->b:Landroid/os/Looper;

    return-void
.end method
