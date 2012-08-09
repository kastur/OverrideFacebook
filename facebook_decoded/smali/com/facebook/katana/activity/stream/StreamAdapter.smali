.class public Lcom/facebook/katana/activity/stream/StreamAdapter;
.super Landroid/widget/BaseAdapter;
.source "StreamAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/view/FacebookPostView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;

.field private d:Lcom/facebook/katana/binding/FacebookStreamContainer;

.field private e:Z

.field private f:Lcom/facebook/katana/view/FacebookPostView$Extras;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/facebook/katana/binding/FacebookStreamContainer;Lcom/facebook/katana/binding/ProfileImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;Lcom/facebook/katana/activity/stream/StreamAdapter$StreamAdapterListener;J)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->c:Landroid/graphics/Bitmap;

    .line 78
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    .line 80
    iput-object p3, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->b:Ljava/util/List;

    .line 84
    new-instance v3, Lcom/facebook/katana/activity/stream/StreamAdapter$1;

    invoke-direct {v3, p0, p6}, Lcom/facebook/katana/activity/stream/StreamAdapter$1;-><init>(Lcom/facebook/katana/activity/stream/StreamAdapter;Lcom/facebook/katana/activity/stream/StreamAdapter$StreamAdapterListener;)V

    .line 94
    new-instance v4, Lcom/facebook/katana/activity/stream/StreamAdapter$2;

    invoke-direct {v4, p0, p6}, Lcom/facebook/katana/activity/stream/StreamAdapter$2;-><init>(Lcom/facebook/katana/activity/stream/StreamAdapter;Lcom/facebook/katana/activity/stream/StreamAdapter$StreamAdapterListener;)V

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v6, 0x0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022f

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->c:Landroid/graphics/Bitmap;

    .line 111
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020230

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 113
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018e

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 120
    :goto_0
    new-instance v0, Lcom/facebook/katana/view/FacebookPostView$Extras;

    move-object v1, p4

    move-object v2, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/view/FacebookPostView$Extras;-><init>(Lcom/facebook/katana/binding/ProfileImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;J)V

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->f:Lcom/facebook/katana/view/FacebookPostView$Extras;

    .line 129
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 130
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v1, "StreamAdapter"

    const-string v2, "cannot decode resources"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const-string v1, "StreamAdapter"

    const-string v2, "Cannot decode resources: OOM"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/facebook/katana/view/FacebookPostView$ViewHolder;Lcom/facebook/katana/model/FacebookPost;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 349
    const v0, 0x7f0802a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 350
    invoke-virtual {p3}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v1

    .line 351
    invoke-virtual {p3}, Lcom/facebook/katana/model/FacebookPost;->g()Lcom/facebook/katana/model/FacebookPost$Likes;

    move-result-object v2

    .line 352
    invoke-virtual {p3}, Lcom/facebook/katana/model/FacebookPost;->k()Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost$Comments;->c()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->c()I

    move-result v3

    if-nez v3, :cond_1

    .line 355
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 358
    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->h:Landroid/widget/TextView;

    .line 361
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost$Comments;->c()I

    move-result v3

    .line 362
    if-nez v3, :cond_3

    .line 363
    iget-boolean v1, v1, Lcom/facebook/katana/model/FacebookPost$Comments;->canPost:Z

    if-eqz v1, :cond_2

    .line 364
    const v1, 0x7f0b0346

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 365
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    :goto_1
    iget-object v0, p2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->i:Landroid/widget/TextView;

    .line 378
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->c()I

    move-result v1

    .line 379
    if-lez v1, :cond_5

    .line 380
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0008

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 369
    :cond_3
    if-ne v3, v7, :cond_4

    .line 370
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0355

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 373
    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    const v4, 0x7f0b0348

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 384
    :cond_5
    iget-boolean v1, v2, Lcom/facebook/katana/model/FacebookPost$Likes;->canLike:Z

    if-eqz v1, :cond_6

    .line 385
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    const v1, 0x7f0b034c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 388
    :cond_6
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/facebook/katana/model/FacebookPost;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    .line 196
    if-nez p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->c:Landroid/graphics/Bitmap;

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p2}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :cond_2
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/FacebookStreamContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    .line 174
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamAdapter;->notifyDataSetChanged()V

    .line 175
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    .line 184
    invoke-virtual {v0, p1}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->e:Z

    .line 150
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->e:Z

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamAdapter;->notifyDataSetChanged()V

    .line 165
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 243
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    .line 277
    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 286
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 289
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 292
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 295
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 308
    .line 310
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    move-object v3, v0

    .line 316
    :goto_0
    if-nez p2, :cond_2

    .line 317
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 319
    if-nez v3, :cond_1

    .line 320
    const v2, 0x7f0300fc

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v0, v1

    .line 331
    :goto_1
    if-nez v3, :cond_4

    .line 332
    const v0, 0x7f0802d9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->e:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0b0350

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    move-object v0, v2

    .line 338
    :goto_4
    return-object v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->d:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 313
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_4

    .line 322
    :cond_1
    invoke-static {v3, v0}, Lcom/facebook/katana/view/FacebookPostView;->a(Lcom/facebook/katana/model/FacebookPost;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    .line 324
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    move-object v2, p2

    goto :goto_1

    .line 332
    :cond_3
    const v1, 0x7f0b034d

    goto :goto_2

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/facebook/katana/activity/stream/StreamAdapter;->f:Lcom/facebook/katana/view/FacebookPostView$Extras;

    invoke-static {v1, v3, v0, v4}, Lcom/facebook/katana/view/FacebookPostView;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost;Lcom/facebook/katana/view/FacebookPostView$ViewHolder;Lcom/facebook/katana/view/FacebookPostView$Extras;)V

    .line 336
    invoke-direct {p0, v2, v0, v3}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Landroid/view/View;Lcom/facebook/katana/view/FacebookPostView$ViewHolder;Lcom/facebook/katana/model/FacebookPost;)V

    goto :goto_3

    :cond_5
    move-object v3, v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0x8

    return v0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 138
    instance-of v1, v0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    if-eqz v1, :cond_0

    .line 139
    check-cast v0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    invoke-virtual {v0}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a()V

    .line 141
    :cond_0
    return-void
.end method
