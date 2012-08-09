.class Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetCurrentEvents;
.super Lcom/facebook/katana/service/method/FqlGeneratedQuery;
.source "FqlGetEvents.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    const-class v0, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetCurrentEvents;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    const/4 v4, 0x0

    const-string v5, "event"

    const/4 v0, 0x5

    invoke-static {p5, p6, v0}, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetCurrentEvents;->a(JI)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/facebook/katana/model/FacebookEvent;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 352
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetCurrentEvents;->a:Ljava/util/Map;

    .line 359
    return-void
.end method

.method private static a(JI)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/32 v10, 0x127500

    const-wide/16 v8, 0x2a30

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/katana/util/TimeUtils;->c(J)J

    move-result-wide v0

    .line 364
    const/4 v2, 0x0

    const-string v3, "%d < end_time AND %d > start_time AND eid IN (SELECT eid FROM event_member WHERE uid = %d AND %d < start_time AND %d > start_time AND rsvp_status IN (\'attending\', \'unsure\')) ORDER BY end_time LIMIT %d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sub-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    add-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sub-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    add-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 4
    .parameter

    .prologue
    .line 385
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 386
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2

    .line 388
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 389
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookEvent;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetCurrentEvents;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookEvent;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 392
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 395
    :cond_2
    return-void
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetCurrentEvents;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
