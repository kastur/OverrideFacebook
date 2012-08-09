.class Lcom/facebook/katana/binding/AppSession$1;
.super Ljava/lang/Object;
.source "AppSession.java"

# interfaces
.implements Lcom/facebook/katana/binding/ProfileImagesCache$ProfileImagesContainerListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/binding/AppSession;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/AppSession;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    .line 439
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v0}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v0}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookStatus;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookStatus;->a()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    iget-wide v2, p2, Lcom/facebook/katana/binding/ProfileImage;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v0}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v2}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookStatus;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v2}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession;)I

    move-result v2

    invoke-virtual {p2}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, p1, v0, v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Lcom/facebook/katana/model/FacebookStatus;ILandroid/graphics/Bitmap;)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->a:Lcom/facebook/katana/util/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/katana/util/ReentrantCallback;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 455
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$1;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/binding/AppSessionListener;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    goto :goto_0

    .line 457
    :cond_1
    return-void
.end method
