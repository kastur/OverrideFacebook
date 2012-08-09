.class public Lcom/facebook/katana/activity/media/PhotoGalleryActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "PhotoGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/widget/AutoCompleteTextView;

.field private C:Landroid/view/View;

.field private D:J

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Lcom/facebook/katana/util/logging/InteractionLogger;

.field private H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/Map;
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

.field private J:Landroid/view/animation/Animation;

.field private K:Landroid/view/animation/Animation;

.field private L:Landroid/view/animation/Animation;

.field private M:Landroid/view/animation/Animation;

.field private N:Landroid/view/animation/Animation;

.field private O:Landroid/view/animation/Animation;

.field private final P:Lcom/facebook/katana/binding/AppSessionListener;

.field private final Q:Lcustom/android/AdapterView$OnItemSelectedListener;

.field private final R:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private f:Lcom/facebook/katana/binding/AppSession;

.field private g:Lcom/facebook/katana/activity/media/TouchBlip;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:J

.field private k:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

.field private l:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

.field private m:Ljava/lang/String;

.field private final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FeedbackData;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/facebook/katana/ui/PhotoGallery;

.field private q:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

.field private r:Landroid/view/GestureDetector;

.field private final s:Landroid/os/Handler;

.field private t:Landroid/view/LayoutInflater;

.field private u:J

.field private v:Landroid/graphics/PointF;

.field private w:Z

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/String;

.field private z:Lcom/facebook/katana/model/FacebookPhotoSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 134
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->DEFAULT:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->n:Ljava/util/HashMap;

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->s:Landroid/os/Handler;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->H:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->I:Ljava/util/Map;

    .line 681
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$3;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->P:Lcom/facebook/katana/binding/AppSessionListener;

    .line 822
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$4;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->Q:Lcustom/android/AdapterView$OnItemSelectedListener;

    .line 1260
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->R:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 1425
    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 608
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 610
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 613
    :cond_0
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 617
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 619
    const v1, 0x7f04000c

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 620
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 621
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    :cond_0
    return-void
.end method

