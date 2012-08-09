.class Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;
.super Ljava/lang/Object;
.source "BookmarksAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BookmarksAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BookmarksAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->e(Lcom/facebook/katana/activity/BookmarksAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/Bookmark;

    .line 676
    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v1, p3}, Lcom/facebook/katana/activity/BookmarksAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 704
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/facebook/katana/model/Bookmark;->count:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const-string v1, "group"

    iget-object v2, v0, Lcom/facebook/katana/model/Bookmark;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "list"

    iget-object v2, v0, Lcom/facebook/katana/model/Bookmark;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/facebook/katana/model/Bookmark;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/facebook/katana/service/method/BookmarksGet;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 714
    :cond_1
    return-void

    .line 679
    :pswitch_1
    iget-object v1, v0, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    .line 680
    const-string v2, "fb://account_action_sheet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/facebook/katana/util/logging/UserInteractionEvent;

    const-string v4, "CLICK"

    const-string v5, "BM"

    const-string v6, "Account"

    const-string v7, "BookmarksMenu"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/facebook/katana/util/logging/UserInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    .line 686
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 692
    :cond_2
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v3}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/facebook/katana/util/logging/UserInteractionEvent;

    const-string v5, "CLICK"

    const-string v6, "BM"

    const-string v7, "BookmarksMenu"

    invoke-direct {v4, v5, v6, v1, v7}, Lcom/facebook/katana/util/logging/UserInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    .line 696
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-virtual {v2, v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :pswitch_2
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/facebook/katana/util/logging/UserInteractionEvent;

    const-string v5, "CLICK"

    const-string v6, "BM"

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->f(Lcom/facebook/katana/activity/BookmarksAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/BookmarksGroup;

    iget-object v1, v1, Lcom/facebook/katana/model/BookmarksGroup;->id:Ljava/lang/String;

    const-string v7, "BookmarksMenu"

    invoke-direct {v4, v5, v6, v1, v7}, Lcom/facebook/katana/util/logging/UserInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    .line 703
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->f(Lcom/facebook/katana/activity/BookmarksAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/BookmarksGroup;

    iget-object v1, v1, Lcom/facebook/katana/model/BookmarksGroup;->id:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
