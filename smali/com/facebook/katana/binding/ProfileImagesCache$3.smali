.class Lcom/facebook/katana/binding/ProfileImagesCache$3;
.super Ljava/lang/Object;
.source "ProfileImagesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:J

.field private synthetic c:Lcom/facebook/katana/binding/ProfileImagesCache;


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$3;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$3;->b:J

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-nez v0, :cond_0

    .line 276
    const-string v0, "ProfileImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadKnownURL: did not get url for uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/facebook/katana/binding/ProfileImagesCache$3;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$3;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v2, p0, Lcom/facebook/katana/binding/ProfileImagesCache$3;->a:Landroid/content/Context;

    new-instance v3, Lcom/facebook/katana/binding/ProfileImage;

    iget-wide v4, p0, Lcom/facebook/katana/binding/ProfileImagesCache$3;->b:J

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/facebook/katana/binding/ProfileImage;-><init>(JLjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$3;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-static {v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImage;Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;)V

    goto :goto_0
.end method
