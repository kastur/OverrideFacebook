.class Lcom/facebook/katana/binding/ProfileImagesCache$4$1;
.super Ljava/lang/Object;
.source "ProfileImagesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/binding/ProfileImagesCache$4;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/ProfileImagesCache$4;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 318
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v0, v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->e:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-static {v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->b(Lcom/facebook/katana/binding/ProfileImagesCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-wide v1, v1, Lcom/facebook/katana/binding/ProfileImagesCache$4;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v0, v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->c:Lcom/facebook/katana/binding/ProfileImage;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v0, v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->c:Lcom/facebook/katana/binding/ProfileImage;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/ProfileImage;->b()V

    .line 323
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v0, v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->e:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-static {v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->c(Lcom/facebook/katana/binding/ProfileImagesCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4b

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v0, v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->e:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-static {v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->d(Lcom/facebook/katana/binding/ProfileImagesCache;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v0, v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->e:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-static {v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->c(Lcom/facebook/katana/binding/ProfileImagesCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-wide v1, v1, Lcom/facebook/katana/binding/ProfileImagesCache$4;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v2, v2, Lcom/facebook/katana/binding/ProfileImagesCache$4;->c:Lcom/facebook/katana/binding/ProfileImage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v0, v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->d:Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

    iget-object v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v1, v1, Lcom/facebook/katana/binding/ProfileImagesCache$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v2, v2, Lcom/facebook/katana/binding/ProfileImagesCache$4;->c:Lcom/facebook/katana/binding/ProfileImage;

    invoke-interface {v0, v1, v2}, Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;->a(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImage;)V

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v0, v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->e:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-static {v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->e(Lcom/facebook/katana/binding/ProfileImagesCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-wide v1, v1, Lcom/facebook/katana/binding/ProfileImagesCache$4;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v0, v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->e:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-static {v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v1, v1, Lcom/facebook/katana/binding/ProfileImagesCache$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-wide v2, v2, Lcom/facebook/katana/binding/ProfileImagesCache$4;->b:J

    iget-object v4, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v4, v4, Lcom/facebook/katana/binding/ProfileImagesCache$4;->c:Lcom/facebook/katana/binding/ProfileImage;

    iget-object v4, v4, Lcom/facebook/katana/binding/ProfileImage;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v0, v0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->e:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-static {v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->e(Lcom/facebook/katana/binding/ProfileImagesCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-wide v1, v1, Lcom/facebook/katana/binding/ProfileImagesCache$4;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;->a:Lcom/facebook/katana/binding/ProfileImagesCache$4;

    iget-object v2, v2, Lcom/facebook/katana/binding/ProfileImagesCache$4;->c:Lcom/facebook/katana/binding/ProfileImage;

    iget-object v2, v2, Lcom/facebook/katana/binding/ProfileImage;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
