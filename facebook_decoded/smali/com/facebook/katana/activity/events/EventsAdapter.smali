.class public Lcom/facebook/katana/activity/events/EventsAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventsAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/events/EventsAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->f:Landroid/os/AsyncTask;

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->g:I

    .line 336
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->a:Landroid/content/Context;

    .line 337
    iput-object p2, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->c:Lcom/facebook/katana/binding/StreamPhotosCache;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->d:Ljava/util/List;

    .line 340
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->b:Landroid/view/LayoutInflater;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->e:Ljava/util/List;

    .line 346
    invoke-static {}, Lcom/facebook/katana/util/TimeUtils;->a()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->h:I

    .line 347
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventsAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/katana/activity/events/EventsAdapter;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/events/EventsAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/events/EventsAdapter;)I
    .locals 2
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->g:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/events/EventsAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->g:I

    return v0
.end method

.method private c()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/events/EventsAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/activity/events/EventsAdapter;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sget-object v2, Lcom/facebook/katana/provider/EventsProvider;->a:Landroid/net/Uri;

    sget-object v3, Lcom/facebook/katana/activity/events/EventsAdapter$EventsQuery;->a:[Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 433
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 434
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 435
    if-lez v1, :cond_1

    .line 436
    const-string v2, "event_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 438
    const-string v2, "image_url"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 440
    const-string v2, "event_name"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 442
    const-string v2, "start_time"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 444
    const-string v2, "end_time"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 446
    const-string v2, "rsvp_status"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move v13, v1

    .line 448
    :goto_0
    if-lez v13, :cond_1

    .line 449
    new-instance v1, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    const/4 v2, 0x0

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/facebook/katana/activity/events/EventsAdapter;->h:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/facebook/katana/activity/events/EventsAdapter;->h:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    move/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/katana/activity/events/EventsAdapter;->a:Landroid/content/Context;

    invoke-direct/range {v1 .. v12}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;-><init>(IJLjava/lang/String;Ljava/lang/String;JJILandroid/content/Context;)V

    .line 458
    invoke-virtual {v1}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 459
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    add-int/lit8 v1, v13, -0x1

    .line 462
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move v13, v1

    .line 463
    goto :goto_0

    .line 467
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/activity/events/EventsAdapter;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sget-object v2, Lcom/facebook/katana/provider/ConnectionsProvider;->g:Landroid/net/Uri;

    sget-object v3, Lcom/facebook/katana/activity/events/EventsAdapter$BirthdaysQuery;->a:[Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 470
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 471
    const-string v1, "birthday_month"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 473
    const-string v1, "normalized_birthday_day"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 475
    const-string v1, "birthday_year"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 477
    const-string v1, "display_name"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 479
    const-string v1, "user_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 482
    new-array v0, v12, [Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;

    move-object/from16 v19, v0

    .line 484
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 486
    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v12, :cond_3

    .line 487
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 488
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 489
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 491
    add-int/lit8 v1, v4, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v5, v2}, Lcom/facebook/katana/util/TimeUtils;->a(IIZ)J

    move-result-wide v7

    .line 492
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, v7

    invoke-static {v1, v2}, Lcom/facebook/katana/util/TimeUtils;->a(J)I

    move-result v9

    .line 493
    const/4 v1, -0x1

    if-ne v9, v1, :cond_2

    .line 494
    add-int/lit8 v1, v4, -0x1

    const/4 v2, 0x1

    invoke-static {v1, v5, v2}, Lcom/facebook/katana/util/TimeUtils;->a(IIZ)J

    move-result-wide v7

    .line 495
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, v7

    invoke-static {v1, v2}, Lcom/facebook/katana/util/TimeUtils;->a(J)I

    move-result v9

    .line 497
    :cond_2
    new-instance v1, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct/range {v1 .. v9}, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;-><init>(Ljava/lang/String;Ljava/lang/Long;IIIJI)V

    aput-object v1, v19, v10

    .line 486
    add-int/lit8 v1, v10, 0x1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move v10, v1

    goto :goto_1

    .line 502
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 504
    const/4 v1, 0x0

    move v7, v1

    :goto_2
    move-object/from16 v0, v19

    array-length v1, v0

    if-ge v7, v1, :cond_6

    .line 505
    const/4 v3, 0x0

    .line 506
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 507
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    invoke-static {v1}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->a(Lcom/facebook/katana/activity/events/EventsAdapter$Item;)I

    move-result v1

    aget-object v4, v19, v7

    invoke-static {v4}, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->a(Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;)I

    move-result v4

    if-ne v1, v4, :cond_5

    .line 508
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    .line 512
    :goto_4
    if-nez v1, :cond_4

    .line 513
    new-instance v1, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    const/4 v2, 0x1

    aget-object v3, v19, v7

    invoke-static {v3}, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->a(Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;)I

    move-result v3

    aget-object v4, v19, v7

    invoke-static {v4}, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->b(Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/katana/activity/events/EventsAdapter;->a:Landroid/content/Context;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;-><init>(IIJLandroid/content/Context;)V

    .line 516
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_4
    aget-object v2, v19, v7

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->a(Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;)V

    .line 504
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2

    .line 506
    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 521
    :cond_6
    new-instance v1, Lcom/facebook/katana/activity/events/EventsAdapter$byTime;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/facebook/katana/activity/events/EventsAdapter$byTime;-><init>(Lcom/facebook/katana/activity/events/EventsAdapter;)V

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 524
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 525
    const/4 v2, 0x0

    .line 526
    const/4 v1, 0x0

    move v3, v1

    move v4, v2

    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_8

    .line 527
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    .line 528
    invoke-virtual {v1}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f()I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_7

    invoke-virtual {v1}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_7

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f()I

    move-result v2

    invoke-virtual {v1}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f()I

    move-result v6

    if-eq v2, v6, :cond_7

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->e()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->e()J

    move-result-wide v9

    cmp-long v2, v6, v9

    if-gez v2, :cond_7

    .line 535
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v2, v4, 0x1

    .line 537
    add-int/lit8 v3, v3, -0x1

    .line 526
    :goto_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v4, v2

    goto :goto_5

    .line 540
    :cond_7
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_6

    .line 544
    :cond_8
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_9

    .line 545
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 547
    :cond_9
    return-object v5

    :cond_a
    move-object v1, v3

    goto/16 :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->f:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 404
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 678
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ViewHolder;

    .line 679
    invoke-virtual {v0}, Lcom/facebook/katana/ViewHolder;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 680
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 684
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->f:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->f:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 414
    :cond_0
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->g:I

    .line 415
    new-instance v0, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;

    invoke-direct {v0, p0, v2}, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;-><init>(Lcom/facebook/katana/activity/events/EventsAdapter;B)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/events/EventsAdapter$BucketizeItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->f:Landroid/os/AsyncTask;

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_1
    iget v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->g:I

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 656
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 665
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0800b5

    const v5, 0x7f02009a

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 557
    .line 558
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    .line 560
    if-nez p2, :cond_0

    .line 561
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03002e

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 562
    new-instance v1, Lcom/facebook/katana/ViewHolder;

    invoke-direct {v1, p2, v9}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 564
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 569
    :cond_0
    const v1, 0x7f0800c4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 570
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->e:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f()I

    move-result v4

    if-eq v2, v4, :cond_2

    .line 573
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    :goto_0
    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->b(Lcom/facebook/katana/activity/events/EventsAdapter$Item;)I

    move-result v1

    if-nez v1, :cond_5

    .line 580
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->c()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/ViewHolder;

    .line 584
    invoke-virtual {v1, v2}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 586
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 588
    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->c:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v4, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v6}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 590
    if-eqz v2, :cond_3

    .line 591
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 600
    :goto_1
    const v1, 0x7f0800b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 602
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->e()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/katana/util/TimeUtils;->a(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v2

    .line 609
    const v1, 0x7f0800c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :goto_2
    return-object p2

    .line 576
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 593
    :cond_3
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 596
    :cond_4
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 613
    :cond_5
    const v1, 0x7f0800b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 615
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0004

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->h()I

    move-result v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->h()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    const v1, 0x7f0800c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->i()Ljava/util/List;

    move-result-object v5

    move v2, v3

    .line 623
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-ge v2, v8, :cond_7

    .line 624
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventsAdapter$Birthday;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const/4 v0, 0x2

    if-eq v2, v0, :cond_6

    add-int/lit8 v0, v2, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_6

    .line 626
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 629
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_8

    .line 630
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventsAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b01df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 636
    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2
.end method
