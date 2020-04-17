.class public final Lh/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh/h;

    invoke-direct {v0}, Lh/h;-><init>()V

    sput-object v0, Lh/h;->a:Lh/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
