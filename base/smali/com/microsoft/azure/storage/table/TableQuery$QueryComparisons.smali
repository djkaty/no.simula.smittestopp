.class public Lcom/microsoft/azure/storage/table/TableQuery$QueryComparisons;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/table/TableQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryComparisons"
.end annotation


# static fields
.field public static final EQUAL:Ljava/lang/String; = "eq"

.field public static final GREATER_THAN:Ljava/lang/String; = "gt"

.field public static final GREATER_THAN_OR_EQUAL:Ljava/lang/String; = "ge"

.field public static final LESS_THAN:Ljava/lang/String; = "lt"

.field public static final LESS_THAN_OR_EQUAL:Ljava/lang/String; = "le"

.field public static final NOT_EQUAL:Ljava/lang/String; = "ne"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
