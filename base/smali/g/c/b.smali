.class public final enum Lg/c/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/c/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lg/c/b;

.field public static final enum CallingConvention:Lg/c/b;

.field public static final enum FunctionMapper:Lg/c/b;

.field public static final enum IgnoreError:Lg/c/b;

.field public static final enum LoadNow:Lg/c/b;

.field public static final enum SaveError:Lg/c/b;

.field public static final enum TypeMapper:Lg/c/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lg/c/b;

    const/4 v1, 0x0

    const-string v2, "SaveError"

    invoke-direct {v0, v2, v1}, Lg/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/b;->SaveError:Lg/c/b;

    .line 2
    new-instance v0, Lg/c/b;

    const/4 v2, 0x1

    const-string v3, "IgnoreError"

    invoke-direct {v0, v3, v2}, Lg/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/b;->IgnoreError:Lg/c/b;

    .line 3
    new-instance v0, Lg/c/b;

    const/4 v3, 0x2

    const-string v4, "TypeMapper"

    invoke-direct {v0, v4, v3}, Lg/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/b;->TypeMapper:Lg/c/b;

    .line 4
    new-instance v0, Lg/c/b;

    const/4 v4, 0x3

    const-string v5, "FunctionMapper"

    invoke-direct {v0, v5, v4}, Lg/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/b;->FunctionMapper:Lg/c/b;

    .line 5
    new-instance v0, Lg/c/b;

    const/4 v5, 0x4

    const-string v6, "CallingConvention"

    invoke-direct {v0, v6, v5}, Lg/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/b;->CallingConvention:Lg/c/b;

    .line 6
    new-instance v0, Lg/c/b;

    const/4 v6, 0x5

    const-string v7, "LoadNow"

    invoke-direct {v0, v7, v6}, Lg/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/b;->LoadNow:Lg/c/b;

    const/4 v7, 0x6

    new-array v7, v7, [Lg/c/b;

    .line 7
    sget-object v8, Lg/c/b;->SaveError:Lg/c/b;

    aput-object v8, v7, v1

    sget-object v1, Lg/c/b;->IgnoreError:Lg/c/b;

    aput-object v1, v7, v2

    sget-object v1, Lg/c/b;->TypeMapper:Lg/c/b;

    aput-object v1, v7, v3

    sget-object v1, Lg/c/b;->FunctionMapper:Lg/c/b;

    aput-object v1, v7, v4

    sget-object v1, Lg/c/b;->CallingConvention:Lg/c/b;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lg/c/b;->$VALUES:[Lg/c/b;

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

.method public static valueOf(Ljava/lang/String;)Lg/c/b;
    .locals 1

    .line 1
    const-class v0, Lg/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/c/b;

    return-object p0
.end method

.method public static values()[Lg/c/b;
    .locals 1

    .line 1
    sget-object v0, Lg/c/b;->$VALUES:[Lg/c/b;

    invoke-virtual {v0}, [Lg/c/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/c/b;

    return-object v0
.end method
