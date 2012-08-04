.class Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "LegacyPhotoGalleryActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;-><init>(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->d(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->e(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/model/FacebookPhoto;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    .line 204
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    .line 205
    iget-object v1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;J)J

    .line 206
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;Z)Z

    .line 207
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->c(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    const v1, 0x7f0b02b4

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 210
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->finish()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 173
    :cond_0
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    if-nez p4, :cond_2

    .line 174
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/model/FacebookAlbum;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_1

    .line 177
    iget-object v1, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->m()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;J)J

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;Z)Z

    .line 186
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->c(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;J)J

    .line 183
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    const v1, 0x7f0b02b4

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 189
    iget-object v0, p0, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity$AppListener;->a:Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;->finish()V

    goto :goto_0
.end method