.method private C()V
    .locals 13

    .prologue
    const v12, 0x7f080074

    const/high16 v11, 0x42c8

    .line 630
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 631
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i()Lcom/facebook/katana/ui/ImageViewTouchBase;

    move-result-object v4

    .line 632
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a()I

    move-result v1

    if-nez v1, :cond_1

    .line 678
    :cond_0
    return-void

    .line 636
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookPhotoTag;

    .line 637
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 638
    const/4 v2, 0x2

    new-array v6, v2, [F

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->b()D

    move-result-wide v7

    double-to-float v3, v7

    div-float/2addr v3, v11

    invoke-virtual {v4}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    aput v3, v6, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->c()D

    move-result-wide v7

    double-to-float v3, v7

    div-float/2addr v3, v11

    invoke-virtual {v4}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    aput v3, v6, v2

    .line 645
    invoke-virtual {v4}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 647
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->I:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 648
    if-nez v2, :cond_4

    .line 650
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->t:Landroid/view/LayoutInflater;

    const v3, 0x7f030105

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 652
    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->I:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->a()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_3

    .line 657
    new-instance v3, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$2;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/model/FacebookPhotoTag;)V

    .line 667
    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, v6}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Ljava/lang/String;Landroid/view/ViewGroup;[F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 673
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoTag;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, v6}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Ljava/lang/String;Landroid/view/ViewGroup;[F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    goto/16 :goto_0
.end method

.method private D()V
    .locals 3

    .prologue
    const v2, 0x7f04000c

    const/4 v1, 0x4

    .line 1009
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1014
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->F:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1016
    :cond_0
    return-void
.end method

.method private E()Lcom/facebook/katana/model/FacebookPhoto;
    .locals 3

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x:Ljava/util/Map;

    iget-wide v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhoto;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private F()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1126
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E()Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v2

    .line 1127
    if-nez v2, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return v0

    .line 1130
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->D:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v0, v1

    .line 1132
    goto :goto_0

    .line 1135
    :cond_2
    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->o:Ljava/util/Set;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->o:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private G()V
    .locals 6

    .prologue
    .line 1153
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E()Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    .line 1154
    if-nez v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1158
    :cond_0
    const-string v1, "fb://photofeedback/%1$d/%2$s/%3$s?action=%4$s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/PhotoUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    const-string v3, "FEEDBACK_VIEW"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->n:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private H()V
    .locals 5

    .prologue
    .line 1169
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E()Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v1

    .line 1170
    if-eqz v1, :cond_0

    .line 1171
    const v0, 0x7f080307

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1173
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v3, v4, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1177
    invoke-virtual {v1, v0}, Lcom/facebook/katana/model/FacebookPhoto;->b(Ljava/lang/String;)V

    .line 1178
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l()V

    .line 1180
    :cond_0
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V

    .line 1181
    return-void
.end method

.method private I()V
    .locals 5

    .prologue
    .line 1185
    const v0, 0x7f08030a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1186
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0b0365

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1187
    if-eqz v1, :cond_0

    sget-object v0, Lcom/facebook/katana/service/method/GraphObjectLike$Operation;->UNLIKE:Lcom/facebook/katana/service/method/GraphObjectLike$Operation;

    :goto_0
    iget-wide v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/facebook/katana/service/method/GraphObjectLike;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/GraphObjectLike$Operation;Ljava/lang/Long;)Ljava/lang/String;

    .line 1193
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1194
    :goto_1
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Z)V

    .line 1195
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->d(Z)V

    .line 1197
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->G:Lcom/facebook/katana/util/logging/InteractionLogger;

    new-instance v2, Lcom/facebook/orca/analytics/HoneyClientEvent;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;->c:Ljava/lang/String;

    :goto_2
    invoke-direct {v2, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElementsTypes;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 1205
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->n:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    return-void

    .line 1187
    :cond_0
    sget-object v0, Lcom/facebook/katana/service/method/GraphObjectLike$Operation;->LIKE:Lcom/facebook/katana/service/method/GraphObjectLike$Operation;

    goto :goto_0

    .line 1193
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1197
    :cond_2
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;->d:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 197
    const-string v0, "fb://photo/%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    const-string v0, "fb://photo/%s/?set=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->v:Landroid/graphics/PointF;

    return-object p1
.end method

.method private a(Ljava/lang/String;Landroid/view/ViewGroup;[F)Landroid/widget/FrameLayout$LayoutParams;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, -0x2

    const/high16 v4, 0x4080

    const/high16 v5, 0x4000

    .line 1238
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1241
    const v0, 0x7f080074

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1244
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {p0, v4}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v3

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 1246
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    add-float/2addr v0, v3

    invoke-static {p0, v4}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v3

    mul-float/2addr v3, v5

    add-float/2addr v0, v3

    .line 1250
    aget v3, p3, v6

    div-float v4, v2, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1251
    const/4 v3, 0x1

    aget v3, p3, v3

    div-float/2addr v0, v5

    sub-float v0, v3, v0

    const/high16 v3, 0x4220

    invoke-static {p0, v3}, Lcom/facebook/katana/util/Utils;->a(Landroid/content/Context;F)F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1254
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1256
    return-object v1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/activity/media/TouchBlip;)Lcom/facebook/katana/activity/media/TouchBlip;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->g:Lcom/facebook/katana/activity/media/TouchBlip;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->o:Ljava/util/Set;

    return-object p1
.end method

.method private a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V
    .locals 2
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    .line 427
    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v0, v1, :cond_2

    .line 428
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->t()V

    .line 435
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    .line 437
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne p1, v0, :cond_4

    .line 438
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->w()V

    .line 444
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l()V

    .line 445
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k()V

    .line 446
    return-void

    .line 429
    :cond_2
    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v0, v1, :cond_3

    .line 430
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x()V

    goto :goto_0

    .line 431
    :cond_3
    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->EDIT_CAPTION:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v0, v1, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->v()V

    goto :goto_0

    .line 439
    :cond_4
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne p1, v0, :cond_5

    .line 440
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->s()V

    goto :goto_1

    .line 441
    :cond_5
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->EDIT_CAPTION:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne p1, v0, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->u()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->B()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/model/FacebookPhotoSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/model/FacebookPhotoSet;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Ljava/util/Set;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Ljava/util/Set;I)V

    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPhotoSet;)V
    .locals 5
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->z:Lcom/facebook/katana/model/FacebookPhotoSet;

    .line 391
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPhotoSet;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 393
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPhotoSet;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/service/method/PhotosGetPhotos;->a(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->y:Ljava/lang/String;

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->q:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->a(Lcom/facebook/katana/model/FacebookPhotoSet;)V

    .line 397
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->q:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->a(J)V

    .line 398
    return-void

    .line 397
    :cond_2
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->u:J

    goto :goto_0
.end method

.method private a(Ljava/util/Set;I)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const v5, 0x7f040008

    const/16 v1, 0x63

    const/4 v4, 0x0

    .line 1027
    iget-wide v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->D:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1030
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1031
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1032
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->F:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->D:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Z)V

    .line 1036
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1041
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->F:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1043
    :cond_0
    return-void

    .line 1027
    :cond_1
    const/16 v0, 0x62

    goto :goto_0
