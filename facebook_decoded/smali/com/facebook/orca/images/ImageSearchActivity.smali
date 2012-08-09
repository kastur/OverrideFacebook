.class public Lcom/facebook/orca/images/ImageSearchActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ImageSearchActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/orca/images/ImageSearchListAdapter;

.field private f:Landroid/view/inputmethod/InputMethodManager;

.field private g:Lcom/facebook/orca/images/ImageCache;

.field private h:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/GridView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private q:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Landroid/os/Bundle;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    .line 57
    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    .line 61
    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:I

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageSearchActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageSearchActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageSearchActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageSearchActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageSearchActivity;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageSearchActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageSearchActivity;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 198
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    const-string v1, "AppId"

    const-string v2, "E71A777BBC850CF326C995ECDA7AFA3577A5749F"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "Query"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "Sources"

    const-string v2, "Image"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "Version"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "Market"

    const-string v2, "en-us"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "Adult"

    const-string v2, "Strict"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "Image.Count"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "Image.Offset"

    shl-int/lit8 v2, p2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iput p2, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:I

    .line 213
    iput-object p1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->u:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "image_search"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    sget v1, Lcom/facebook/orca/R$string;->image_search_loading:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/images/ImageSearchActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->f:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->e:Lcom/facebook/orca/images/ImageSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/images/ImageSearchListAdapter;->a(I)Landroid/os/Bundle;

    move-result-object v0

    .line 280
    const-string v1, "Thumbnail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 281
    const-string v1, "Url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->g:Lcom/facebook/orca/images/ImageCache;

    new-instance v2, Lcom/facebook/orca/images/ImageCacheKey;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/net/Uri;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 285
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 286
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 287
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->finish()V

    .line 289
    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 224
    invoke-static {p1}, Lcom/facebook/orca/images/ImageSearchActivity;->c(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->h()V

    .line 238
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "SearchResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 229
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 230
    const-string v2, "Total"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 231
    div-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:I

    .line 232
    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:I

    iput v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    .line 233
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->t:Landroid/os/Bundle;

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:I

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->u:Ljava/lang/String;

    .line 237
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->i()V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    if-lez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Ljava/lang/String;

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 192
    :cond_2
    if-nez p1, :cond_0

    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Ljava/lang/String;

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/images/ImageSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->g()V

    return-void
.end method

.method private static c(Landroid/os/Bundle;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 292
    const-string v0, "SearchResponse"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 293
    if-nez v0, :cond_0

    move v0, v1

    .line 305
    :goto_0
    return v0

    .line 296
    :cond_0
    const-string v2, "Image"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 297
    if-nez v0, :cond_1

    move v0, v1

    .line 298
    goto :goto_0

    .line 301
    :cond_1
    const-string v2, "Results"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 302
    if-nez v0, :cond_2

    move v0, v1

    .line 303
    goto :goto_0

    .line 305
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/orca/images/ImageSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->h()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 241
    iput v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:I

    .line 242
    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->u:Ljava/lang/String;

    .line 243
    iput v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    .line 244
    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->t:Landroid/os/Bundle;

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    sget v1, Lcom/facebook/orca/R$string;->image_search_failed_to_load_images:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 250
    return-void
.end method

.method private i()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->t:Landroid/os/Bundle;

    const-string v3, "Image"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 256
    const-string v3, "Results"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 259
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    sget v1, Lcom/facebook/orca/R$string;->image_search_no_results:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 276
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 265
    iget-object v3, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/facebook/orca/images/ImageSearchActivity;->e:Lcom/facebook/orca/images/ImageSearchListAdapter;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/images/ImageSearchListAdapter;->a(Ljava/util/List;)V

    .line 267
    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:I

    if-ge v0, v5, :cond_2

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->m:Landroid/widget/TextView;

    sget v3, Lcom/facebook/orca/R$string;->image_search_range:I

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    iget v6, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/facebook/orca/images/ImageSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v3, p0, Lcom/facebook/orca/images/ImageSearchActivity;->n:Landroid/widget/TextView;

    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->o:Landroid/widget/TextView;

    iget v3, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    iget v4, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 272
    goto :goto_1

    :cond_4
    move v1, v2

    .line 273
    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 72
    sget v0, Lcom/facebook/orca/R$layout;->orca_image_search:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 75
    const-class v0, Lcom/facebook/orca/images/ImageSearchListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageSearchListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->e:Lcom/facebook/orca/images/ImageSearchListAdapter;

    .line 76
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->f:Landroid/view/inputmethod/InputMethodManager;

    .line 77
    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->g:Lcom/facebook/orca/images/ImageCache;

    .line 79
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 80
    sget v0, Lcom/facebook/orca/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->h:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 81
    sget v0, Lcom/facebook/orca/R$id;->image_search_query:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->i:Landroid/widget/EditText;

    .line 82
    sget v0, Lcom/facebook/orca/R$id;->image_search_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->j:Landroid/widget/Button;

    .line 83
    sget v0, Lcom/facebook/orca/R$id;->image_search_grid:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Landroid/widget/GridView;

    .line 84
    sget v0, Lcom/facebook/orca/R$id;->image_search_page_range_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->l:Landroid/widget/RelativeLayout;

    .line 85
    sget v0, Lcom/facebook/orca/R$id;->image_search_page_range:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->m:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/facebook/orca/R$id;->image_search_page_range_prev:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->n:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/facebook/orca/R$id;->image_search_page_range_next:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->o:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/facebook/orca/R$id;->image_search_empty_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->j:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$1;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$2;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 111
    const-string v0, "imageSearchOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$3;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/TitlebarProgressProgressIndicator;

    iget-object v2, p0, Lcom/facebook/orca/images/ImageSearchActivity;->h:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-direct {v1, v2}, Lcom/facebook/orca/ops/TitlebarProgressProgressIndicator;-><init>(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$4;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 133
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$5;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->e:Lcom/facebook/orca/images/ImageSearchListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Landroid/widget/GridView;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$6;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "image_search"

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 163
    const-string v0, "currentQuery"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Ljava/lang/String;

    .line 164
    const-string v0, "currentPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    .line 165
    const-string v0, "currentResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->t:Landroid/os/Bundle;

    .line 166
    const-string v0, "loadingQuery"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->u:Ljava/lang/String;

    .line 167
    const-string v0, "loadingPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:I

    .line 168
    const-string v0, "numPages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:I

    .line 169
    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    if-ltz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->i()V

    .line 172
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "currentQuery"

    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "currentPage"

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v0, "currentResponse"

    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->t:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    const-string v0, "loadingQuery"

    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "loadingPage"

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v0, "numPages"

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    return-void
.end method
