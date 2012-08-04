.class public Lcom/facebook/orca/photos/view/PhotoViewActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "PhotoViewActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Landroid/widget/Gallery;

.field private f:Lcom/facebook/orca/photos/view/PhotoGalleryAdapter;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/view/GestureDetector;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private p:Lcom/facebook/orca/threads/Message;

.field private final q:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final r:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    .line 106
    new-instance v0, Lcom/facebook/orca/photos/view/PhotoViewActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity$1;-><init>(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->q:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 138
    new-instance v0, Lcom/facebook/orca/photos/view/PhotoViewActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity$2;-><init>(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->r:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/Gallery;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->e:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Lcom/facebook/orca/photos/tiles/UserTileView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->k:Lcom/facebook/orca/photos/tiles/UserTileView;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Lcom/facebook/orca/threads/ThreadDateUtil;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->o:Lcom/facebook/orca/threads/ThreadDateUtil;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->e:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/view/PhotoMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/view/PhotoMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 167
    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 174
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->i()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->o:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 59
    sget v0, Lcom/facebook/orca/R$layout;->orca_photo_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 62
    const-string v0, "imageData"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/ImageAttachmentData;

    .line 63
    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->finish()V

    .line 104
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v1, "message"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "message"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    iput-object v1, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->p:Lcom/facebook/orca/threads/Message;

    .line 72
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 74
    const-string v1, "imageAttachments"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    const-string v1, "imageAttachments"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/ImageAttachmentData;

    .line 79
    new-instance v6, Lcom/facebook/orca/photos/view/PhotoMessageItem;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->b()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->p:Lcom/facebook/orca/threads/Message;

    invoke-direct {v6, v7, v8}, Lcom/facebook/orca/photos/view/PhotoMessageItem;-><init>(Landroid/net/Uri;Lcom/facebook/orca/threads/Message;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentData;->b()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    .line 83
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 86
    :cond_3
    new-instance v1, Lcom/facebook/orca/photos/view/PhotoMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentData;->b()Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/facebook/orca/photos/view/PhotoMessageItem;-><init>(Landroid/net/Uri;Lcom/facebook/orca/threads/Message;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 89
    :cond_4
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->r:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->i:Landroid/view/GestureDetector;

    .line 91
    sget v0, Lcom/facebook/orca/R$id;->gallery:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->e:Landroid/widget/Gallery;

    .line 92
    new-instance v0, Lcom/facebook/orca/photos/view/PhotoGalleryAdapter;

    invoke-direct {v0, p0, v4}, Lcom/facebook/orca/photos/view/PhotoGalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->f:Lcom/facebook/orca/photos/view/PhotoGalleryAdapter;

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->e:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->f:Lcom/facebook/orca/photos/view/PhotoGalleryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->e:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->q:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    sget v0, Lcom/facebook/orca/R$id;->message_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->g:Landroid/widget/RelativeLayout;

    .line 96
    sget v0, Lcom/facebook/orca/R$id;->message_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->j:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/facebook/orca/R$id;->message_user_tile:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->k:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 98
    sget v0, Lcom/facebook/orca/R$id;->message_user:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->l:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/facebook/orca/R$id;->message_time:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->m:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/facebook/orca/R$id;->photo_count_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->n:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/facebook/orca/R$id;->photo_count_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->h:Landroid/widget/FrameLayout;

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->e:Landroid/widget/Gallery;

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->i:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "photo"

    return-object v0
.end method
