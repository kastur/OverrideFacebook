.class Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;
.super Ljava/lang/Object;
.source "BookmarksAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BookmarksAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BookmarksAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 720
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->e(Lcom/facebook/katana/activity/BookmarksAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/Bookmark;

    .line 721
    if-eqz v0, :cond_1

    const-string v2, "fb://feed/"

    iget-object v3, v0, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 727
    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 730
    const-string v2, "target_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 756
    :goto_1
    return v0

    .line 733
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 739
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "fb://messaging"

    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    iget-object v4, v0, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/facebook/katana/activity/BookmarksAdapter;->b(Lcom/facebook/katana/activity/BookmarksAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 740
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 741
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 742
    goto :goto_1

    .line 744
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "fb://albums"

    iget-object v3, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    iget-object v0, v0, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->b(Lcom/facebook/katana/activity/BookmarksAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 750
    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 751
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 752
    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$BookmarkLongClickListener;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 753
    goto :goto_1

    .line 756
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
