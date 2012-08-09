.class Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;
.super Ljava/lang/Object;
.source "PhotoGalleryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1379
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 1383
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->q(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v11

    .line 1384
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->t(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v11, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_2

    .line 1390
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const v1, 0x7f0b02a8

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 1395
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;

    .line 1397
    const-wide/16 v2, -0x1

    .line 1398
    iget-wide v4, v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->b:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 1399
    iget-wide v2, v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->b:J

    .line 1401
    :cond_3
    iget-object v10, v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->a:Ljava/lang/String;

    .line 1403
    new-instance v0, Lcom/facebook/katana/model/FacebookPhotoTag;

    invoke-virtual {v11}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v4}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->t(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v6}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->t(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/model/FacebookPhotoTag;-><init>(Ljava/lang/String;JDDJLjava/lang/String;)V

    .line 1405
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a(Lcom/facebook/katana/model/FacebookPhotoTag;)V

    .line 1406
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 1407
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->v(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->y(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    .line 1409
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->u(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    .line 1411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1412
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1413
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->h(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-virtual {v11}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 1414
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->u(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    .line 1415
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->s(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/TouchBlip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->s(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/TouchBlip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/TouchBlip;->a()V

    goto/16 :goto_0
.end method
