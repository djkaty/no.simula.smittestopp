.class public final enum Lf/a/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/a/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lf/a/e$b;

.field public static final enum ARRAY:Lf/a/e$b;

.field public static final enum FALSE:Lf/a/e$b;

.field public static final enum NULL:Lf/a/e$b;

.field public static final enum NUMBER:Lf/a/e$b;

.field public static final enum OBJECT:Lf/a/e$b;

.field public static final enum STRING:Lf/a/e$b;

.field public static final enum TRUE:Lf/a/e$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lf/a/e$b;

    const/4 v1, 0x0

    const-string v2, "ARRAY"

    invoke-direct {v0, v2, v1}, Lf/a/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/e$b;->ARRAY:Lf/a/e$b;

    .line 2
    new-instance v0, Lf/a/e$b;

    const/4 v2, 0x1

    const-string v3, "OBJECT"

    invoke-direct {v0, v3, v2}, Lf/a/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/e$b;->OBJECT:Lf/a/e$b;

    .line 3
    new-instance v0, Lf/a/e$b;

    const/4 v3, 0x2

    const-string v4, "STRING"

    invoke-direct {v0, v4, v3}, Lf/a/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/e$b;->STRING:Lf/a/e$b;

    .line 4
    new-instance v0, Lf/a/e$b;

    const/4 v4, 0x3

    const-string v5, "NUMBER"

    invoke-direct {v0, v5, v4}, Lf/a/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/e$b;->NUMBER:Lf/a/e$b;

    .line 5
    new-instance v0, Lf/a/e$b;

    const/4 v5, 0x4

    const-string v6, "TRUE"

    invoke-direct {v0, v6, v5}, Lf/a/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/e$b;->TRUE:Lf/a/e$b;

    .line 6
    new-instance v0, Lf/a/e$b;

    const/4 v6, 0x5

    const-string v7, "FALSE"

    invoke-direct {v0, v7, v6}, Lf/a/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/e$b;->FALSE:Lf/a/e$b;

    .line 7
    new-instance v0, Lf/a/e$b;

    const/4 v7, 0x6

    const-string v8, "NULL"

    invoke-direct {v0, v8, v7}, Lf/a/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/e$b;->NULL:Lf/a/e$b;

    const/4 v8, 0x7

    new-array v8, v8, [Lf/a/e$b;

    .line 8
    sget-object v9, Lf/a/e$b;->ARRAY:Lf/a/e$b;

    aput-object v9, v8, v1

    sget-object v1, Lf/a/e$b;->OBJECT:Lf/a/e$b;

    aput-object v1, v8, v2

    sget-object v1, Lf/a/e$b;->STRING:Lf/a/e$b;

    aput-object v1, v8, v3

    sget-object v1, Lf/a/e$b;->NUMBER:Lf/a/e$b;

    aput-object v1, v8, v4

    sget-object v1, Lf/a/e$b;->TRUE:Lf/a/e$b;

    aput-object v1, v8, v5

    sget-object v1, Lf/a/e$b;->FALSE:Lf/a/e$b;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lf/a/e$b;->$VALUES:[Lf/a/e$b;

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

.method public static valueOf(Ljava/lang/String;)Lf/a/e$b;
    .locals 1

    .line 1
    const-class v0, Lf/a/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/a/e$b;

    return-object p0
.end method

.method public static values()[Lf/a/e$b;
    .locals 1

    .line 1
    sget-object v0, Lf/a/e$b;->$VALUES:[Lf/a/e$b;

    invoke-virtual {v0}, [Lf/a/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/a/e$b;

    return-object v0
.end method
