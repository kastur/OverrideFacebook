.class public Lcom/facebook/katana/service/MediaUploadService;
.super Landroid/app/Service;
.source "MediaUploadService.java"


# instance fields
.field private a:Lcom/facebook/katana/binding/AppSession;

.field private b:Landroid/content/Context;

.field private c:Lcom/facebook/katana/service/MediaUploadWorker;

.field private volatile d:Landroid/os/Looper;

.field private volatile e:Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;

.field private final f:Lcom/facebook/katana/binding/AppSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 62
    new-instance v0, Lcom/facebook/katana/service/MediaUploadService$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/service/MediaUploadService$1;-><init>(Lcom/facebook/katana/service/MediaUploadService;)V

    iput-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->f:Lcom/facebook/katana/binding/AppSessionListener;

    .line 319
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/service/MediaUploadService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/MediaUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadWorker;->c()I

    move-result v1

    .line 220
    if-lez v1, :cond_0

    .line 221
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/MediaUploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 222
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/katana/service/MediaUploadService;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/katana/service/MediaUploadService;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x1000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 224
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 228
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/Class;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/MediaUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    const-string v1, "type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    const-string v1, "upload_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string v1, "exc_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 236
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/MediaUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v1, "upload_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const-string v1, "exc_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 244
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Collection;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/service/MediaUploadService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    const-string v3, "type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v3, "uri"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v3, "subject"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v3, "description"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v3, "profile_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 271
    const-wide/16 v3, -0x1

    cmp-long v3, p6, v3

    if-eqz v3, :cond_0

    .line 272
    const-string v3, "extra_status_target_id"

    invoke-virtual {v2, v3, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 274
    :cond_0
    if-eqz p8, :cond_1

    invoke-interface {p8}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    const-string v3, "tags"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    :cond_1
    if-eqz p9, :cond_2

    .line 278
    const-string v3, "extra_status_privacy"

    invoke-virtual {v2, v3, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    :cond_2
    const-wide/16 v3, -0x1

    cmp-long v3, p10, v3

    if-eqz v3, :cond_3

    .line 281
    const-string v3, "extra_place"

    move-wide/from16 v0, p10

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 283
    :cond_3
    const-string v3, "camera_session_id"

    move-object/from16 v0, p12

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 285
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;JLjava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookPhotoTagBase;",
            ">;J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/service/MediaUploadService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    const-string v3, "type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string v3, "aid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v3, "caption"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v3, "profile_id"

    invoke-virtual {v2, v3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 296
    const-string v3, "checkin_id"

    invoke-virtual {v2, v3, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 297
    const-string v3, "uri"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v3, "extra_photo_publish"

    invoke-virtual {v2, v3, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    if-eqz p9, :cond_0

    invoke-interface {p9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    const-string v3, "tags"

    invoke-static {p9}, Lcom/facebook/katana/model/FacebookPhotoTagBase;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    :cond_0
    const-string v3, "extra_place"

    move-wide v0, p10

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 303
    const-wide/16 v3, -0x1

    cmp-long v3, p13, v3

    if-eqz v3, :cond_1

    .line 304
    const-string v3, "extra_status_target_id"

    move-wide/from16 v0, p13

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 306
    :cond_1
    if-eqz p12, :cond_2

    .line 307
    const-string v3, "extra_status_privacy"

    move-object/from16 v0, p12

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    :cond_2
    const-string v3, "camera_session_id"

    move-object/from16 v0, p15

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 311
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 158
    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v0, "type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 164
    packed-switch v0, :pswitch_data_0

    .line 214
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown op "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/service/MediaUploadService;->a()V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadWorker;->b()V

    .line 176
    invoke-virtual {p0}, Lcom/facebook/katana/service/MediaUploadService;->stopSelf()V

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/service/MediaUploadWorker;->b(Landroid/content/Intent;)V

    .line 181
    invoke-direct {p0}, Lcom/facebook/katana/service/MediaUploadService;->a()V

    goto :goto_0

    .line 185
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/service/MediaUploadWorker;->a(Landroid/content/Intent;)V

    .line 186
    invoke-direct {p0}, Lcom/facebook/katana/service/MediaUploadService;->a()V

    goto :goto_0

    .line 190
    :pswitch_4
    const-string v0, "upload_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 191
    const-string v1, "req_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    if-lez v0, :cond_0

    .line 193
    iget-object v2, p0, Lcom/facebook/katana/service/MediaUploadService;->a:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/service/MediaUploadService;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/facebook/katana/binding/AppSession;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/service/MediaUploadWorker;->a(I)V

    goto :goto_0

    .line 199
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    const-string v1, "upload_id"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "exc_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/service/MediaUploadWorker;->a(ILjava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadWorker;->c()I

    goto :goto_0

    .line 205
    :pswitch_6
    const-string v0, "upload_id"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 206
    if-eq v1, v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    const-string v0, "exc_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/katana/service/MediaUploadWorker;->a(ILjava/lang/Class;)V

    .line 210
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/service/MediaUploadService;->a()V

    goto/16 :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 115
    invoke-virtual {p0}, Lcom/facebook/katana/service/MediaUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->b:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->a:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->a:Lcom/facebook/katana/binding/AppSession;

    .line 118
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->a:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->a:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadService;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 125
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/MediaUploadWorker;

    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadService;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/MediaUploadService;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/MediaUploadWorker;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)V

    iput-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "photo_upload_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->d:Landroid/os/Looper;

    .line 131
    new-instance v0, Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;

    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadService;->d:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;-><init>(Lcom/facebook/katana/service/MediaUploadService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->e:Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;

    .line 132
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/service/MediaUploadService;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->d:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->d:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->c:Lcom/facebook/katana/service/MediaUploadWorker;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadWorker;->a()V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->a:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->a:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadService;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 150
    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->e:Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x2

    .line 109
    :goto_0
    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService;->e:Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;

    invoke-virtual {v0}, Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 106
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 107
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadService;->e:Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method
