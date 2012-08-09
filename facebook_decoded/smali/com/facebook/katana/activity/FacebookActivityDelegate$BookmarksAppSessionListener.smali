.class Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FacebookActivityDelegate.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->c()V

    .line 1679
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 1671
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1684
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1689
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v1

    iget v1, v1, Lcom/facebook/katana/activity/BookmarksAdapter;->c:I

    invoke-static {v0, p1, v1}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1696
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Landroid/graphics/Bitmap;)V

    .line 1698
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1702
    invoke-static {}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    :cond_1
    return-void

    .line 1691
    :catch_0
    move-exception v0

    .line 1692
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot create rounded corner bitmap"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1693
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot create rounded corner bitmap: OOM"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
