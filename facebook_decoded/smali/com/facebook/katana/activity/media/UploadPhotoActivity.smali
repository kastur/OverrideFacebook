.class public Lcom/facebook/katana/activity/media/UploadPhotoActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "UploadPhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Ljava/lang/String;

.field private g:Lcom/facebook/katana/model/FacebookAlbum;

.field private h:Z

.field private i:Z

.field private j:J

.field private k:J

.field private l:Lcom/facebook/katana/model/FacebookProfile;

.field private m:Lcom/facebook/katana/binding/AppSessionListener;

.field private n:Z

.field private o:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

.field private p:Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;

.field private q:F

.field private r:F

.field private s:Z

.field private t:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->i:Z

    .line 820
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->q:F

    return p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Lcom/facebook/katana/model/FacebookProfile;)Lcom/facebook/katana/model/FacebookProfile;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->l:Lcom/facebook/katana/model/FacebookProfile;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0802f4

    const v6, 0x7f0801fd

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 728
    iput-object p2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->f:Ljava/lang/String;

    .line 730
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->t:Landroid/graphics/Bitmap;

    .line 734
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->t:Landroid/graphics/Bitmap;

    .line 736
    invoke-virtual {p0, v7}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggableView;

    .line 737
    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/TaggableView;->setImage(Landroid/graphics/Bitmap;)V

    .line 740
    iget-boolean v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->s:Z

    if-nez v1, :cond_1

    .line 741
    new-instance v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2, p1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/os/Handler;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$FaceDetectTask;->start()V

    .line 742
    iput-boolean v5, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->s:Z

    .line 745
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->p:Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TaggableView;->setListener(Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;)V

    .line 747
    const v0, 0x7f0802f1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 749
    invoke-virtual {p0, v7}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 752
    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 754
    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 756
    const v0, 0x7f0802f5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 757
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 758
    const v0, 0x7f0802f7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 759
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;[Landroid/media/FaceDetector$Face;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a([Landroid/media/FaceDetector$Face;II)V

    return-void
.end method

.method private a([Landroid/media/FaceDetector$Face;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 769
    const v0, 0x7f0802f4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggableView;

    .line 772
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 773
    if-eqz v3, :cond_0

    .line 774
    invoke-virtual {v3}, Landroid/media/FaceDetector$Face;->confidence()F

    move-result v4

    const/high16 v5, 0x3f00

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 780
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 781
    invoke-virtual {v3, v4}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 783
    iget v5, v4, Landroid/graphics/PointF;->x:F

    int-to-float v6, p2

    div-float/2addr v5, v6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    int-to-float v6, p3

    div-float/2addr v4, v6

    invoke-virtual {v3}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v3

    int-to-float v6, p2

    div-float/2addr v3, v6

    invoke-virtual {v0, v5, v4, v3}, Lcom/facebook/katana/ui/TaggableView;->a(FFF)Lcom/facebook/katana/ui/TagSuggestionView;

    .line 772
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/UploadPhotoActivity;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->r:F

    return p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->k:J

    return-wide v0
.end method

.method private b(Z)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 623
    const v0, 0x7f0802f2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;

    .line 625
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 627
    const v2, 0x7f0800cd

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 628
    const v3, 0x7f0802f1

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 630
    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 632
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 633
    invoke-virtual {v0}, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;->requestFocus()Z

    .line 634
    invoke-virtual {v1, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 642
    :goto_0
    return-void

    .line 636
    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 637
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 638
    invoke-virtual {v0}, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;->clearFocus()V

    .line 639
    invoke-virtual {v0}, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->j()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->q:F

    return v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->r:F

    return v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f0802ef

    const/4 v3, 0x0

    .line 493
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->j()V

    .line 494
    iput-boolean v5, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->h:Z

    .line 495
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 497
    new-instance v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->start()V

    .line 534
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->m:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 535
    :goto_1
    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_1

    .line 502
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 506
    :goto_2
    if-nez v0, :cond_2

    .line 507
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->finish()V

    goto :goto_1

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_2

    .line 511
    :cond_2
    invoke-static {}, Lcom/facebook/katana/service/method/ApiLogging;->b()V

    .line 512
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 513
    if-eqz v1, :cond_3

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 515
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 518
    new-instance v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/os/Handler;Landroid/net/Uri;Z)V

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->start()V

    goto :goto_0

    .line 521
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_photo_is_scaled"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 523
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 525
    new-instance v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$LoadImageTask;->start()V

    goto :goto_0

    .line 528
    :cond_4
    new-instance v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2, v0, v5}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Landroid/os/Handler;Landroid/net/Uri;Z)V

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$ScaleImageTask;->start()V

    goto/16 :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 646
    new-instance v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$2;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->p:Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;

    .line 659
    const v0, 0x7f0802f2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;

    .line 662
    new-instance v1, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->o:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    .line 664
    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->o:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 665
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;->setThreshold(I)V

    .line 668
    new-instance v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$3;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 709
    const v1, 0x7f0802f3

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 710
    new-instance v2, Lcom/facebook/katana/activity/media/UploadPhotoActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$4;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Lcom/facebook/katana/ui/TagUsersAutoCompleteTextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    const v0, 0x7f0b02aa

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 719
    return-void
.end method

.method private h()V
    .locals 17

    .prologue
    .line 795
    const v1, 0x7f0802f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/ui/TaggableView;

    .line 796
    invoke-virtual {v1}, Lcom/facebook/katana/ui/TaggableView;->b()Ljava/util/List;

    move-result-object v10

    .line 798
    const v1, 0x7f0802f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 799
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 800
    const/4 v4, 0x0

    .line 803
    :cond_0
    const/4 v3, 0x0

    .line 804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    if-eqz v1, :cond_1

    .line 805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookAlbum;->a()Ljava/lang/String;

    move-result-object v3

    .line 808
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->k:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->j:J

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->n:Z

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v16}, Lcom/facebook/katana/service/MediaUploadService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;JLjava/lang/String;JLjava/lang/String;)V

    .line 812
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->i:Z

    .line 814
    const v1, 0x7f0b03b6

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->finish()V

    .line 817
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 907
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->k:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 909
    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 911
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 912
    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 913
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    :cond_0
    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const v4, 0x7f0b03b2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 922
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 923
    const v1, 0x7f0b03b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 926
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->k:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->j:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->l:Lcom/facebook/katana/model/FacebookProfile;

    if-nez v0, :cond_0

    .line 932
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->k:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/FqlGetProfile;->a(Landroid/content/Context;J)Ljava/lang/String;

    .line 933
    const v0, 0x7f0b03b3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 944
    :goto_0
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    return-void

    .line 935
    :cond_0
    const v0, 0x7f0b03b4

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->l:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v2, v2, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    if-nez v0, :cond_2

    .line 940
    new-array v0, v2, [Ljava/lang/Object;

    const v1, 0x7f0b03a2

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 942
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookAlbum;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    .line 370
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 373
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 375
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_3

    .line 378
    const-string v1, "com.facebook.katana.upload.notification.error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.facebook.katana.upload_notification_canceled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->finish()V

    .line 475
    :goto_0
    return-void

    .line 388
    :cond_1
    const-string v1, "com.facebook.katana.upload.notification.ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 397
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 400
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_photo_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_album_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    const-string v5, "android.intent.action.VIEW"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 405
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->startActivity(Landroid/content/Intent;)V

    .line 407
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->finish()V

    goto :goto_0

    .line 409
    :cond_2
    const-string v1, "com.facebook.katana.upload.notification.pending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->finish()V

    goto :goto_0

    .line 414
    :cond_3
    const v0, 0x7f030110

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->setContentView(I)V

    .line 417
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_album_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_4

    .line 421
    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookAlbum;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    .line 422
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    if-nez v0, :cond_4

    .line 424
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->finish()V

    goto/16 :goto_0

    .line 429
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_checkin_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->j:J

    .line 431
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_profile_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->k:J

    .line 433
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_photo_publish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->n:Z

    .line 436
    const v0, 0x7f0802f7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 437
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 438
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    const v0, 0x7f0802f8

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 442
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->i()V

    .line 448
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 450
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 452
    :goto_1
    if-eqz v1, :cond_5

    .line 453
    const v0, 0x7f0802f6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 454
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_5
    new-instance v0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$1;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->m:Lcom/facebook/katana/binding/AppSessionListener;

    .line 474
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->g()V

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 602
    if-nez p2, :cond_0

    .line 616
    :goto_0
    return-void

    .line 605
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 612
    :sswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->f()V

    goto :goto_0

    .line 607
    :sswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookAlbum;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    .line 608
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->j()V

    goto :goto_0

    .line 605
    :sswitch_data_0
    .sparse-switch
        0x8a2 -> :sswitch_0
        0x52b9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 589
    :goto_0
    return-void

    .line 574
    :sswitch_0
    const v0, 0x7f0802f6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 575
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 577
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->h()V

    goto :goto_0

    .line 582
    :sswitch_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->finish()V

    goto :goto_0

    .line 587
    :sswitch_2
    invoke-static {p0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 588
    const/16 v1, 0x52b9

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 571
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800cc -> :sswitch_2
        0x7f0802f7 -> :sswitch_0
        0x7f0802f8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const v0, 0x7f0b03b5

    const v4, 0x7f0b0269

    const v2, 0x1080027

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 857
    packed-switch p1, :pswitch_data_0

    .line 898
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 859
    :pswitch_0
    invoke-static {}, Lcom/facebook/katana/service/method/ApiLogging;->c()V

    .line 860
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b03a3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/facebook/katana/activity/media/UploadPhotoActivity$5;

    invoke-direct {v5, p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$5;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V

    new-instance v8, Lcom/facebook/katana/activity/media/UploadPhotoActivity$6;

    invoke-direct {v8, p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$6;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V

    move-object v0, p0

    move-object v7, v6

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 879
    :pswitch_1
    invoke-static {}, Lcom/facebook/katana/service/method/ApiLogging;->c()V

    .line 880
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b03b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/facebook/katana/activity/media/UploadPhotoActivity$7;

    invoke-direct {v5, p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$7;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V

    new-instance v8, Lcom/facebook/katana/activity/media/UploadPhotoActivity$8;

    invoke-direct {v8, p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity$8;-><init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V

    move-object v0, p0

    move-object v7, v6

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 559
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onDestroy()V

    .line 560
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->i:Z

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->o:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->o:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->a()V

    .line 566
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->h:Z

    .line 541
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->m:Lcom/facebook/katana/binding/AppSessionListener;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->m:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 545
    :cond_0
    const v0, 0x7f0802f4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggableView;

    .line 546
    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/TaggableView;->setImage(Landroid/graphics/Bitmap;)V

    .line 548
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 550
    iput-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->t:Landroid/graphics/Bitmap;

    .line 553
    :cond_1
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 554
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 483
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 484
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_0

    .line 485
    invoke-static {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Landroid/app/Activity;)V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->f()V

    goto :goto_0
.end method
