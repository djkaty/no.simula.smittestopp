.class public Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/persistence/DatabasePersistence;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/persistence/DatabasePersistence;

.field public final synthetic val$schema:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/persistence/DatabasePersistence;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;->this$0:Lcom/microsoft/appcenter/persistence/DatabasePersistence;

    iput-object p2, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;->val$schema:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createPriorityIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE INDEX `ix_logs_priority` ON logs (`priority`)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;->createPriorityIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "logs"

    .line 1
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;->val$schema:Landroid/content/ContentValues;

    invoke-static {p1, p2, p3}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;->createPriorityIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
