.class Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaUploadWorker.java"


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/MediaUploadWorker;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 399
    const-string v0, "uploadmanager.db"

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 401
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 405
    const-string v0, "CREATE TABLE pendingphotos(_id INTEGER PRIMARY KEY AUTOINCREMENT, albumId TEXT, caption TEXT, filename TEXT, profileId INTEGER, checkinId INTEGER, publish INTEGER, tags TEXT, place INTEGER, target_id INTEGER, privacy TEXT, title TEXT, type TEXT, retry_attempt INTEGER, retry_time INTEGER,logging_id STRING)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 435
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    const-string v0, "DROP TABLE IF EXISTS pendingphotos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 430
    return-void
.end method
