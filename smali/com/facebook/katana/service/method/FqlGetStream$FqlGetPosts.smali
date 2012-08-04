.class Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;
.super Lcom/facebook/katana/service/method/FqlGeneratedQuery;
.source "FqlGetStream.java"


# static fields
.field private static f:Lcom/facebook/katana/model/FacebookStreamType;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJLjava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    const-string v5, "stream"

    invoke-static/range {p5 .. p10}, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;->a(JJLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/facebook/katana/model/FacebookPost;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJ[JJLjava/lang/String;[Ljava/lang/String;ILcom/facebook/katana/model/FacebookStreamType;)V
    .locals 11
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

    .prologue
    .line 343
    const/4 v6, 0x0

    move-object/from16 v0, p9

    move-wide/from16 v1, p10

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p15

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;->a([JJLjava/lang/String;[Ljava/lang/String;Lcom/facebook/katana/model/FacebookStreamType;)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v10, p14

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JJLjava/lang/String;I)V

    .line 346
    return-void
.end method

.method private static a(JJLjava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    const/4 v1, 0x0

    .line 496
    cmp-long v3, p0, v4

    if-lez v3, :cond_0

    .line 497
    const-string v1, " updated_time >= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v0

    .line 502
    :cond_0
    cmp-long v3, p2, v4

    if-lez v3, :cond_5

    .line 503
    if-eqz v1, :cond_1

    .line 504
    const-string v1, " AND "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_1
    const-string v1, " updated_time <= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 511
    :goto_0
    if-eqz p4, :cond_3

    .line 512
    if-eqz v0, :cond_2

    .line 513
    const-string v0, " AND "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_2
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_3
    if-lez p5, :cond_4

    .line 522
    const-string v0, " LIMIT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static a([JJLjava/lang/String;[Ljava/lang/String;Lcom/facebook/katana/model/FacebookStreamType;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 402
    sput-object p5, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;->f:Lcom/facebook/katana/model/FacebookStreamType;

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    if-eqz p0, :cond_9

    .line 408
    const-string v0, "source_id IN ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    array-length v5, p0

    move v3, v1

    move v0, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-wide v6, p0, v3

    .line 411
    if-ne v0, v2, :cond_0

    move v0, v1

    .line 416
    :goto_1
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    :cond_0
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 418
    :cond_1
    sget-object v0, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;->f:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->PAGE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v3, :cond_3

    .line 419
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v0, "AND actor_id IN ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    array-length v5, p0

    move v3, v1

    move v0, v2

    :goto_2
    if-ge v3, v5, :cond_3

    aget-wide v6, p0, v3

    .line 424
    if-ne v0, v2, :cond_2

    move v0, v1

    .line 429
    :goto_3
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 427
    :cond_2
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 432
    :cond_3
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 436
    :goto_4
    if-eqz p3, :cond_5

    .line 437
    if-eqz v0, :cond_4

    .line 438
    const-string v0, " AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_4
    const-string v0, " filter_key="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {v4, p3}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 446
    :cond_5
    sget-object v1, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;->f:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->PAGE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-eq v1, v3, :cond_7

    .line 447
    if-eqz p4, :cond_7

    .line 448
    if-eqz v0, :cond_6

    .line 449
    const-string v0, " AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_6
    const-string v0, " post_id IN ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v0, ", "

    sget-object v1, Lcom/facebook/katana/util/StringUtils;->a:Lcom/facebook/katana/util/StringUtils$StringProcessor;

    check-cast p4, [Ljava/lang/Object;

    invoke-static {v4, v0, v1, p4}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/facebook/katana/util/StringUtils$StringProcessor;[Ljava/lang/Object;)V

    .line 454
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 460
    :cond_7
    if-nez v0, :cond_8

    .line 461
    const-string v0, "source_id IN (SELECT target_id FROM connection WHERE source_id="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND is_following=1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    move v0, v1

    goto :goto_4
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 385
    const-class v0, Lcom/facebook/katana/model/FacebookPost;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetStream$FqlGetPosts;->a:Ljava/util/List;

    .line 386
    return-void
.end method
