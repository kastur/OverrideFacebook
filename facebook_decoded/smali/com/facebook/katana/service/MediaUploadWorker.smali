.class Lcom/facebook/katana/service/MediaUploadWorker;
.super Ljava/lang/Object;
.source "MediaUploadWorker.java"


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/katana/binding/AppSession;

.field private final c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/service/MediaUploadWorker;->d:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/katana/service/MediaUploadWorker;->a:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/facebook/katana/service/MediaUploadWorker;->b:Lcom/facebook/katana/binding/AppSession;

    .line 63
    new-instance v0, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadWorker;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;-><init>(Lcom/facebook/katana/service/MediaUploadWorker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    .line 64
    return-void
.end method

.method private a(II)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 374
    if-gez p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 377
    goto :goto_0

    .line 380
    :cond_2
    invoke-static {p1}, Lcom/facebook/katana/service/MediaUploadWorker;->c(I)I

    move-result v2

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    int-to-long v5, p2

    sub-long/2addr v3, v5

    .line 382
    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(I)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    invoke-virtual {v1}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT %s FROM %s WHERE %s = %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "logging_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "pendingphotos"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "logging_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c(I)I
    .locals 5
    .parameter

    .prologue
    .line 394
    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 395
    const-wide/high16 v1, 0x4000

    shl-int/lit8 v0, v0, 0x1

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    sget-object v0, Lcom/facebook/katana/service/MediaUploadWorker;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 223
    :goto_0
    return v0

    .line 211
    :cond_0
    sget-object v0, Lcom/facebook/katana/service/MediaUploadWorker;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 212
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    iget-object v4, p0, Lcom/facebook/katana/service/MediaUploadWorker;->b:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v4, v0}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 217
    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 223
    :cond_2
    sget-object v0, Lcom/facebook/katana/service/MediaUploadWorker;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->close()V

    .line 68
    return-void
.end method

