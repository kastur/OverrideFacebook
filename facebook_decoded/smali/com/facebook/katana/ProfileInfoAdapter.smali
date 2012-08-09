.class public Lcom/facebook/katana/ProfileInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProfileInfoAdapter.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ProfileInfoAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Z

.field private d:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/katana/ProfileInfoAdapter;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/facebook/katana/ProfileInfoAdapter;->d:Lcom/facebook/katana/binding/StreamPhotosCache;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter;->b:Ljava/util/List;

    .line 38
    iput-boolean p3, p0, Lcom/facebook/katana/ProfileInfoAdapter;->c:Z

    .line 39
    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018e

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter;->e:Landroid/graphics/Bitmap;

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v1, "ProfileInfoAdapter"

    const-string v2, "Out of memory when decoding resource no_avatar"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    const-string v1, "ProfileInfoAdapter"

    const-string v2, "Cannot decoding resource no_avatar: OOM"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/facebook/katana/ProfileInfoAdapter$Item;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    return-object v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileInfoAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 169
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const v4, 0x7f08012b

    const v3, 0x7f08012a

    .line 175
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    .line 178
    if-nez p2, :cond_0

    .line 179
    iget-object v1, p0, Lcom/facebook/katana/ProfileInfoAdapter;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 181
    iget v2, v0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a:I

    packed-switch v2, :pswitch_data_0

    .line 195
    :pswitch_0
    const v2, 0x7f030051

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 203
    :cond_0
    :goto_0
    iget v1, v0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a:I

    packed-switch v1, :pswitch_data_1

    .line 286
    :cond_1
    :goto_1
    return-object p2

    .line 183
    :pswitch_1
    const v2, 0x7f0300e7

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 190
    :pswitch_2
    const v2, 0x7f030050

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 205
    :pswitch_3
    const v1, 0x7f0802b0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 207
    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 208
    iget-object v2, p0, Lcom/facebook/katana/ProfileInfoAdapter;->d:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v3, p0, Lcom/facebook/katana/ProfileInfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 210
    if-eqz v2, :cond_2

    .line 211
    iget-object v3, p0, Lcom/facebook/katana/ProfileInfoAdapter;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    .line 221
    :goto_2
    const v1, 0x7f0802ab

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v1, 0x7f0802b1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 224
    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 225
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/facebook/katana/ProfileInfoAdapter;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/facebook/katana/ProfileInfoAdapter;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/facebook/katana/ProfileInfoAdapter;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/facebook/katana/ProfileInfoAdapter;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 228
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 235
    :pswitch_4
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 237
    const v2, 0x7f08012d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 239
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget v0, v0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 245
    const v0, 0x7f020257

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 247
    :cond_5
    const v0, 0x7f020256

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 254
    :pswitch_5
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 256
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/facebook/katana/ProfileInfoAdapter;->d:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v2, p0, Lcom/facebook/katana/ProfileInfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 262
    const v0, 0x7f08012c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 264
    if-eqz v1, :cond_6

    .line 265
    iget-object v2, p0, Lcom/facebook/katana/ProfileInfoAdapter;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 268
    :cond_6
    iget-object v1, p0, Lcom/facebook/katana/ProfileInfoAdapter;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/facebook/katana/ProfileInfoAdapter;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 278
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 282
    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 284
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_1

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 203
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
