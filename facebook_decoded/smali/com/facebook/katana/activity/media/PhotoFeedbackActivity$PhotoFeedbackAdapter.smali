.class Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoFeedbackActivity.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/katana/binding/ProfileImagesCache;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoComment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 567
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 568
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->a:Landroid/content/Context;

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->d:Ljava/util/List;

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->c:Ljava/util/List;

    .line 571
    iput-object p2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->b:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 572
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 5
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ViewHolder;

    .line 665
    invoke-virtual {v0}, Lcom/facebook/katana/ViewHolder;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 666
    if-eqz v1, :cond_0

    .line 667
    iget-wide v3, p1, Lcom/facebook/katana/binding/ProfileImage;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 672
    :cond_1
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/FacebookPhotoComment;)V
    .locals 1
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->notifyDataSetChanged()V

    .line 593
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 581
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->notifyDataSetChanged()V

    .line 583
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 604
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f02018e

    .line 617
    if-nez p2, :cond_0

    .line 620
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 622
    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 623
    new-instance v0, Lcom/facebook/katana/ViewHolder;

    const v1, 0x7f08008c

    invoke-direct {v0, p2, v1}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 624
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 625
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 631
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhotoComment;

    .line 632
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoComment;->a()J

    move-result-wide v2

    .line 634
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 637
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoComment;->d()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v4

    .line 638
    iget-object v5, v4, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    .line 639
    if-eqz v5, :cond_2

    .line 640
    iget-object v6, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->b:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v7, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->a:Landroid/content/Context;

    invoke-virtual {v6, v7, v2, v3, v5}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 641
    if-eqz v2, :cond_1

    .line 642
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 650
    :goto_1
    const v1, 0x7f08008d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v4, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    const v1, 0x7f08008f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoComment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->a:Landroid/content/Context;

    sget-object v2, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoComment;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v1

    .line 654
    const v0, 0x7f08008e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    return-object p2

    .line 628
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 644
    :cond_1
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 647
    :cond_2
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
