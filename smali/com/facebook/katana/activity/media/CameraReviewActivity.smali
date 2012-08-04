.class public Lcom/facebook/katana/activity/media/CameraReviewActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "CameraReviewActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;
.implements Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;
.implements Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;


# instance fields
.field private A:Lcom/facebook/katana/util/logging/CameraFlowLogger;

.field private B:I

.field private C:J

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/AutoCompleteTextView;

.field private final n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

.field private o:Landroid/graphics/PointF;

.field private p:Z

.field private q:Lcom/facebook/katana/activity/media/TouchBlip;

.field private final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/net/Uri;

.field private u:J

.field private v:Landroid/widget/VideoView;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/LinearLayout;

.field private y:Ljava/lang/String;

.field private z:Lcom/facebook/katana/ui/CustomRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 88
    new-instance v0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-direct {v0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    .line 97
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->r:Ljava/util/Map;

    .line 98
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->s:Ljava/util/Map;

    .line 901
    return-void
.end method

.method private A()Lcom/facebook/katana/activity/media/TouchBlip;
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->q:Lcom/facebook/katana/activity/media/TouchBlip;

    if-nez v0, :cond_0

    .line 843
    new-instance v1, Lcom/facebook/katana/activity/media/TouchBlip;

    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v0}, Lcom/facebook/katana/activity/media/TouchBlip;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->q:Lcom/facebook/katana/activity/media/TouchBlip;

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->q:Lcom/facebook/katana/activity/media/TouchBlip;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;IZJ)Landroid/content/Intent;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Landroid/content/Context;[Lcom/facebook/katana/model/FacebookPhotoTag;Landroid/net/Uri;IZJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;ZJJ)Landroid/content/Intent;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Landroid/content/Context;Landroid/net/Uri;IZJ)Landroid/content/Intent;

    move-result-object v0

    .line 173
    const-string v1, "extra_vault_fbid"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 174
    return-object v0
.end method

