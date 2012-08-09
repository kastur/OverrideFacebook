.class public Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "PhotosLegacyAdapterActivity.java"


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/binding/AppSessionListener;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->h:J

    return-wide v0
.end method

.method private a(J)V
    .locals 4
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->i:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "fb://album_faceweb/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f0300cf

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->setContentView(I)V

    .line 72
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    const-string v1, "owner"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->h:J

    .line 78
    const-string v1, "album"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->g:Ljava/lang/String;

    .line 79
    const-string v1, "faceweb"

    const-string v2, "open_method"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->i:Z

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    .line 126
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 95
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->g:Ljava/lang/String;

    iget-wide v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->h:J

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/service/method/FqlGetTaggedUserAlbum;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->h:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->b(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->finish()V

    .line 116
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->g:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookAlbum;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->m()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->m()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->a(J)V

    .line 105
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->finish()V

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;-><init>(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;B)V

    iput-object v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    .line 112
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v2, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->h:J

    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_0
.end method
