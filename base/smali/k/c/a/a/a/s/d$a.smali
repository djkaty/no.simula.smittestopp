.class public final enum Lk/c/a/a/a/s/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c/a/a/a/s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/c/a/a/a/s/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic ENUM$VALUES:[Lk/c/a/a/a/s/d$a;

.field public static final enum RECEIVING:Lk/c/a/a/a/s/d$a;

.field public static final enum RUNNING:Lk/c/a/a/a/s/d$a;

.field public static final enum STARTING:Lk/c/a/a/a/s/d$a;

.field public static final enum STOPPED:Lk/c/a/a/a/s/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lk/c/a/a/a/s/d$a;

    const/4 v1, 0x0

    const-string v2, "STOPPED"

    invoke-direct {v0, v2, v1}, Lk/c/a/a/a/s/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/c/a/a/a/s/d$a;->STOPPED:Lk/c/a/a/a/s/d$a;

    new-instance v0, Lk/c/a/a/a/s/d$a;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lk/c/a/a/a/s/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/c/a/a/a/s/d$a;->RUNNING:Lk/c/a/a/a/s/d$a;

    new-instance v0, Lk/c/a/a/a/s/d$a;

    const/4 v3, 0x2

    const-string v4, "STARTING"

    invoke-direct {v0, v4, v3}, Lk/c/a/a/a/s/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/c/a/a/a/s/d$a;->STARTING:Lk/c/a/a/a/s/d$a;

    new-instance v0, Lk/c/a/a/a/s/d$a;

    const/4 v4, 0x3

    const-string v5, "RECEIVING"

    invoke-direct {v0, v5, v4}, Lk/c/a/a/a/s/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/c/a/a/a/s/d$a;->RECEIVING:Lk/c/a/a/a/s/d$a;

    const/4 v5, 0x4

    new-array v5, v5, [Lk/c/a/a/a/s/d$a;

    sget-object v6, Lk/c/a/a/a/s/d$a;->STOPPED:Lk/c/a/a/a/s/d$a;

    aput-object v6, v5, v1

    sget-object v1, Lk/c/a/a/a/s/d$a;->RUNNING:Lk/c/a/a/a/s/d$a;

    aput-object v1, v5, v2

    sget-object v1, Lk/c/a/a/a/s/d$a;->STARTING:Lk/c/a/a/a/s/d$a;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lk/c/a/a/a/s/d$a;->ENUM$VALUES:[Lk/c/a/a/a/s/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/c/a/a/a/s/d$a;
    .locals 1

    .line 1
    const-class v0, Lk/c/a/a/a/s/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/c/a/a/a/s/d$a;

    return-object p0
.end method

.method public static values()[Lk/c/a/a/a/s/d$a;
    .locals 4

    .line 1
    sget-object v0, Lk/c/a/a/a/s/d$a;->ENUM$VALUES:[Lk/c/a/a/a/s/d$a;

    array-length v1, v0

    new-array v2, v1, [Lk/c/a/a/a/s/d$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
