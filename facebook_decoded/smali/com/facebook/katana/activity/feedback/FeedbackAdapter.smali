.class public Lcom/facebook/katana/activity/feedback/FeedbackAdapter;
.super Landroid/widget/BaseAdapter;
.source "FeedbackAdapter.java"

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

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/katana/model/FacebookPost;

.field private final e:Landroid/view/View$OnClickListener;

.field private f:Landroid/graphics/Bitmap;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Lcom/facebook/katana/view/FacebookPostView$Extras;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/facebook/katana/model/FacebookPost;Lcom/facebook/katana/binding/ProfileImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;ZLcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 171
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->j:J

    .line 188
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    .line 190
    iput-object p3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->b:Ljava/util/List;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    .line 195
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->g()V

    .line 197
    new-instance v5, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$1;

    move-object/from16 v0, p7

    invoke-direct {v5, p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$1;-><init>(Lcom/facebook/katana/activity/feedback/FeedbackAdapter;Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;)V

    .line 209
    new-instance v1, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$2;

    move-object/from16 v0, p7

    invoke-direct {v1, p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$2;-><init>(Lcom/facebook/katana/activity/feedback/FeedbackAdapter;Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->e:Landroid/view/View$OnClickListener;

    .line 219
    const/4 v6, 0x0

    .line 220
    const/4 v7, 0x0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022f

    invoke-static {v1, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->f:Landroid/graphics/Bitmap;

    .line 224
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020230

    invoke-static {v1, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 226
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018e

    invoke-static {v1, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 232
    :goto_0
    new-instance v1, Lcom/facebook/katana/view/FacebookPostView$Extras;

    const/4 v4, 0x0

    const-wide/16 v8, -0x1

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v1 .. v9}, Lcom/facebook/katana/view/FacebookPostView$Extras;-><init>(Lcom/facebook/katana/binding/ProfileImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;J)V

    iput-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->k:Lcom/facebook/katana/view/FacebookPostView$Extras;

    .line 241
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->h:Z

    .line 242
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 244
    invoke-virtual {p3}, Lcom/facebook/katana/model/FacebookPost;->g()Lcom/facebook/katana/model/FacebookPost$Likes;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->c()I

    move-result v3

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    sub-int v1, v3, v1

    .line 247
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 248
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->e()J

    move-result-wide v1

    .line 249
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 250
    invoke-static {p1, v1, v2}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->i:Ljava/lang/String;

    .line 251
    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->i:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 252
    iput-wide v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->j:J

    .line 261
    :cond_0
    :goto_2
    return-void

    .line 228
    :catch_0
    move-exception v1

    .line 229
    const-string v2, "FeedbackAdapter"

    const-string v3, "Out of memory while loading bitmap resources"

    invoke-static {v2, v3, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 255
    :cond_2
    invoke-virtual {p3}, Lcom/facebook/katana/model/FacebookPost;->g()Lcom/facebook/katana/model/FacebookPost$Likes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost$Likes;->d()J

    move-result-wide v1

    .line 256
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 257
    iput-wide v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->j:J

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/katana/activity/feedback/FeedbackAdapter;)Lcom/facebook/katana/model/FacebookPost;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    return-object v0
.end method

.method private static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 710
    .line 711
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->e:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 713
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 716
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 719
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 720
    return-object v3
.end method

.method static synthetic a(Lcom/facebook/katana/activity/feedback/FeedbackAdapter;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->g:Z

    return v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->g()V

    .line 360
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->notifyDataSetChanged()V

    .line 361
    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    const/16 v5, 0x1e

    const/4 v0, 0x0

    .line 645
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 647
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    if-nez v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 652
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    invoke-direct {v2, v3, v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;-><init>(Lcom/facebook/katana/model/FacebookPost;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost$Comments;->b()I

    move-result v2

    .line 683
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost$Comments;->c()I

    move-result v1

    .line 686
    if-lez v2, :cond_3

    .line 687
    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPost$Comments;->d()Ljava/util/List;

    move-result-object v3

    .line 688
    if-ge v2, v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    new-instance v4, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    invoke-direct {v4, v5}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v1, v0

    .line 691
    :goto_2
    if-ge v1, v2, :cond_0

    .line 692
    iget-object v4, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    new-instance v5, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;

    iget-object v6, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Comment;

    invoke-direct {v5, v6, v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;-><init>(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost$Comment;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 657
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;-><init>(Lcom/facebook/katana/model/FacebookPost;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 662
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;-><init>(Lcom/facebook/katana/model/FacebookPost;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 667
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;-><init>(Lcom/facebook/katana/model/FacebookPost;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 672
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;-><init>(Lcom/facebook/katana/model/FacebookPost;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 694
    :cond_3
    if-lez v1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    invoke-direct {v1, v5}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->j:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->h:Z

    .line 306
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->f()V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->j:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 276
    iput-object p3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->i:Ljava/lang/String;

    .line 277
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->j:J

    .line 278
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->notifyDataSetChanged()V

    .line 280
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    .line 390
    if-nez p1, :cond_1

    .line 391
    iget-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->f:Landroid/graphics/Bitmap;

    .line 393
    :cond_1
    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p2}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    :cond_2
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 2
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    .line 378
    invoke-virtual {v0, p1}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->h:Z

    .line 296
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->notifyDataSetChanged()V

    .line 297
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->g:Z

    .line 334
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->f()V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->f()V

    .line 318
    return-void
.end method

.method public final c(I)V
    .locals 1
    .parameter

    .prologue
    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->g:Z

    .line 348
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->f()V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final d(I)Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;
    .locals 1
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    return-object v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->f()V

    .line 325
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 368
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 369
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 418
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    .line 437
    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 463
    :goto_0
    return v0

    :sswitch_0
    move v0, v1

    .line 439
    goto :goto_0

    .line 442
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 445
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 448
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 451
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 454
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 457
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 460
    :sswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x20 -> :sswitch_7
    .end sparse-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 470
    .line 471
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    .line 473
    if-nez p2, :cond_0

    .line 474
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 476
    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;->c()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move-object v1, v3

    :goto_0
    move-object p2, v1

    move-object v1, v3

    .line 529
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;->c()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 632
    :goto_2
    return-object p2

    :sswitch_0
    move-object v2, v0

    .line 482
    check-cast v2, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;->a()Lcom/facebook/katana/model/FacebookPost;

    move-result-object v2

    .line 483
    invoke-static {v2, v1}, Lcom/facebook/katana/view/FacebookPostView;->a(Lcom/facebook/katana/model/FacebookPost;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .line 484
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    .line 485
    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 491
    :sswitch_1
    const v2, 0x7f030065

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object p2, v1

    move-object v1, v3

    .line 492
    goto :goto_1

    .line 496
    :sswitch_2
    const v2, 0x7f03001e

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 497
    new-instance v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    invoke-direct {v2}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;-><init>()V

    .line 498
    const v1, 0x7f08008c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a:Landroid/widget/ImageView;

    .line 500
    const v1, 0x7f08008f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->b:Landroid/widget/TextView;

    .line 501
    const v1, 0x7f08008e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->c:Landroid/widget/TextView;

    .line 502
    const v1, 0x7f08008d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->d:Landroid/widget/TextView;

    .line 503
    iput-object v3, v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->e:Landroid/widget/TextView;

    .line 504
    iput-object v3, v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->f:Landroid/widget/TextView;

    .line 505
    iget-object v1, v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    aput-object v3, v1, v4

    .line 506
    iget-object v1, v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    aput-object v3, v1, v6

    .line 507
    iget-object v1, v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->k:[Landroid/widget/LinearLayout;

    aput-object v3, v1, v7

    .line 509
    iput v4, v2, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->l:I

    .line 510
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 511
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 512
    goto :goto_1

    .line 516
    :sswitch_3
    const v2, 0x7f030053

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    .line 526
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    goto/16 :goto_1

    .line 535
    :sswitch_4
    check-cast v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;->a()Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 536
    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->k:Lcom/facebook/katana/view/FacebookPostView$Extras;

    invoke-static {v2, v0, v1, v3}, Lcom/facebook/katana/view/FacebookPostView;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost;Lcom/facebook/katana/view/FacebookPostView$ViewHolder;Lcom/facebook/katana/view/FacebookPostView$Extras;)V

    goto/16 :goto_2

    .line 541
    :sswitch_5
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Comments;->c()I

    move-result v0

    .line 542
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost$Comments;->b()I

    move-result v1

    .line 544
    if-lez v1, :cond_3

    .line 545
    iget-boolean v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->h:Z

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0b0351

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 559
    :cond_1
    :goto_3
    const v0, 0x7f08015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0b0367

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 550
    :cond_3
    if-lez v0, :cond_1

    .line 551
    iget-boolean v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->h:Z

    if-eqz v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0b034f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 554
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0b0366

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 564
    :sswitch_6
    check-cast v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;

    .line 567
    iget-object v3, v1, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a:Landroid/widget/ImageView;

    .line 568
    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->a()Lcom/facebook/katana/model/FacebookPost$Comment;

    move-result-object v4

    .line 569
    iget-wide v5, v4, Lcom/facebook/katana/model/FacebookPost$Comment;->fromId:J

    iput-wide v5, v1, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->m:J

    .line 570
    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->k:Lcom/facebook/katana/view/FacebookPostView$Extras;

    iget-object v2, v2, Lcom/facebook/katana/view/FacebookPostView$Extras;->a:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v5, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    iget-wide v6, v4, Lcom/facebook/katana/model/FacebookPost$Comment;->fromId:J

    invoke-virtual {v4}, Lcom/facebook/katana/model/FacebookPost$Comment;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v8

    iget-object v8, v8, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 572
    if-eqz v2, :cond_5

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 574
    iget-object v2, v1, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/facebook/katana/model/FacebookPost$Comment;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v2, v1, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v3, v4, Lcom/facebook/katana/model/FacebookPost$Comment;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v1, v1, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 572
    :cond_5
    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->k:Lcom/facebook/katana/view/FacebookPostView$Extras;

    iget-object v2, v2, Lcom/facebook/katana/view/FacebookPostView$Extras;->f:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 581
    :sswitch_7
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->g()Lcom/facebook/katana/model/FacebookPost$Likes;

    move-result-object v2

    .line 582
    const v0, 0x7f080131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 583
    iget-boolean v1, v2, Lcom/facebook/katana/model/FacebookPost$Likes;->canLike:Z

    if-eqz v1, :cond_6

    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 584
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->b()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 586
    iget-boolean v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->g:Z

    if-eqz v1, :cond_8

    .line 587
    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 588
    const v0, 0x7f080132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 593
    :goto_7
    const v0, 0x7f080130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 595
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 596
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->c()I

    move-result v1

    if-ne v1, v6, :cond_9

    .line 597
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v2, 0x7f0b036f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 625
    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    const v0, 0x7f08012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 627
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 628
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    move v1, v5

    .line 583
    goto :goto_5

    :cond_7
    move v1, v4

    .line 585
    goto :goto_6

    .line 590
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 591
    const v0, 0x7f080132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 598
    :cond_9
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->c()I

    move-result v1

    if-ne v1, v7, :cond_b

    .line 599
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->i:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 600
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v2, 0x7f0b036d

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->i:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 603
    :cond_a
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v2, 0x7f0b036c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 607
    :cond_b
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b036e

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 611
    :cond_c
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->c()I

    move-result v1

    if-ne v1, v6, :cond_e

    .line 612
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->i:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 613
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v2, 0x7f0b0356

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->i:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 616
    :cond_d
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v2, 0x7f0b0357

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    .line 618
    :cond_e
    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->c()I

    move-result v1

    if-le v1, v6, :cond_f

    .line 619
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0358

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    .line 622
    :cond_f
    const-string v1, ""

    goto/16 :goto_8

    .line 630
    :cond_10
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 476
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch

    .line 529
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x20 -> :sswitch_7
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 430
    const/16 v0, 0x8

    return v0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 286
    instance-of v1, v0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    if-eqz v1, :cond_0

    .line 287
    check-cast v0, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;

    invoke-virtual {v0}, Lcom/facebook/katana/view/FacebookPostView$ViewHolder;->a()V

    .line 289
    :cond_0
    return-void
.end method
