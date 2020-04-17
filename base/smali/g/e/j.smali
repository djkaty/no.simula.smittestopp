.class public final Lg/e/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/j$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Lg/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lg/e/j$a;

    const-string v3, "SO_SNDBUF"

    invoke-direct {v2, v3, v1}, Lg/e/j$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v2, Lg/e/j;->a:Ljava/net/SocketOption;

    .line 2
    new-instance v2, Lg/e/j$a;

    const-string v3, "SO_SNDTIMEO"

    invoke-direct {v2, v3, v1}, Lg/e/j$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v2, Lg/e/j;->b:Ljava/net/SocketOption;

    .line 3
    new-instance v2, Lg/e/j$a;

    const-string v3, "SO_RCVBUF"

    invoke-direct {v2, v3, v1}, Lg/e/j$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v2, Lg/e/j;->c:Ljava/net/SocketOption;

    .line 4
    new-instance v2, Lg/e/j$a;

    const-string v3, "SO_RCVTIMEO"

    invoke-direct {v2, v3, v1}, Lg/e/j$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v2, Lg/e/j;->d:Ljava/net/SocketOption;

    .line 5
    new-instance v1, Lg/e/j$a;

    const-string v2, "SO_KEEPALIVE"

    invoke-direct {v1, v2, v0}, Lg/e/j$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lg/e/j;->e:Ljava/net/SocketOption;

    .line 6
    new-instance v1, Lg/e/j$a;

    const-class v2, Lg/e/c;

    const-string v3, "SO_PEERCRED"

    invoke-direct {v1, v3, v2}, Lg/e/j$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lg/e/j;->f:Ljava/net/SocketOption;

    .line 7
    new-instance v1, Lg/e/j$a;

    const-string v2, "SO_PASSCRED"

    invoke-direct {v1, v2, v0}, Lg/e/j$a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lg/e/j;->g:Ljava/net/SocketOption;

    return-void
.end method
