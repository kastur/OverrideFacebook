.class public Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "LegacyPhotoGalleryActivity.java"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/facebook/katana/binding/AppSession;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->m:Z

    .line 44
    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->n:Z

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->h:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const-string v0, "fb://photo/%1$d/%2$s/%3$s?action=%4$s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->i:J

    return-wide p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->f()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->m:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 152
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->i:J

    iget-wide v2, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->h:J

    invoke-static {v2, v3}, Lcom/facebook/katana/model/FacebookPhotoSet;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->finish()V

    .line 160
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->i:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 67
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 73
    const v0, 0x7f0300cc

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->setContentView(I)V

    .line 75
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    const-string v1, "photo"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->f:Ljava/lang/String;

    .line 79
    const-string v1, "album"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->e:Ljava/lang/String;

    .line 80
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    if-nez v0, :cond_3

    .line 88
    iput-wide v3, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->g:J

    .line 97
    :goto_1
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const v0, 0x7f0b02b4

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->finish()V

    .line 102
    :cond_1
    return-void

    .line 82
    :cond_2
    const-string v0, "owner"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v2, "album"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->e:Ljava/lang/String;

    .line 84
    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->f:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->g:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    iput-wide v3, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->g:J

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->l:Lcom/facebook/katana/binding/AppSession;

    .line 141
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 107
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 109
    invoke-static {p0, v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->l:Lcom/facebook/katana/binding/AppSession;

    .line 110
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->l:Lcom/facebook/katana/binding/AppSession;

    new-instance v1, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;

    invoke-direct {v1, p0, v7}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;-><init>(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;B)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 113
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookPhoto;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->i:J

    .line 116
    iput-boolean v6, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->m:Z

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookAlbum;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->h:J

    .line 126
    iput-boolean v6, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->n:Z

    .line 133
    :goto_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->f()V

    .line 134
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->l:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->e:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->f:Ljava/lang/String;

    aput-object v3, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-wide v4, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->g:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->j:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->l:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->g:J

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->e:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->k:Ljava/lang/String;

    goto :goto_1

    .line 131
    :cond_2
    iput-boolean v6, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->n:Z

    goto :goto_1
.end method
