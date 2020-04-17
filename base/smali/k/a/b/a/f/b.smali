.class public final enum Lk/a/b/a/f/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/f/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/f/b;

.field public static final enum OK:Lk/a/b/a/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lk/a/b/a/f/b;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lk/a/b/a/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/f/b;->OK:Lk/a/b/a/f/b;

    const/4 v2, 0x1

    new-array v2, v2, [Lk/a/b/a/f/b;

    aput-object v0, v2, v1

    .line 2
    sput-object v2, Lk/a/b/a/f/b;->$VALUES:[Lk/a/b/a/f/b;

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

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/f/b;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/f/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/f/b;

    return-object p0
.end method

.method public static values()[Lk/a/b/a/f/b;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/f/b;->$VALUES:[Lk/a/b/a/f/b;

    invoke-virtual {v0}, [Lk/a/b/a/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/f/b;

    return-object v0
.end method
