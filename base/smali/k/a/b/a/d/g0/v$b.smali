.class public final enum Lk/a/b/a/d/g0/v$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/d/g0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/d/g0/v$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/d/g0/v$b;

.field public static final enum CLIENT:Lk/a/b/a/d/g0/v$b;

.field public static final enum SERVER:Lk/a/b/a/d/g0/v$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lk/a/b/a/d/g0/v$b;

    const/4 v1, 0x0

    const-string v2, "CLIENT"

    invoke-direct {v0, v2, v1}, Lk/a/b/a/d/g0/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    new-instance v0, Lk/a/b/a/d/g0/v$b;

    const/4 v2, 0x1

    const-string v3, "SERVER"

    invoke-direct {v0, v3, v2}, Lk/a/b/a/d/g0/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/g0/v$b;->SERVER:Lk/a/b/a/d/g0/v$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lk/a/b/a/d/g0/v$b;

    sget-object v4, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lk/a/b/a/d/g0/v$b;->$VALUES:[Lk/a/b/a/d/g0/v$b;

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

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/d/g0/v$b;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/d/g0/v$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/d/g0/v$b;

    return-object p0
.end method

.method public static values()[Lk/a/b/a/d/g0/v$b;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/d/g0/v$b;->$VALUES:[Lk/a/b/a/d/g0/v$b;

    invoke-virtual {v0}, [Lk/a/b/a/d/g0/v$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/d/g0/v$b;

    return-object v0
.end method
