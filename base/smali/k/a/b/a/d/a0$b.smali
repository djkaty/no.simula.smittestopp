.class public final enum Lk/a/b/a/d/a0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/d/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/d/a0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/d/a0$b;

.field public static final enum ANONYMOUS_PEER:Lk/a/b/a/d/a0$b;

.field public static final enum VERIFY_PEER:Lk/a/b/a/d/a0$b;

.field public static final enum VERIFY_PEER_NAME:Lk/a/b/a/d/a0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lk/a/b/a/d/a0$b;

    const/4 v1, 0x0

    const-string v2, "VERIFY_PEER"

    invoke-direct {v0, v2, v1}, Lk/a/b/a/d/a0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/a0$b;->VERIFY_PEER:Lk/a/b/a/d/a0$b;

    .line 2
    new-instance v0, Lk/a/b/a/d/a0$b;

    const/4 v2, 0x1

    const-string v3, "VERIFY_PEER_NAME"

    invoke-direct {v0, v3, v2}, Lk/a/b/a/d/a0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/a0$b;->VERIFY_PEER_NAME:Lk/a/b/a/d/a0$b;

    .line 3
    new-instance v0, Lk/a/b/a/d/a0$b;

    const/4 v3, 0x2

    const-string v4, "ANONYMOUS_PEER"

    invoke-direct {v0, v4, v3}, Lk/a/b/a/d/a0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/a0$b;->ANONYMOUS_PEER:Lk/a/b/a/d/a0$b;

    const/4 v4, 0x3

    new-array v4, v4, [Lk/a/b/a/d/a0$b;

    .line 4
    sget-object v5, Lk/a/b/a/d/a0$b;->VERIFY_PEER:Lk/a/b/a/d/a0$b;

    aput-object v5, v4, v1

    sget-object v1, Lk/a/b/a/d/a0$b;->VERIFY_PEER_NAME:Lk/a/b/a/d/a0$b;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lk/a/b/a/d/a0$b;->$VALUES:[Lk/a/b/a/d/a0$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/d/a0$b;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/d/a0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/d/a0$b;

    return-object p0
.end method

.method public static values()[Lk/a/b/a/d/a0$b;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/d/a0$b;->$VALUES:[Lk/a/b/a/d/a0$b;

    invoke-virtual {v0}, [Lk/a/b/a/d/a0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/d/a0$b;

    return-object v0
.end method