.method public final a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 348
    .line 350
    :try_start_0
    sget-object v0, Lcom/facebook/katana/service/MediaUploadWorker;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/facebook/katana/service/MediaUploadWorker;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "pendingphotos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "filename"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 356
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    :try_start_2
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "pendingphotos"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 366
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 367
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_2
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    :try_start_3
    const-string v2, "PhotoUploadThread"

    const-string v3, "error removing in photo upload db"

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 367
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 366
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method public final a(ILjava/lang/Class;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/MediaUploadWorker;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-class v1, Ljava/io/FileNotFoundException;

    if-ne v1, p2, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/MediaUploadWorker;->a(I)V

    .line 165
    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadWorker;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/Class;)V

    .line 191
    :goto_0
    return-void

    .line 166
    :cond_0
    if-eqz p2, :cond_1

    const-class v1, Ljava/io/IOException;

    if-ne v1, p2, :cond_2

    .line 175
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE %s SET %s = %s + 1, %s = %d WHERE %s = %d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "pendingphotos"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "retry_attempt"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "retry_attempt"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "retry_time"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string v1, "PhotoUploadThread"

    const-string v2, "error marking photo upload failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadWorker;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/Class;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/MediaUploadWorker;->a(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/MediaUploadWorker;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadWorker;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->c(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/MediaUploadWorker;->a(I)V

    .line 345
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    .line 71
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 72
    const-string v1, "filename"

    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "title"

    const-string v2, "subject"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "caption"

    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "profileId"

    const-string v2, "profile_id"

    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    const-string v1, "target_id"

    const-string v2, "extra_status_target_id"

    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    const-string v1, "tags"

    const-string v2, "tags"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "privacy"

    const-string v2, "extra_status_privacy"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "retry_attempt"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "retry_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    const-string v1, "logging_id"

    const-string v2, "camera_session_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "type"

    sget-object v2, Lcom/facebook/katana/service/MediaUploadWorker$Type;->VIDEO:Lcom/facebook/katana/service/MediaUploadWorker$Type;

    invoke-virtual {v2}, Lcom/facebook/katana/service/MediaUploadWorker$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "place"

    const-string v2, "extra_place"

    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    invoke-virtual {v1}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "pendingphotos"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v1, "error adding video upload to db"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "pendingphotos"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "PhotoUploadThread"

    const-string v2, "error clearing photo upload db"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, -0x1

    .line 103
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string v0, "albumId"

    const-string v3, "aid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "caption"

    const-string v3, "caption"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "filename"

    const-string v3, "uri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "profileId"

    const-string v3, "profile_id"

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    const-string v0, "checkinId"

    const-string v3, "checkin_id"

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string v3, "publish"

    const-string v0, "extra_photo_publish"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v0, "tags"

    const-string v3, "tags"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "place"

    const-string v3, "extra_place"

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    const-string v0, "target_id"

    const-string v3, "extra_status_target_id"

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    const-string v0, "privacy"

    const-string v3, "extra_status_privacy"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "retry_attempt"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v0, "retry_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const-string v0, "logging_id"

    const-string v1, "camera_session_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "type"

    sget-object v1, Lcom/facebook/katana/service/MediaUploadWorker$Type;->PHOTO:Lcom/facebook/katana/service/MediaUploadWorker$Type;

    invoke-virtual {v1}, Lcom/facebook/katana/service/MediaUploadWorker$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "pendingphotos"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 115
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v1, "error adding photo upload to db"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c()I
    .locals 20

    .prologue
    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/service/MediaUploadWorker;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    const/4 v2, 0x0

    .line 338
    :cond_0
    :goto_0
    return v2

    .line 238
    :cond_1
    const/4 v3, 0x0

    .line 239
    const/4 v2, 0x0

    .line 241
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    invoke-virtual {v4}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "SELECT * FROM pendingphotos WHERE %s < %d AND %s >= %d ORDER BY %s DESC"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "retry_attempt"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "retry_time"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x12c

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "retry_time"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 251
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 252
    const-string v3, "retry_attempt"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "retry_time"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/facebook/katana/service/MediaUploadWorker;->a(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 255
    const-string v2, "logging_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/MediaUploadWorker;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v2

    .line 259
    const-string v3, "filename"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "retry_attempt"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "retry_time"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;II)V

    .line 264
    const-string v2, "type"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/service/MediaUploadWorker$Type;->valueOf(Ljava/lang/String;)Lcom/facebook/katana/service/MediaUploadWorker$Type;

    move-result-object v2

    .line 266
    sget-object v3, Lcom/facebook/katana/service/MediaUploadWorker$1;->a:[I

    invoke-virtual {v2}, Lcom/facebook/katana/service/MediaUploadWorker$Type;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/MediaUploadWorker;->b:Lcom/facebook/katana/binding/AppSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/MediaUploadWorker;->a:Landroid/content/Context;

    const-string v4, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "albumId"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "caption"

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "filename"

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "profileId"

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "checkinId"

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v12, "publish"

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lez v12, :cond_4

    const/4 v12, 0x1

    :goto_2
    const-string v13, "place"

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-string v15, "tags"

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "target_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v18, "privacy"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v2 .. v18}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZJLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    :goto_3
    sget-object v3, Lcom/facebook/katana/service/MediaUploadWorker;->d:Ljava/util/Map;

    const-string v4, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 299
    if-eqz v19, :cond_3

    .line 316
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 268
    :pswitch_0
    :try_start_2
    const-string v2, "title"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    const-string v2, "caption"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 270
    const-string v2, "filename"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 271
    const-string v2, "target_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 272
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 273
    const-string v2, "privacy"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 274
    const-string v2, "tags"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 275
    const-string v2, "place"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/MediaUploadWorker;->a:Landroid/content/Context;

    invoke-static/range {v2 .. v12}, Lcom/facebook/katana/service/method/VideoUpload;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 282
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 303
    :cond_5
    const-string v3, "retry_attempt"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/facebook/katana/service/MediaUploadWorker;->c(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 305
    if-lez v3, :cond_2

    if-lt v3, v2, :cond_6

    if-nez v2, :cond_2

    :cond_6
    move v2, v3

    .line 306
    goto/16 :goto_1

    .line 315
    :cond_7
    if-eqz v19, :cond_8

    .line 316
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_8
    if-gtz v2, :cond_0

    .line 326
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/MediaUploadWorker;->c:Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;

    invoke-virtual {v2}, Lcom/facebook/katana/service/MediaUploadWorker$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM pendingphotos WHERE %s > %d OR %s < %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "retry_attempt"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "retry_time"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x12c

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 338
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 310
    :catch_0
    move-exception v2

    .line 311
    :goto_5
    :try_start_4
    const-string v4, "PhotoUploadThread"

    const-string v5, "error finding next upload in photo upload db"

    invoke-static {v4, v5, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 313
    if-eqz v3, :cond_9

    .line 316
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 315
    :catchall_0
    move-exception v2

    move-object/from16 v19, v3

    :goto_6
    if-eqz v19, :cond_a

    .line 316
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2

    .line 334
    :catch_1
    move-exception v2

    .line 335
    const-string v3, "PhotoUploadThread"

    const-string v4, "failed cleaning photo upload db"

    invoke-static {v3, v4, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 315
    :catchall_1
    move-exception v2

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object/from16 v19, v3

    goto :goto_6

    .line 310
    :catch_2
    move-exception v2

    move-object/from16 v3, v19

    goto :goto_5

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
