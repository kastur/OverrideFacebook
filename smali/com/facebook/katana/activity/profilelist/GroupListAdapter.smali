.class Lcom/facebook/katana/activity/profilelist/GroupListAdapter;
.super Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;
.source "GroupListActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V

    .line 166
    return-void
.end method


# virtual methods
.method public final a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;->a(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookGroup;

    .line 203
    if-nez p4, :cond_0

    .line 204
    iget-object v2, p0, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f03004c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 205
    new-instance v2, Lcom/facebook/katana/ViewHolder;

    const v3, 0x7f080081

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v3}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 207
    iget-object v3, p0, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    :goto_0
    iget-wide v3, v1, Lcom/facebook/katana/model/FacebookGroup;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 214
    iget-object v3, v1, Lcom/facebook/katana/model/FacebookGroup;->mImageUrl:Ljava/lang/String;

    .line 216
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    iget-object v4, p0, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v5, p0, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;->a:Landroid/content/Context;

    iget-wide v6, v1, Lcom/facebook/katana/model/FacebookGroup;->mId:J

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 219
    if-eqz v3, :cond_1

    .line 220
    iget-object v2, v2, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    :goto_1
    const v2, 0x7f080124

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    iget-object v3, v1, Lcom/facebook/katana/model/FacebookGroup;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const v2, 0x7f080125

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    iget-object v3, p0, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;->a:Landroid/content/Context;

    const v4, 0x7f0b020d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;->a:Landroid/content/Context;

    sget-object v8, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    iget-wide v9, v1, Lcom/facebook/katana/model/FacebookGroup;->mUpdateTime:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const v2, 0x7f080126

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 245
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookGroup;->b()I

    move-result v1

    .line 246
    if-nez v1, :cond_3

    .line 247
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :goto_2
    return-object p4

    .line 210
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/ViewHolder;

    goto :goto_0

    .line 222
    :cond_1
    iget-object v2, v2, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    const v3, 0x7f0200d8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 225
    :cond_2
    iget-object v2, v2, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    const v3, 0x7f0200d8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 249
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;->d:Ljava/util/List;

    .line 172
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;->i()V

    .line 173
    return-void
.end method
