.class public final Lg/c/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lg/c/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lg/c/m/a$a;->a:Lg/c/m/a;

    .line 2
    check-cast v0, Lg/c/m/c;

    .line 3
    iget-object v0, v0, Lg/c/m/c;->c:Lg/c/f;

    .line 4
    sput-object v0, Lg/c/f$a;->a:Lg/c/f;

    return-void
.end method
