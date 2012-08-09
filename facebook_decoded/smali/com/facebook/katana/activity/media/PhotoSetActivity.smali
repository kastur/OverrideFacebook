.class public Lcom/facebook/katana/activity/media/PhotoSetActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "PhotoSetActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

.field private f:Lcom/facebook/katana/binding/AppSession;

.field private g:Lcom/facebook/katana/binding/AppSessionListener;

.field private h:J

.field private i:Landroid/widget/GridView;

.field private final j:Ljava/util/Map;
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

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/katana/model/FacebookPhotoSet;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->j:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->k:Ljava/util/Set;

    .line 371
    return-void
.end method

.method public static a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p1, p2}, Lcom/facebook/katana/model/FacebookPhotoSet;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "set_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(J)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 2
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->j:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhoto;

    return-object v0
.end method

.method private a(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 2
    .parameter

    .prologue
    .line 390
    :try_start_0
    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->e:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    iget v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(J)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    :goto_0
    return-object v0

    .line 392
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoSetActivity;J)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(J)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoSetActivity;Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoSetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoSetActivity;Lcom/facebook/katana/model/FacebookPhoto;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/model/FacebookPhoto;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoSetActivity;Lcom/facebook/katana/model/FacebookPhotoSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/model/FacebookPhotoSet;)V

    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPhoto;)V
    .locals 3
    .parameter

    .prologue
    .line 383
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->m:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->startActivity(Landroid/content/Intent;)V

    .line 384
    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPhotoSet;)V
    .locals 6
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->l:Lcom/facebook/katana/model/FacebookPhotoSet;

    .line 171
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->e:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->l:Lcom/facebook/katana/model/FacebookPhotoSet;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->a(Lcom/facebook/katana/model/FacebookPhotoSet;)V

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPhotoSet;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->j:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->k:Ljava/util/Set;

    invoke-static {p0, v1}, Lcom/facebook/katana/service/method/PhotosGetPhotos;->a(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->i:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 187
    return-void
.end method

.method public static b(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-static {p1, p2}, Lcom/facebook/katana/model/FacebookPhotoSet;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->k:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->e:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/media/PhotoSetActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->h:J

    return-wide v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Lcom/facebook/katana/model/FacebookPhotoSet;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->l:Lcom/facebook/katana/model/FacebookPhotoSet;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 268
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 269
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f0300cf

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->setContentView(I)V

    .line 111
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 113
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "set_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->m:Ljava/lang/String;

    .line 115
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->i:Landroid/widget/GridView;

    .line 117
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->i:Landroid/widget/GridView;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->e:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    .line 119
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;

    invoke-direct {v0, p0, v3}, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;-><init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    .line 120
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 122
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->g()V

    .line 124
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->i:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->e:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->i:Landroid/widget/GridView;

    new-instance v1, Lcom/facebook/katana/activity/media/PhotoSetActivity$ScrollListener;

    invoke-direct {v1, p0, v3}, Lcom/facebook/katana/activity/media/PhotoSetActivity$ScrollListener;-><init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;B)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->i:Landroid/widget/GridView;

    new-instance v1, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemClickListener;

    invoke-direct {v1, p0, v3}, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemClickListener;-><init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;B)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->i:Landroid/widget/GridView;

    new-instance v1, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemContextualListener;

    invoke-direct {v1, p0, v3}, Lcom/facebook/katana/activity/media/PhotoSetActivity$ItemContextualListener;-><init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;B)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 128
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->i:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->f:Ljava/lang/String;

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 305
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    .line 306
    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0

    .line 310
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 323
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/model/FacebookPhoto;)V

    goto :goto_1

    .line 318
    :pswitch_2
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->h:J

    .line 319
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->showDialog(I)V

    goto :goto_1

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 329
    packed-switch p1, :pswitch_data_0

    .line 365
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 332
    :pswitch_0
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->h:J

    .line 333
    new-instance v5, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;-><init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;J)V

    .line 349
    const v0, 0x7f0b02ae

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v0, 0x7f0b02b0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0b03d7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b0264

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v8, v7

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 356
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 358
    const v1, 0x7f0b02b1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 360
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 137
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 138
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->g:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->l:Lcom/facebook/katana/model/FacebookPhotoSet;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->m:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookPhotoSet;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPhotoSet;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/model/FacebookPhotoSet;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->removeDialog(I)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity;->n:Ljava/lang/String;

    .line 157
    :cond_1
    return-void
.end method
