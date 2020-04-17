.class public Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/utils/storage/DatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$000(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$100(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$200(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$200(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
