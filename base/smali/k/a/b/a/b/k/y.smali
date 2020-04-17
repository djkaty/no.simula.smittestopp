.class public final enum Lk/a/b/a/b/k/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/b/k/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/b/k/y;

.field public static final enum CONNECTION_CLOSE:Lk/a/b/a/b/k/y;

.field public static final enum LINK_DETACH:Lk/a/b/a/b/k/y;

.field public static final enum NEVER:Lk/a/b/a/b/k/y;

.field public static final enum SESSION_END:Lk/a/b/a/b/k/y;

.field public static final _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/b/f;",
            "Lk/a/b/a/b/k/y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _policy:Lk/a/b/a/b/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lk/a/b/a/b/k/y;

    const/4 v1, 0x0

    const-string v2, "LINK_DETACH"

    const-string v3, "link-detach"

    invoke-direct {v0, v2, v1, v3}, Lk/a/b/a/b/k/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lk/a/b/a/b/k/y;->LINK_DETACH:Lk/a/b/a/b/k/y;

    .line 2
    new-instance v0, Lk/a/b/a/b/k/y;

    const/4 v2, 0x1

    const-string v3, "SESSION_END"

    const-string v4, "session-end"

    invoke-direct {v0, v3, v2, v4}, Lk/a/b/a/b/k/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lk/a/b/a/b/k/y;->SESSION_END:Lk/a/b/a/b/k/y;

    .line 3
    new-instance v0, Lk/a/b/a/b/k/y;

    const/4 v3, 0x2

    const-string v4, "CONNECTION_CLOSE"

    const-string v5, "connection-close"

    invoke-direct {v0, v4, v3, v5}, Lk/a/b/a/b/k/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lk/a/b/a/b/k/y;->CONNECTION_CLOSE:Lk/a/b/a/b/k/y;

    .line 4
    new-instance v0, Lk/a/b/a/b/k/y;

    const/4 v4, 0x3

    const-string v5, "NEVER"

    const-string v6, "never"

    invoke-direct {v0, v5, v4, v6}, Lk/a/b/a/b/k/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lk/a/b/a/b/k/y;->NEVER:Lk/a/b/a/b/k/y;

    const/4 v5, 0x4

    new-array v5, v5, [Lk/a/b/a/b/k/y;

    .line 5
    sget-object v6, Lk/a/b/a/b/k/y;->LINK_DETACH:Lk/a/b/a/b/k/y;

    aput-object v6, v5, v1

    sget-object v1, Lk/a/b/a/b/k/y;->SESSION_END:Lk/a/b/a/b/k/y;

    aput-object v1, v5, v2

    sget-object v1, Lk/a/b/a/b/k/y;->CONNECTION_CLOSE:Lk/a/b/a/b/k/y;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lk/a/b/a/b/k/y;->$VALUES:[Lk/a/b/a/b/k/y;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/a/b/a/b/k/y;->_map:Ljava/util/Map;

    .line 7
    sget-object v1, Lk/a/b/a/b/k/y;->LINK_DETACH:Lk/a/b/a/b/k/y;

    invoke-virtual {v1}, Lk/a/b/a/b/k/y;->getPolicy()Lk/a/b/a/b/f;

    move-result-object v1

    sget-object v2, Lk/a/b/a/b/k/y;->LINK_DETACH:Lk/a/b/a/b/k/y;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lk/a/b/a/b/k/y;->_map:Ljava/util/Map;

    sget-object v1, Lk/a/b/a/b/k/y;->SESSION_END:Lk/a/b/a/b/k/y;

    invoke-virtual {v1}, Lk/a/b/a/b/k/y;->getPolicy()Lk/a/b/a/b/f;

    move-result-object v1

    sget-object v2, Lk/a/b/a/b/k/y;->SESSION_END:Lk/a/b/a/b/k/y;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lk/a/b/a/b/k/y;->_map:Ljava/util/Map;

    sget-object v1, Lk/a/b/a/b/k/y;->CONNECTION_CLOSE:Lk/a/b/a/b/k/y;

    invoke-virtual {v1}, Lk/a/b/a/b/k/y;->getPolicy()Lk/a/b/a/b/f;

    move-result-object v1

    sget-object v2, Lk/a/b/a/b/k/y;->CONNECTION_CLOSE:Lk/a/b/a/b/k/y;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lk/a/b/a/b/k/y;->_map:Ljava/util/Map;

    sget-object v1, Lk/a/b/a/b/k/y;->NEVER:Lk/a/b/a/b/k/y;

    invoke-virtual {v1}, Lk/a/b/a/b/k/y;->getPolicy()Lk/a/b/a/b/f;

    move-result-object v1

    sget-object v2, Lk/a/b/a/b/k/y;->NEVER:Lk/a/b/a/b/k/y;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-static {p3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lk/a/b/a/b/k/y;->_policy:Lk/a/b/a/b/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/b/k/y;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/b/k/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/b/k/y;

    return-object p0
.end method

.method public static valueOf(Lk/a/b/a/b/f;)Lk/a/b/a/b/k/y;
    .locals 3

    .line 2
    sget-object v0, Lk/a/b/a/b/k/y;->_map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/b/a/b/k/y;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown TerminusExpiryPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lk/a/b/a/b/k/y;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/b/k/y;->$VALUES:[Lk/a/b/a/b/k/y;

    invoke-virtual {v0}, [Lk/a/b/a/b/k/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/b/k/y;

    return-object v0
.end method


# virtual methods
.method public getPolicy()Lk/a/b/a/b/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/k/y;->_policy:Lk/a/b/a/b/f;

    return-object v0
.end method
