.class public Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;
.super Lcom/facebook/katana/FriendsAdapter;
.source "FriendsActivity.java"


# instance fields
.field a:Landroid/database/Cursor;

.field b:Landroid/database/Cursor;

.field private i:Z

.field private synthetic j:Lcom/facebook/katana/FriendsActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/FriendsActivity;Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 447
    iput-object p1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->j:Lcom/facebook/katana/FriendsActivity;

    .line 448
    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/katana/FriendsAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;)V

    .line 449
    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a:Landroid/database/Cursor;

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->i:Z

    .line 451
    return-void
.end method


# virtual methods
.method public final a(II)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 456
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;

    .line 457
    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->a()I

    move-result v1

    .line 458
    add-int/2addr v1, p2

    .line 460
    iget-object v2, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 461
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 462
    const/4 v0, 0x0

    .line 485
    :goto_0
    return-object v0

    .line 466
    :cond_0
    instance-of v0, v0, Lcom/facebook/katana/FriendsActivity$EveryoneSection;

    if-eqz v0, :cond_1

    .line 467
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 476
    :cond_1
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    const-string v3, "user_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    const-string v6, "display_name"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    const-string v7, "user_image_url"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->i:Z

    .line 491
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a_(Landroid/database/Cursor;)V

    .line 492
    return-void
.end method

.method public final declared-synchronized a_(Landroid/database/Cursor;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 496
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;

    .line 499
    instance-of v0, v0, Lcom/facebook/katana/FriendsActivity$EveryoneSection;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 504
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b:Landroid/database/Cursor;

    .line 505
    iget-boolean v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->i:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    .line 507
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :goto_0
    monitor-exit p0

    return-void

    .line 512
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a:Landroid/database/Cursor;

    if-nez v0, :cond_3

    move v0, v1

    .line 514
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a:Landroid/database/Cursor;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 515
    new-instance v2, Landroid/database/MergeCursor;

    invoke-direct {v2, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->c:Landroid/database/Cursor;

    .line 517
    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->d:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/FriendsActivity$EveryoneSection;

    iget-object v3, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->j:Lcom/facebook/katana/FriendsActivity;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/facebook/katana/FriendsActivity$EveryoneSection;-><init>(Landroid/content/Context;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 512
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public final declared-synchronized b(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a:Landroid/database/Cursor;

    .line 527
    invoke-super {p0, p1}, Lcom/facebook/katana/FriendsAdapter;->b(Landroid/database/Cursor;)V

    .line 528
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a_(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
