.class Lcom/facebook/katana/binding/ProfileImagesCache$4;
.super Ljava/lang/Object;
.source "ProfileImagesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lcom/facebook/katana/binding/ProfileImage;

.field final synthetic d:Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

.field final synthetic e:Lcom/facebook/katana/binding/ProfileImagesCache;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/content/Context;JLcom/facebook/katana/binding/ProfileImage;Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->e:Lcom/facebook/katana/binding/ProfileImagesCache;

    iput-object p2, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->b:J

    iput-object p5, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->c:Lcom/facebook/katana/binding/ProfileImage;

    iput-object p6, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->d:Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->b:J

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->b(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->c:Lcom/facebook/katana/binding/ProfileImage;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/binding/ProfileImage;->a(Landroid/graphics/Bitmap;)V

    .line 314
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$4;->e:Lcom/facebook/katana/binding/ProfileImagesCache;

    invoke-static {v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->f(Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/WorkerThread;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/binding/ProfileImagesCache$4$1;-><init>(Lcom/facebook/katana/binding/ProfileImagesCache$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method
