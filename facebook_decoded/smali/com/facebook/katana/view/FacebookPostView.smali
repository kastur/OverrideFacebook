.class public Lcom/facebook/katana/view/FacebookPostView;
.super Ljava/lang/Object;
.source "FacebookPostView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost;Lcom/facebook/katana/view/FacebookPostView$Extras;)Landroid/text/Spannable;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x21

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 563
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v4

    .line 564
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->d()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v5

    .line 566
    iget-wide v6, v4, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-wide v8, p2, Lcom/facebook/katana/view/FacebookPostView$Extras;->g:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {p0, v3, v4, v0}, Lcom/facebook/katana/view/FacebookPostView;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/facebook/katana/model/FacebookProfile;Z)Landroid/text/SpannableStringBuilder;

    .line 568
    if-eqz v5, :cond_0

    iget-wide v6, v5, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-wide v8, p2, Lcom/facebook/katana/view/FacebookPostView$Extras;->g:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    .line 570
    const-string v0, " > "

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 571
    iget-wide v6, v5, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-wide v8, p2, Lcom/facebook/katana/view/FacebookPostView$Extras;->g:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {p0, v3, v5, v0}, Lcom/facebook/katana/view/FacebookPostView;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/facebook/katana/model/FacebookProfile;Z)Landroid/text/SpannableStringBuilder;

    .line 574
    :cond_0
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 575
    iget-object v4, p1, Lcom/facebook/katana/model/FacebookPost;->message:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 576
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/facebook/katana/model/FacebookPost;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 578
    :cond_1
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3, v4, v2, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 579
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v1, v2, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 580
    return-object v3

    :cond_2
    move v0, v2

    .line 566
    goto :goto_0

    :cond_3
    move v0, v2

    .line 571
    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/util/Set;)Landroid/text/Spannable;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x21

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 593
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 595
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 597
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 600
    const v0, 0x7f0b037d

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v2

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 601
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    invoke-static {p0, v3, v0, v1}, Lcom/facebook/katana/view/FacebookPostView;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/facebook/katana/model/FacebookProfile;Z)Landroid/text/SpannableStringBuilder;

    .line 638
    :goto_1
    return-object v3

    :cond_0
    move v0, v2

    .line 593
    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 606
    const v4, 0x7f0b037e

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 608
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 610
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3, v4, v0, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 612
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v1, v0, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 615
    new-instance v1, Lcom/facebook/katana/view/FacebookPostView$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/view/FacebookPostView$2;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    invoke-virtual {v3, v1, v0, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/facebook/katana/model/FacebookProfile;Z)Landroid/text/SpannableStringBuilder;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x21

    .line 655
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 658
    iget-object v1, p2, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 659
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 661
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v2, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 663
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v2, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 665
    if-eqz p3, :cond_0

    .line 666
    new-instance v2, Lcom/facebook/katana/view/FacebookPostView$3;

    invoke-direct {v2, p0, p2}, Lcom/facebook/katana/view/FacebookPostView$3;-><init>(Landroid/content/Context;Lcom/facebook/katana/model/FacebookProfile;)V

    invoke-virtual {p1, v2, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 683
    :cond_0
    return-object p1
.end method

.method public static a(Lcom/facebook/katana/model/FacebookPost;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f080133

    const v7, 0x7f08007e

    const v6, 0x7f080080

    const v5, 0x7f08007f

    const/4 v4, 0x0

    .line 166
    const v0, 0x7f03004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 167
    new-instance v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    invoke-direct {v3}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;-><init>()V

    .line 168
    const v0, 0x7f080120

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 170
    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 237
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 173
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    :goto_1
    const v0, 0x7f08011e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a:Landroid/widget/ImageView;

    .line 243
    const v0, 0x7f08011f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->b:Landroid/widget/TextView;

    .line 245
    iget-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/katana/view/FacebookPostView;->a(Landroid/widget/TextView;)V

    .line 246
    const v0, 0x7f080121

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->g:Landroid/widget/TextView;

    .line 248
    iget-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->g:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/katana/view/FacebookPostView;->a(Landroid/widget/TextView;)V

    .line 249
    const v0, 0x7f080122

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->c:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f0802a9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->h:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f0802aa

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->i:Landroid/widget/TextView;

    .line 256
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 258
    goto :goto_0

    .line 179
    :pswitch_1
    const v1, 0x7f0300ce

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 180
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 181
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->d:Landroid/widget/TextView;

    .line 183
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->e:Landroid/widget/TextView;

    .line 185
    iget-object v1, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    const v0, 0x7f08027f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    .line 187
    iget-object v1, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    const v0, 0x7f080280

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    .line 189
    iget-object v1, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    const v0, 0x7f080281

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    goto/16 :goto_1

    .line 195
    :pswitch_2
    const v1, 0x7f030116

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 197
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->d:Landroid/widget/TextView;

    .line 199
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->e:Landroid/widget/TextView;

    .line 201
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->f:Landroid/widget/TextView;

    .line 203
    iget-object v1, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    goto/16 :goto_1

    .line 209
    :pswitch_3
    const v1, 0x7f030054

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 210
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 211
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->d:Landroid/widget/TextView;

    .line 213
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->e:Landroid/widget/TextView;

    .line 215
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->f:Landroid/widget/TextView;

    .line 217
    iget-object v1, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    goto/16 :goto_1

    .line 223
    :pswitch_4
    const v1, 0x7f030019

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 224
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 225
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->d:Landroid/widget/TextView;

    .line 227
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->e:Landroid/widget/TextView;

    .line 229
    iget-object v1, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    .line 231
    const v0, 0x7f080123

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->j:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost;Lcom/facebook/katana/view/FacebookPostView$ViewHolder;Lcom/facebook/katana/view/FacebookPostView$Extras;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 551
    :goto_0
    return-void

    .line 272
    :pswitch_0
    iput v2, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->l:I

    .line 498
    :cond_0
    :goto_1
    iget-wide v0, p1, Lcom/facebook/katana/model/FacebookPost;->actorId:J

    iput-wide v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->m:J

    .line 501
    iget-object v1, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a:Landroid/widget/ImageView;

    .line 502
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 503
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    :cond_1
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->a:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-wide v3, p1, Lcom/facebook/katana/model/FacebookPost;->actorId:J

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, p0, v3, v4, v5}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_18

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 513
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/Tuple;

    .line 514
    if-eqz v0, :cond_19

    iget-wide v3, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->g:J

    iget-object v1, v0, Lcom/facebook/katana/util/Tuple;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_19

    .line 516
    iget-object v1, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/facebook/katana/util/Tuple;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    :goto_3
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->j()Ljava/util/Set;

    move-result-object v0

    .line 529
    iget-object v1, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 530
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 531
    iget-object v1, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    iget-object v1, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->g:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/facebook/katana/view/FacebookPostView;->a(Landroid/content/Context;Ljava/util/Set;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :cond_2
    :goto_4
    sget-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    iget-wide v3, p1, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {p0, v0, v3, v4}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v1, p1, Lcom/facebook/katana/model/FacebookPost;->attribution:Ljava/lang/String;

    .line 544
    if-nez v1, :cond_1b

    .line 545
    iget-object v1, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :pswitch_1
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v0

    .line 281
    iget-object v1, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->d:Landroid/widget/TextView;

    .line 282
    iget-object v3, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->name:Ljava/lang/String;

    .line 283
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 284
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_5
    iget-object v1, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->e:Landroid/widget/TextView;

    .line 292
    iget-object v3, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->caption:Ljava/lang/String;

    .line 293
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 294
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :goto_6
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;

    .line 303
    if-ge v1, v5, :cond_3

    .line 304
    invoke-static {p0, p2, v0, p3, v1}, Lcom/facebook/katana/view/FacebookPostView;->a(Landroid/content/Context;Lcom/facebook/katana/view/FacebookPostView$ViewHolder;Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;Lcom/facebook/katana/view/FacebookPostView$Extras;I)V

    .line 306
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 287
    :cond_4
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 297
    :cond_5
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 309
    :cond_6
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->l:I

    .line 311
    :goto_8
    if-ge v1, v5, :cond_0

    .line 312
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 320
    :pswitch_2
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;

    .line 322
    iget-object v3, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    .line 323
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 324
    iget-object v4, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v4, v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->src:Ljava/lang/String;

    .line 327
    if-eqz v4, :cond_8

    .line 328
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->b:Lcom/facebook/katana/binding/StreamPhotosCache;

    invoke-virtual {v0, p0, v4}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_7

    :goto_9
    invoke-static {p0, v3, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    .line 333
    :goto_a
    invoke-virtual {p2, v2, v4}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a(ILjava/lang/String;)V

    .line 335
    iput v8, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->l:I

    .line 338
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->d:Landroid/widget/TextView;

    .line 339
    iget-object v3, v1, Lcom/facebook/katana/model/FacebookPost$Attachment;->name:Ljava/lang/String;

    .line 340
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 341
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_b
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->e:Landroid/widget/TextView;

    .line 349
    iget-object v3, v1, Lcom/facebook/katana/model/FacebookPost$Attachment;->caption:Ljava/lang/String;

    .line 350
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 351
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :goto_c
    iget-object v0, v1, Lcom/facebook/katana/model/FacebookPost$Attachment;->description:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 357
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->f:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPost$Attachment;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 329
    :cond_7
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->e:Landroid/graphics/Bitmap;

    goto :goto_9

    .line 331
    :cond_8
    invoke-static {p0, v3, v6}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    goto :goto_a

    .line 344
    :cond_9
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 354
    :cond_a
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    .line 360
    :cond_b
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 368
    :pswitch_3
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    aget-object v1, v0, v2

    .line 369
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v3

    .line 370
    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 372
    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;

    .line 373
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 375
    iget-object v4, v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->src:Ljava/lang/String;

    .line 376
    if-eqz v4, :cond_d

    .line 377
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->b:Lcom/facebook/katana/binding/StreamPhotosCache;

    invoke-virtual {v0, p0, v4}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_c

    :goto_d
    invoke-static {p0, v1, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    .line 382
    :goto_e
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 384
    invoke-virtual {p2, v2, v4}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a(ILjava/lang/String;)V

    .line 386
    iput v8, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->l:I

    .line 393
    :goto_f
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->d:Landroid/widget/TextView;

    .line 394
    iget-object v1, v3, Lcom/facebook/katana/model/FacebookPost$Attachment;->name:Ljava/lang/String;

    .line 395
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    .line 396
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    :goto_10
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->e:Landroid/widget/TextView;

    .line 404
    iget-object v1, v3, Lcom/facebook/katana/model/FacebookPost$Attachment;->caption:Ljava/lang/String;

    .line 405
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10

    .line 406
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :goto_11
    iget-object v0, v3, Lcom/facebook/katana/model/FacebookPost$Attachment;->description:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 412
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->f:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/facebook/katana/model/FacebookPost$Attachment;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 378
    :cond_c
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->e:Landroid/graphics/Bitmap;

    goto :goto_d

    .line 380
    :cond_d
    invoke-static {p0, v1, v6}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    goto :goto_e

    .line 388
    :cond_e
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iput v2, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->l:I

    goto :goto_f

    .line 399
    :cond_f
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10

    .line 409
    :cond_10
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11

    .line 415
    :cond_11
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 423
    :pswitch_4
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    aget-object v1, v0, v2

    .line 424
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 426
    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;

    .line 427
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 429
    iget-object v4, v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->src:Ljava/lang/String;

    .line 430
    if-eqz v4, :cond_13

    .line 431
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->b:Lcom/facebook/katana/binding/StreamPhotosCache;

    invoke-virtual {v0, p0, v4}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_12

    :goto_12
    invoke-static {p0, v1, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    .line 436
    :goto_13
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    invoke-virtual {p2, v2, v4}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a(ILjava/lang/String;)V

    .line 440
    iput v8, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->l:I

    .line 447
    :goto_14
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->d:Landroid/widget/TextView;

    .line 448
    iget-object v1, v3, Lcom/facebook/katana/model/FacebookPost$Attachment;->name:Ljava/lang/String;

    .line 449
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    .line 450
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :goto_15
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->e:Landroid/widget/TextView;

    .line 458
    iget-object v1, v3, Lcom/facebook/katana/model/FacebookPost$Attachment;->caption:Ljava/lang/String;

    .line 459
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16

    .line 460
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_16
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPost;->mTaggedIds:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPost;->mTaggedIds:Ljava/util/List;

    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 469
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/katana/view/FacebookPostView$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/view/FacebookPostView$1;-><init>(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 432
    :cond_12
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->e:Landroid/graphics/Bitmap;

    goto :goto_12

    .line 434
    :cond_13
    invoke-static {p0, v1, v6}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    goto :goto_13

    .line 442
    :cond_14
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    iput v2, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->l:I

    goto :goto_14

    .line 453
    :cond_15
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 463
    :cond_16
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16

    .line 486
    :cond_17
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->j:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 509
    :cond_18
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->f:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 518
    :cond_19
    new-instance v1, Lcom/facebook/katana/util/Tuple;

    iget-wide v3, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, p3}, Lcom/facebook/katana/view/FacebookPostView;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost;Lcom/facebook/katana/view/FacebookPostView$Extras;)Landroid/text/Spannable;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/facebook/katana/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 521
    iget-object v3, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/facebook/katana/util/Tuple;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {p1, v1}, Lcom/facebook/katana/model/FacebookPost;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 535
    :cond_1a
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 547
    :cond_1b
    const v3, 0x7f0b0410

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object v1, v4, v8

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 549
    iget-object v1, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/view/FacebookPostView$ViewHolder;Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;Lcom/facebook/katana/view/FacebookPostView$Extras;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 694
    iget-object v0, p1, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    aget-object v1, v0, p4

    .line 695
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 697
    iget-object v2, p2, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->src:Ljava/lang/String;

    .line 698
    if-eqz v2, :cond_1

    .line 699
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->b:Lcom/facebook/katana/binding/StreamPhotosCache;

    invoke-virtual {v0, p0, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_0

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    .line 704
    :goto_1
    invoke-virtual {p1, p4, v2}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a(ILjava/lang/String;)V

    .line 705
    return-void

    .line 700
    :cond_0
    iget-object v0, p3, Lcom/facebook/katana/view/FacebookPostView$Extras;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 702
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private static a(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 712
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_1

    .line 714
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    invoke-static {}, Lcom/facebook/katana/ui/SaneLinkMovementMethod;->a()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 716
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 717
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 718
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 721
    :cond_1
    return-void
.end method
