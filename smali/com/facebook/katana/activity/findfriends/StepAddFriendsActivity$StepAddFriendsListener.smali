.class public Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "StepAddFriendsActivity.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$Listener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->g(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/findfriends/FriendCandidate;

    .line 552
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 553
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->b(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;->a(Landroid/graphics/Bitmap;Lcom/facebook/katana/view/findfriends/FriendCandidate;)V

    .line 555
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->b(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 556
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    const v3, 0x7f080109

    invoke-virtual {v1, v3}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 558
    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    if-gt v2, v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->b(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;->notifyDataSetChanged()V

    .line 564
    :cond_0
    if-eqz v0, :cond_1

    .line 565
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/findfriends/FriendCandidate;->a(Ljava/lang/String;)V

    .line 568
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContactUser;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v0, 0xa

    .line 584
    new-instance v2, Lcom/facebook/katana/util/MemoryInfo;

    invoke-direct {v2}, Lcom/facebook/katana/util/MemoryInfo;-><init>()V

    .line 585
    const/16 v1, 0x12c

    iget-wide v3, v2, Lcom/facebook/katana/util/MemoryInfo;->c:J

    const-wide/32 v5, 0x1d4c0

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 591
    if-ge v1, v0, :cond_1

    .line 592
    const-string v1, "friend_finder_low_memory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "low phone heap space:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/facebook/katana/util/MemoryInfo;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->a(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;Ljava/util/List;)Ljava/util/List;

    .line 600
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhonebookContactUser;

    .line 602
    new-instance v2, Lcom/facebook/katana/view/findfriends/FriendCandidate;

    invoke-direct {v2, v0}, Lcom/facebook/katana/view/findfriends/FriendCandidate;-><init>(Lcom/facebook/katana/model/FacebookPhonebookContactUser;)V

    .line 603
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->h(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->a(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;I)V

    .line 608
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->i(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V

    .line 609
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->a(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;I)V

    .line 574
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$StepAddFriendsListener;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->b(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 575
    return-void
.end method
