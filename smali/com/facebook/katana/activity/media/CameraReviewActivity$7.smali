.class Lcom/facebook/katana/activity/media/CameraReviewActivity$7;
.super Ljava/lang/Object;
.source "CameraReviewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraReviewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
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
    .line 498
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->i(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_2

    .line 503
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    const v1, 0x7f0b02a8

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 508
    :cond_2
    if-nez p1, :cond_3

    .line 510
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;

    move-object v10, v0

    .line 517
    :goto_1
    const-wide/16 v2, -0x1

    .line 518
    iget-wide v0, v10, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 519
    iget-wide v2, v10, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->b:J

    .line 520
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Z)V

    .line 525
    :goto_2
    new-instance v0, Lcom/facebook/katana/model/FacebookPhotoTag;

    const-string v1, ""

    iget-object v4, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v4}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->i(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v6}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->i(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    iget-object v10, v10, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/model/FacebookPhotoTag;-><init>(Ljava/lang/String;JDDJLjava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a(Lcom/facebook/katana/model/FacebookPhotoTag;)V

    .line 528
    const-string v1, "ADDTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The tag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoTag;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has been added"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Lcom/facebook/katana/activity/media/CameraReviewActivity;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 531
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->k(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    .line 533
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    .line 534
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->m(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/activity/media/TouchBlip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->m(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/activity/media/TouchBlip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/TouchBlip;->a()V

    goto/16 :goto_0

    .line 513
    :cond_3
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;

    move-object v10, v0

    goto/16 :goto_1

    .line 522
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;->a:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Z)V

    goto/16 :goto_2
.end method
