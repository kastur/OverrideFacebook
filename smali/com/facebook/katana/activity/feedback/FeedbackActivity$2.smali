.class Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V
    .locals 2
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->d(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V

    .line 369
    return-void
.end method

.method public final a(Z)V
    .locals 5
    .parameter

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->d(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v4}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v4

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->d(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v4}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v4

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
