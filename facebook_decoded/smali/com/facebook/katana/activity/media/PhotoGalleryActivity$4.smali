.class Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;
.super Ljava/lang/Object;
.source "PhotoGalleryActivity.java"

# interfaces
.implements Lcustom/android/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 863
    return-void
.end method

.method public final a(J)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0, p1, p2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;J)J

    .line 827
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FeedbackData;

    .line 828
    if-nez v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments;->a(Landroid/content/Context;J)Ljava/lang/String;

    .line 831
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->m(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    .line 836
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    .line 837
    if-nez v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0, p1, p2}, Lcom/facebook/katana/service/method/PhotosGetTagsByFBID;->a(Landroid/content/Context;J)Ljava/lang/String;

    .line 839
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    new-instance v1, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-direct {v1}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    .line 844
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->n(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 845
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 847
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v0, v1, :cond_0

    .line 848
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->o(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    .line 853
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->p(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/util/logging/InteractionLogger;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    sget-object v2, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElementsTypes;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 857
    return-void

    .line 833
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    iget-object v2, v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FeedbackData;->a:Ljava/util/Set;

    iget v0, v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FeedbackData;->b:I

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Ljava/util/Set;I)V

    goto :goto_0

    .line 841
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    goto :goto_1
.end method
