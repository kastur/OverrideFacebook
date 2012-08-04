.class public Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;
.super Lcom/facebook/orca/common/sqlite/SharedSQLiteSchemaPart;
.source "AnalyticsDbSchemaPart.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "analytics"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/common/sqlite/SharedSQLiteSchemaPart;-><init>(Ljava/lang/String;I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    const-string v0, "CREATE TABLE analytics_db_properties (key TEXT PRIMARY KEY, value TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "CREATE TABLE events (bid TEXT, type TEXT, data TEXT, timestamp INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE TABLE batches (id TEXT, sid TEXT, uid INTEGER, seq INTEGER, timestamp INTEGER, active INTEGER, meta TEXT, PRIMARY KEY (id))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const-string v0, "orca:AnalyticsDbSchemaPart"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading part from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "DROP TABLE IF EXISTS analytics_db_properties"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "DROP TABLE IF EXISTS batches"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    return-void
.end method