.method public static a(Landroid/content/Context;[Lcom/facebook/katana/model/FacebookPhotoTag;Landroid/net/Uri;IZJ)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "result_tags"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mediaContentType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_no_composer"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_target_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraReviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraReviewActivity;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->o:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->m:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/view/ViewGroup;[F)Landroid/widget/FrameLayout$LayoutParams;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v0, -0x2

    const/high16 v7, 0x41a0

    const/high16 v5, 0x4080

    const/high16 v6, 0x4000

    .line 630
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 633
    const v0, 0x7f080074

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 636
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x4040

    invoke-static {p0, v5}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {p0, v7}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    .line 639
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    add-float/2addr v0, v3

    invoke-static {p0, v5}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v0, v3

    invoke-static {p0, v7}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v0, v3

    .line 646
    aget v3, p3, v8

    div-float v4, v2, v6

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 647
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 648
    const/4 v3, 0x4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 654
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 655
    iget-object v4, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 656
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    float-to-int v5, v2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v4, v3

    .line 657
    if-ltz v3, :cond_1

    .line 658
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v3, v3, 0x4

    sub-int v3, v4, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 662
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v2, v3, v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 666
    const/4 v2, 0x1

    aget v2, p3, v2

    div-float/2addr v0, v6

    sub-float v0, v2, v0

    const/high16 v2, 0x4220

    invoke-static {p0, v2}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v2

    div-float/2addr v2, v6

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 669
    return-object v1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 332
    const-string v0, "result_tags"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 334
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 335
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 336
    check-cast v0, Lcom/facebook/katana/model/FacebookPhotoTag;

    .line 337
    iget-object v4, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-virtual {v4, v0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a(Lcom/facebook/katana/model/FacebookPhotoTag;)V

    .line 335
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-static {p1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;->a(Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a(Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;)V

    .line 224
    invoke-static {p1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;->b(Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->o:Landroid/graphics/PointF;

    .line 225
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->w:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->v:Landroid/widget/VideoView;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 208
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->h:Landroid/widget/LinearLayout;

    .line 209
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->i:Landroid/widget/LinearLayout;

    .line 210
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->w:Landroid/widget/Button;

    .line 211
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    .line 212
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->v:Landroid/widget/VideoView;

    .line 213
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->x:Landroid/widget/LinearLayout;

    .line 214
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->m:Landroid/widget/AutoCompleteTextView;

    .line 215
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j:Landroid/view/View;

    .line 216
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->k:Landroid/widget/ProgressBar;

    .line 217
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    .line 218
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/CustomRelativeLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->z:Lcom/facebook/katana/ui/CustomRelativeLayout;

    .line 219
    return-void
.end method

.method static synthetic g(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/util/logging/CameraFlowLogger;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->A:Lcom/facebook/katana/util/logging/CameraFlowLogger;

    return-object v0
.end method

.method private g()V
    .locals 11

    .prologue
    const/high16 v6, 0x4000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 273
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->o:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->A()Lcom/facebook/katana/activity/media/TouchBlip;

    move-result-object v0

    .line 275
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 276
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 277
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 280
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 281
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 282
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 283
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    aget v4, v3, v9

    mul-float/2addr v4, v6

    sub-float/2addr v2, v4

    .line 284
    iget-object v4, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    aget v5, v3, v10

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 285
    new-instance v5, Landroid/graphics/RectF;

    aget v6, v3, v9

    iget v7, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    aget v7, v3, v10

    iget v8, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    aget v8, v3, v9

    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    add-float/2addr v2, v8

    aget v3, v3, v10

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    add-float/2addr v1, v4

    invoke-direct {v5, v6, v7, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 290
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->o:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v5}, Lcom/facebook/katana/activity/media/TouchBlip;->a(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    .line 292
    :cond_0
    return-void

    .line 281
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private h()V
    .locals 6

    .prologue
    .line 295
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 296
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/katana/model/FacebookPhotoTag;

    .line 297
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/model/FacebookPhotoTag;

    .line 298
    const-string v1, "result_tags"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    const-string v0, "camera_session_id"

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->A:Lcom/facebook/katana/util/logging/CameraFlowLogger;

    invoke-virtual {v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->p:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 303
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->B:I

    invoke-virtual {p0, v0, v2}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->finish()V

    .line 327
    :goto_0
    return-void

    .line 306
    :cond_0
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 307
    const-string v0, "extra_video_request_code"

    iget v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->B:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/16 v0, 0x539

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->u:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;J)V

    goto :goto_0

    .line 309
    :cond_2
    const-string v0, "extra_photo_request_code"

    iget v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->B:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const-string v0, "vault_image_fbid"

    iget-wide v3, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->C:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 317
    const-string v1, "vault_preview_bytes"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    const-string v0, "Ran out of memory resizing bitmap!"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic h(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->h()V

    return-void
.end method

.method static synthetic i(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->o:Landroid/graphics/PointF;

    return-object v0
.end method

.method private i()Z
    .locals 4

    .prologue
    .line 542
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->B:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->C:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    .line 550
    :goto_0
    return-object v0

    .line 549
    :cond_0
    invoke-static {}, Lcom/facebook/katana/activity/media/CameraActivity;->g()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    .line 550
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic j(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    return-object v0
.end method

.method static synthetic k(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t()V

    return-void
.end method

.method static synthetic l(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->x()V

    return-void
.end method

.method static synthetic m(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/activity/media/TouchBlip;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->q:Lcom/facebook/katana/activity/media/TouchBlip;

    return-object v0
.end method

.method static synthetic n(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic o(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->r:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic p(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->s()V

    return-void
.end method

.method static synthetic q(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic r(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->w()V

    return-void
.end method

.method static synthetic s(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Lcom/facebook/katana/activity/media/TouchBlip;
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->A()Lcom/facebook/katana/activity/media/TouchBlip;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 13

    .prologue
    .line 557
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 558
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    .line 559
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 613
    :cond_0
    return-void

    .line 563
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 568
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 569
    const/4 v2, 0x2

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    .line 570
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 571
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 572
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 573
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    const/4 v7, 0x0

    aget v7, v6, v7

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    float-to-int v7, v2

    .line 574
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    const/4 v3, 0x1

    aget v3, v6, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v8, v1

    .line 577
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookPhotoTag;

    .line 578
    const/4 v2, 0x2

    new-array v10, v2, [F

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->b()D

    move-result-wide v11

    double-to-float v3, v11

    const/high16 v11, 0x42c8

    div-float/2addr v3, v11

    int-to-float v11, v7

    mul-float/2addr v3, v11

    iget v11, v5, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    add-float/2addr v3, v11

    const/4 v11, 0x0

    aget v11, v6, v11

    add-float/2addr v3, v11

    aput v3, v10, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->c()D

    move-result-wide v11

    double-to-float v3, v11

    const/high16 v11, 0x42c8

    div-float/2addr v3, v11

    int-to-float v11, v8

    mul-float/2addr v3, v11

    iget v11, v5, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    add-float/2addr v3, v11

    const/4 v11, 0x1

    aget v11, v6, v11

    add-float/2addr v3, v11

    aput v3, v10, v2

    .line 582
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->r:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 583
    if-nez v2, :cond_2

    .line 585
    const v2, 0x7f0300ef

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 586
    iget-object v3, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->r:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const v3, 0x7f080074

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    const v3, 0x7f0802c5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 589
    iget-object v11, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->s:Ljava/util/Map;

    invoke-interface {v11, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    new-instance v11, Lcom/facebook/katana/activity/media/CameraReviewActivity$8;

    invoke-direct {v11, p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity$8;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, v10}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Ljava/lang/String;Landroid/view/ViewGroup;[F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 608
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, v10}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Ljava/lang/String;Landroid/view/ViewGroup;[F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    goto/16 :goto_0

    .line 569
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic t(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private t()V
    .locals 3

    .prologue
    .line 674
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 676
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 679
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 683
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 685
    if-eqz v0, :cond_0

    .line 686
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->m:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 688
    :cond_0
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 691
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->B:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 693
    new-instance v0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;

    invoke-direct {v0, p0, v3}, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;B)V

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 699
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;

    .line 721
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 723
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraReviewActivity$PhotoTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/activity/media/CameraReviewActivity$PhotoTouchListener;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 724
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot load review bitmap: OOM"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 729
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot load review bitmap: OOM"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 703
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/facebook/katana/activity/media/CameraActivity;->f()Lcom/facebook/katana/activity/media/CameraActivity$CameraPhotoData;

    move-result-object v0

    .line 704
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/facebook/katana/activity/media/CameraActivity$CameraPhotoData;->a:[B

    if-eqz v1, :cond_4

    .line 706
    iget-object v1, v0, Lcom/facebook/katana/activity/media/CameraActivity$CameraPhotoData;->a:[B

    iget v0, v0, Lcom/facebook/katana/activity/media/CameraActivity$CameraPhotoData;->b:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/facebook/katana/util/ImageUtils;->a([BIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_1 .. :try_end_1} :catch_1

    .line 712
    :cond_4
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 713
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    .line 714
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cannot load review bitmap"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 730
    :catch_1
    move-exception v0

    .line 731
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot load review bitmap"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 717
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 709
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private w()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 740
    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->o:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    const v1, 0x7f040005

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 750
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 751
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 753
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->u()V

    .line 759
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->s()V

    .line 760
    return-void

    .line 754
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    const v1, 0x7f040006

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 757
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g()V

    .line 886
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->x()V

    .line 887
    return-void
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 345
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 346
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->e:Landroid/content/Context;

    .line 347
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a()I

    move-result v1

    if-nez v1, :cond_0

    .line 351
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Landroid/content/Intent;)V

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 355
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->setContentView(I)V

    .line 358
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f()V

    .line 360
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->z:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v1, p0}, Lcom/facebook/katana/ui/CustomRelativeLayout;->setOnLayoutChangedListener(Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;)V

    .line 366
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    .line 367
    const-string v1, "extra_vault_fbid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->C:J

    .line 369
    const-string v1, "mediaContentType"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->B:I

    .line 370
    iget v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->B:I

    if-ne v1, v5, :cond_1

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CONTENT_TYPE is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "camera_session_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->y:Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->A:Lcom/facebook/katana/util/logging/CameraFlowLogger;

    .line 376
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->A:Lcom/facebook/katana/util/logging/CameraFlowLogger;

    invoke-virtual {v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->e()V

    .line 378
    const-string v1, "extra_no_composer"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->p:Z

    .line 379
    const-string v1, "extra_target_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->u:J

    .line 382
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 385
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->v:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 387
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->v:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setClickable(Z)V

    .line 388
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 389
    new-instance v0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;Landroid/net/Uri;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 402
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/media/CameraReviewActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity$1;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->v:Landroid/widget/VideoView;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraReviewActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity$2;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 430
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->v:Landroid/widget/VideoView;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraReviewActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity$3;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 447
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->w:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraReviewActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity$4;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraReviewActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity$5;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraReviewActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity$6;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    new-instance v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;-><init>(Landroid/content/Context;)V

    .line 488
    new-instance v1, Lcom/facebook/katana/activity/media/CameraReviewActivity$DuplicateTagFilter;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity$DuplicateTagFilter;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->a(Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;)Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    .line 489
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->m:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 491
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->m:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    .line 492
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->m:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 494
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->m:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity$7;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 539
    return-void

    .line 390
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 395
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final i_()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 865
    new-instance v0, Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->n:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->o:Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;-><init>(Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;Landroid/graphics/PointF;)V

    .line 866
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 897
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 788
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 789
    invoke-virtual {p0, p2, p3}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 790
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->finish()V

    .line 792
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 183
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j()Landroid/net/Uri;

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->g:Landroid/graphics/Bitmap;

    .line 200
    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 231
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 232
    new-instance v0, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;Landroid/net/Uri;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$VideoPreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->j:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->v()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onStart()V

    .line 246
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;

    .line 249
    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->w()V

    .line 251
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Lcom/facebook/katana/activity/media/CameraReviewActivity$RetainedData;)V

    .line 254
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->o:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    const v1, 0x7f040005

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 259
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 260
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 265
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->u()V

    .line 269
    :cond_1
    return-void
.end method
