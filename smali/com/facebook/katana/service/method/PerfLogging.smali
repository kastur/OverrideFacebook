.class public Lcom/facebook/katana/service/method/PerfLogging;
.super Lcom/facebook/katana/service/method/ApiLogging;
.source "PerfLogging.java"


# static fields
.field private static a:Z

.field private static b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/katana/service/method/ApiLogging;-><init>()V

    .line 24
    return-void
.end method

.method private static a(Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 142
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_0

    .line 144
    const-string v2, "uid"

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 146
    :cond_0
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    const-string v1, "device"

    invoke-static {}, Lcom/facebook/katana/UserAgent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v1, "carrier"

    invoke-static {p0}, Lcom/facebook/katana/UserAgent;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v1, "app_version"

    invoke-static {p0}, Lcom/facebook/katana/UserAgent;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v1, "os_version"

    invoke-static {}, Lcom/facebook/katana/UserAgent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;JJ)V

    .line 91
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-static {}, Lcom/facebook/katana/service/method/PerfLogging;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {p0, p5, p6}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    :try_start_0
    const-string v1, "lid"

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "activity_id"

    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    const-string v1, "step"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 107
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/facebook/katana/util/Utils;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/method/PerfLogging;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 121
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-static {}, Lcom/facebook/katana/service/method/PerfLogging;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {p0, p4, p5}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 130
    :try_start_0
    const-string v1, "lid"

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/method/PerfLogging;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static g()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    sget-boolean v2, Lcom/facebook/katana/service/method/PerfLogging;->a:Z

    if-eqz v2, :cond_1

    .line 68
    sget-wide v2, Lcom/facebook/katana/service/method/PerfLogging;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/service/method/PerfLogging;->a:Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v2, Lcom/facebook/katana/util/Utils;->a:Ljava/util/Random;

    const v3, 0x186a0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 74
    const/4 v2, 0x1

    sput-boolean v2, Lcom/facebook/katana/service/method/PerfLogging;->a:Z

    .line 75
    sput-wide v0, Lcom/facebook/katana/service/method/PerfLogging;->b:J

    goto :goto_0
.end method

.method private static h()Z
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/katana/service/method/PerfLogging;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