.end method

.method private a(J)Z
    .locals 2
    .parameter

    .prologue
    .line 1145
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    if-nez v0, :cond_1

    .line 1146
    :cond_0
    const/4 v0, 0x0

    .line 1148
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a(J)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    return-object v0
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1209
    const v0, 0x7f08030a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1210
    if-eqz p1, :cond_0

    const v1, 0x7f0b0365

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1211
    return-void

    .line 1210
    :cond_0
    const v1, 0x7f0b034c

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->u:J

    return-wide v0
.end method

.method private d(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1215
    .line 1217
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 1222
    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v1

    .line 1223
    const/16 v1, 0x63

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1224
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    return-void

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0

    .line 1222
    :cond_0
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic e(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/model/FacebookPhotoSet;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->z:Lcom/facebook/katana/model/FacebookPhotoSet;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->q:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method private i()Lcom/facebook/katana/ui/ImageViewTouchBase;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->p:Lcom/facebook/katana/ui/PhotoGallery;

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->p:Lcom/facebook/katana/ui/PhotoGallery;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/PhotoGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/ImageViewTouchBase;

    goto :goto_0
.end method

.method static synthetic i(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    return-wide v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 413
    const v0, 0x7f040018

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->J:Landroid/view/animation/Animation;

    .line 414
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->L:Landroid/view/animation/Animation;

    .line 416
    const v0, 0x7f040019

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->K:Landroid/view/animation/Animation;

    .line 417
    const v0, 0x7f040006

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->M:Landroid/view/animation/Animation;

    .line 419
    const v0, 0x7f040008

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->N:Landroid/view/animation/Animation;

    .line 420
    const v0, 0x7f04000c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->O:Landroid/view/animation/Animation;

    .line 421
    return-void
.end method

.method static synthetic k(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->H:Ljava/util/Map;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->v:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C:Landroid/view/View;

    const v1, 0x7f040005

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 455
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 462
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C()V

    .line 463
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C:Landroid/view/View;

    const v1, 0x7f040006

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 460
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E()Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->e()Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    sget-object v3, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->L:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 473
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_0
    :goto_1
    return-void

    .line 468
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->M:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method static synthetic l(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C()V

    return-void
.end method

.method static synthetic m(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->D()V

    return-void
.end method

.method static synthetic n(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->I:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic o(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l()V

    return-void
.end method

.method static synthetic p(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/util/logging/InteractionLogger;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->G:Lcom/facebook/katana/util/logging/InteractionLogger;

    return-object v0
.end method

.method static synthetic q(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E()Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/ui/ImageViewTouchBase;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i()Lcom/facebook/katana/ui/ImageViewTouchBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/TouchBlip;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->g:Lcom/facebook/katana/activity/media/TouchBlip;

    return-object v0
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 483
    const v0, 0x7f0801fe

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/PhotoGallery;

    .line 484
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/PhotoGallery;->a(Z)Lcom/facebook/katana/ui/PhotoGallery;

    .line 485
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i()Lcom/facebook/katana/ui/ImageViewTouchBase;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_0

    .line 488
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(F)V

    .line 491
    :cond_0
    const v0, 0x7f08030f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->J:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 494
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :cond_1
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->N:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 499
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :cond_2
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 504
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->N:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 505
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 507
    :cond_3
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C()V

    .line 509
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->s:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$1;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    return-void
.end method

.method static synthetic t(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->v:Landroid/graphics/PointF;

    return-object v0
.end method

.method private t()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 519
    const v0, 0x7f0801fe

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/PhotoGallery;

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/PhotoGallery;->a(Z)Lcom/facebook/katana/ui/PhotoGallery;

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->v:Landroid/graphics/PointF;

    .line 523
    const v0, 0x7f08030f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->K:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 526
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 528
    :cond_0
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 530
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :cond_1
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 535
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 536
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->g:Lcom/facebook/katana/activity/media/TouchBlip;

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->g:Lcom/facebook/katana/activity/media/TouchBlip;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/TouchBlip;->a()V

    .line 542
    :cond_3
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->A()V

    .line 543
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->B()V

    .line 544
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 548
    const v0, 0x7f080306

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->J:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 551
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 553
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k()V

    return-void
.end method

.method static synthetic v(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->B:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 557
    const v0, 0x7f080306

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->K:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 560
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :cond_0
    return-void
.end method

.method static synthetic w(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method private w()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 569
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->w:Z

    if-eqz v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 573
    :cond_0
    const v0, 0x7f080309

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->J:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 576
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 579
    :cond_1
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->N:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 582
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 585
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C()V

    goto :goto_0
.end method

.method static synthetic x(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->l:Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;

    return-object v0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 593
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 596
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :cond_0
    const v0, 0x7f080309

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 601
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->K:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 604
    :cond_1
    return-void
.end method

.method static synthetic y(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->A()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 206
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 207
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->D:J

    .line 208
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-direct {v0, p0}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->G:Lcom/facebook/katana/util/logging/InteractionLogger;

    .line 210
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 211
    const v0, 0x7f030117

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->setContentView(I)V

    .line 213
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 215
    const-string v1, "photoset_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->A:Ljava/lang/String;

    .line 216
    const-string v1, "photo_fbid"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->u:J

    .line 217
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->u:J

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    .line 219
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 220
    const-string v0, "No initial FBID specificied"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->finish()V

    .line 260
    :goto_0
    return-void

    .line 225
    :cond_0
    const v0, 0x7f0801fe

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/PhotoGallery;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->p:Lcom/facebook/katana/ui/PhotoGallery;

    .line 226
    new-instance v0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->p:Lcom/facebook/katana/ui/PhotoGallery;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;Lcustom/android/Gallery;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->q:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    .line 227
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->p:Lcom/facebook/katana/ui/PhotoGallery;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->q:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/PhotoGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 228
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->p:Lcom/facebook/katana/ui/PhotoGallery;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->Q:Lcustom/android/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/PhotoGallery;->setOnItemSelectedListener(Lcustom/android/AdapterView$OnItemSelectedListener;)V

    .line 230
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j()V

    .line 231
    const v0, 0x7f080305

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f080309

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->h:Landroid/view/View;

    .line 235
    new-instance v1, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;-><init>(Landroid/content/Context;)V

    .line 236
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$DuplicateTagFilter;

    invoke-direct {v0, p0, v4}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$DuplicateTagFilter;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;B)V

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->a(Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;)Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    .line 237
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->B:Landroid/widget/AutoCompleteTextView;

    .line 238
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->B:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->B:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    .line 241
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->B:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 242
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->B:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;

    invoke-direct {v1, p0, v4}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$TypeaheadItemClickListener;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;B)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 244
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->R:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->r:Landroid/view/GestureDetector;

    .line 246
    const v0, 0x7f080308

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v0, 0x7f08030c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v0, 0x7f08030b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v0, 0x7f08030a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v0, 0x7f08030f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v0, 0x7f08030d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->F:Landroid/widget/TextView;

    .line 258
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FindFriendsTask;

    invoke-direct {v0, p0, v4}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FindFriendsTask;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;B)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FindFriendsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->t:Landroid/view/LayoutInflater;

    goto/16 :goto_0
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 5
    .parameter

    .prologue
    .line 919
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->j:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPhoto;->a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v1

    .line 920
    if-nez v1, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 927
    :pswitch_1
    const v0, 0x7f080307

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->EDIT_CAPTION:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V

    goto :goto_0

    .line 933
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->showDialog(I)V

    goto :goto_0

    .line 938
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->A:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 944
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/katana/activity/media/CropImageActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 945
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->p:Lcom/facebook/katana/ui/PhotoGallery;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PhotoGallery;->f()Landroid/view/View;

    move-result-object v0

    .line 946
    const v2, 0x7f080079

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/ImageViewTouchBase;

    .line 947
    invoke-virtual {v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 951
    :try_start_0
    const-string v2, "upload_croppic.jpg"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 953
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 954
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 955
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 959
    const-string v0, "input_image_path_extra"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/upload_croppic.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 967
    :pswitch_5
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->m()Ljava/lang/String;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_0

    .line 969
    invoke-static {v0}, Lcom/facebook/katana/util/TempFileManager;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 975
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 976
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 977
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const-string v0, "mimeType"

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    const v0, 0x7f0b03cc

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 988
    :goto_1
    :try_start_1
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 994
    :goto_2
    :pswitch_6
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V

    goto/16 :goto_0

    .line 981
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 984
    const v0, 0x7f0b03cd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 990
    :catch_0
    move-exception v0

    const v0, 0x7f0b03cb

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_2

    .line 957
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->r:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 870
    invoke-virtual {p0, p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 871
    const/4 v0, 0x5

    const v1, 0x7f0b03cc

    const v2, 0x7f02022a

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(III)V

    .line 874
    const/4 v0, 0x6

    const v1, 0x7f0b03cd

    const v2, 0x7f02022c

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(III)V

    .line 875
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1439
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x7

    const/4 v3, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 880
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E()Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    .line 882
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    const v1, 0x7f0b03ce

    const v2, 0x7f02022d

    invoke-virtual {p0, v4, v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(III)V

    .line 888
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->z:Lcom/facebook/katana/model/FacebookPhotoSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->z:Lcom/facebook/katana/model/FacebookPhotoSet;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhotoSet;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 889
    const v1, 0x7f0b0194

    const v2, 0x7f020222

    invoke-virtual {p0, v3, v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(III)V

    .line 896
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-direct {p0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 899
    :cond_0
    const v1, 0x7f0b03c9

    const v2, 0x7f020228

    invoke-virtual {p0, v7, v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(III)V

    .line 906
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 907
    const v0, 0x7f0b03c1

    const v1, 0x7f020124

    invoke-virtual {p0, v5, v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(III)V

    .line 908
    const v0, 0x7f0b03c0

    const v1, 0x7f020224

    invoke-virtual {p0, v6, v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(III)V

    .line 914
    :goto_3
    return-void

    .line 885
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->d(I)V

    goto :goto_0

    .line 891
    :cond_2
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->d(I)V

    goto :goto_1

    .line 902
    :cond_3
    invoke-virtual {p0, v7}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->d(I)V

    goto :goto_2

    .line 911
    :cond_4
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->d(I)V

    .line 912
    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->d(I)V

    goto :goto_3
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->C()V

    .line 382
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1048
    if-ne p1, v2, :cond_0

    .line 1049
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->E()Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v3

    .line 1050
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz v3, :cond_0

    .line 1051
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1052
    const-string v1, "image_crop_rect_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1053
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->showDialog(I)V

    .line 1055
    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/facebook/katana/service/method/CropProfilePicture;->a(Landroid/content/Context;JLjava/lang/String;IIII)Ljava/lang/String;

    .line 1059
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1060
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 346
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->i()Lcom/facebook/katana/ui/ImageViewTouchBase;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    sget-object v2, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->k:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    sget-object v2, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->EDIT_CAPTION:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v1, v2, :cond_1

    .line 348
    :cond_0
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V

    .line 354
    :goto_0
    return-void

    .line 349
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a()F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 350
    invoke-virtual {v0, v3}, Lcom/facebook/katana/ui/ImageViewTouchBase;->a(F)V

    goto :goto_0

    .line 352
    :cond_2
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 341
    :goto_0
    return-void

    .line 320
    :sswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->H()V

    goto :goto_0

    .line 323
    :sswitch_1
    const v0, 0x7f080307

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 326
    :sswitch_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->G()V

    goto :goto_0

    .line 329
    :sswitch_3
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->G()V

    goto :goto_0

    .line 332
    :sswitch_4
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->I()V

    goto :goto_0

    .line 335
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->onClickTagX(Landroid/view/View;)V

    goto :goto_0

    .line 338
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->onDoneTaggingBtn(Landroid/view/View;)V

    goto :goto_0

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080075 -> :sswitch_5
        0x7f080143 -> :sswitch_1
        0x7f080308 -> :sswitch_0
        0x7f08030a -> :sswitch_4
        0x7f08030b -> :sswitch_3
        0x7f08030c -> :sswitch_2
        0x7f08030f -> :sswitch_6
    .end sparse-switch
.end method

.method public onClickTagX(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->B:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->B:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1065
    packed-switch p1, :pswitch_data_0

    .line 1114
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1067
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1068
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1069
    const v1, 0x7f0b03c6

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1070
    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1071
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 1077
    :pswitch_1
    new-instance v5, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$5;

    invoke-direct {v5, p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$5;-><init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    .line 1098
    const v0, 0x7f0b02ae

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v0, 0x7f0b02b0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0b03d7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b0264

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v8, v7

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1105
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1106
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1107
    const v1, 0x7f0b02b1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1108
    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1109
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 1065
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDoneTaggingBtn(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 358
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V

    .line 359
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->w:Z

    .line 298
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->P:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 301
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 266
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->w:Z

    .line 268
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 270
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-nez v1, :cond_0

    .line 271
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->e:Ljava/lang/String;

    const-string v1, "Invalid session"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->finish()V

    .line 291
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->P:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 278
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->removeDialog(I)V

    .line 280
    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->m:Ljava/lang/String;

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->A:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->A:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookPhotoSet;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPhotoSet;

    move-result-object v0

    .line 287
    :cond_2
    if-nez v0, :cond_3

    .line 288
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->u:J

    invoke-static {v0, v1}, Lcom/facebook/katana/model/FacebookPhotoSet;->d(J)Lcom/facebook/katana/model/FacebookPhotoSet;

    move-result-object v0

    .line 290
    :cond_3
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/model/FacebookPhotoSet;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 306
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onStop()V

    .line 308
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/facebook/katana/util/TempFileManager;->a()V

    .line 313
    :cond_0
    return-void
.end method
