.class public final enum Lk/a/b/a/d/a0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/d/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/d/a0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/d/a0$a;

.field public static final enum CLIENT:Lk/a/b/a/d/a0$a;

.field public static final enum SERVER:Lk/a/b/a/d/a0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lk/a/b/a/d/a0$a;

    const/4 v1, 0x0

    const-string v2, "CLIENT"

    invoke-direct {v0, v2, v1}, Lk/a/b/a/d/a0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/a0$a;->CLIENT:Lk/a/b/a/d/a0$a;

    .line 2
    new-instance v0, Lk/a/b/a/d/a0$a;

    const/4 v2, 0x1

    const-string v3, "SERVER"

    invoke-direct {v0, v3, v2}, Lk/a/b/a/d/a0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/a0$a;->SERVER:Lk/a/b/a/d/a0$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lk/a/b/a/d/a0$a;

    .line 3
    sget-object v4, Lk/a/b/a/d/a0$a;->CLIENT:Lk/a/b/a/d/a0$a;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lk/a/b/a/d/a0$a;->$VALUES:[Lk/a/b/a/d/a0$a;

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

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/d/a0$a;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/d/a0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/d/a0$a;

    return-object p0
.end method

.method public static values()[Lk/a/b/a/d/a0$a;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/d/a0$a;->$VALUES:[Lk/a/b/a/d/a0$a;

    invoke-virtual {v0}, [Lk/a/b/a/d/a0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/d/a0$a;

    return-object v0
.end method
