.class public final enum Lk/a/b/a/b/k/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/b/k/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/b/k/x;

.field public static final enum CONFIGURATION:Lk/a/b/a/b/k/x;

.field public static final enum NONE:Lk/a/b/a/b/k/x;

.field public static final enum UNSETTLED_STATE:Lk/a/b/a/b/k/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lk/a/b/a/b/k/x;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lk/a/b/a/b/k/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/b/k/x;->NONE:Lk/a/b/a/b/k/x;

    new-instance v0, Lk/a/b/a/b/k/x;

    const/4 v2, 0x1

    const-string v3, "CONFIGURATION"

    invoke-direct {v0, v3, v2}, Lk/a/b/a/b/k/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/b/k/x;->CONFIGURATION:Lk/a/b/a/b/k/x;

    new-instance v0, Lk/a/b/a/b/k/x;

    const/4 v3, 0x2

    const-string v4, "UNSETTLED_STATE"

    invoke-direct {v0, v4, v3}, Lk/a/b/a/b/k/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/b/k/x;->UNSETTLED_STATE:Lk/a/b/a/b/k/x;

    const/4 v4, 0x3

    new-array v4, v4, [Lk/a/b/a/b/k/x;

    .line 2
    sget-object v5, Lk/a/b/a/b/k/x;->NONE:Lk/a/b/a/b/k/x;

    aput-object v5, v4, v1

    sget-object v1, Lk/a/b/a/b/k/x;->CONFIGURATION:Lk/a/b/a/b/k/x;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lk/a/b/a/b/k/x;->$VALUES:[Lk/a/b/a/b/k/x;

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

.method public static get(Lk/a/b/a/b/h;)Lk/a/b/a/b/k/x;
    .locals 3

    .line 1
    iget v0, p0, Lk/a/b/a/b/h;->x:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lk/a/b/a/b/k/x;->UNSETTLED_STATE:Lk/a/b/a/b/k/x;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown TerminusDurablity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lk/a/b/a/b/k/x;->CONFIGURATION:Lk/a/b/a/b/k/x;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lk/a/b/a/b/k/x;->NONE:Lk/a/b/a/b/k/x;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/b/k/x;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/b/k/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/b/k/x;

    return-object p0
.end method

.method public static values()[Lk/a/b/a/b/k/x;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/b/k/x;->$VALUES:[Lk/a/b/a/b/k/x;

    invoke-virtual {v0}, [Lk/a/b/a/b/k/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/b/k/x;

    return-object v0
.end method


# virtual methods
.method public getValue()Lk/a/b/a/b/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v0

    return-object v0
.end method
