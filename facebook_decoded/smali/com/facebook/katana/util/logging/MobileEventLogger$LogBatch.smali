.class Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;
.super Ljava/lang/Object;
.source "MobileEventLogger.java"


# instance fields
.field public a:Ljava/lang/String;

.field b:J

.field c:J

.field private d:Ljava/lang/StringBuilder;

.field private e:J

.field private synthetic f:Lcom/facebook/katana/util/logging/MobileEventLogger;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/util/logging/MobileEventLogger;)V
    .locals 2
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->f:Lcom/facebook/katana/util/logging/MobileEventLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->e:J

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->d:Ljava/lang/StringBuilder;

    .line 430
    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 455
    const-string v0, "{}"

    .line 457
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 458
    const-string v1, "app_id"

    const-wide v3, 0x51a67c8e50L

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 459
    const-string v1, "app_ver"

    invoke-static {p1}, Lcom/facebook/katana/UserAgent;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v1, "build_num"

    invoke-static {p1}, Lcom/facebook/katana/UserAgent;->b(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 461
    const-string v1, "os_ver"

    invoke-static {}, Lcom/facebook/katana/UserAgent;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    const-string v1, "device"

    invoke-static {}, Lcom/facebook/katana/UserAgent;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 464
    const-string v3, "density"

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 465
    const-string v1, "ifc"

    const-string v3, "android"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/facebook/katana/util/logging/MobileEvent;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    invoke-static {p1}, Lcom/facebook/katana/UserAgent;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    const-string v1, "N/A"

    .line 474
    :cond_0
    const-string v3, "carrier"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string v1, "conn"

    iget-object v3, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->f:Lcom/facebook/katana/util/logging/MobileEventLogger;

    invoke-static {v3}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Lcom/facebook/katana/util/logging/MobileEventLogger;)Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    const-string v1, "data"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    .line 478
    :catch_0
    move-exception v1

    .line 479
    iget-object v2, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->f:Lcom/facebook/katana/util/logging/MobileEventLogger;

    invoke-static {v2, v1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Lcom/facebook/katana/util/logging/MobileEventLogger;Lorg/json/JSONException;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->e:J

    return-wide v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 445
    const-string v1, "[]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->a:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 5
    .parameter

    .prologue
    .line 434
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    iget-wide v1, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->d:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-wide v1, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->e:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$LogBatch;->e:J

    .line 440
    return-void
.end method
