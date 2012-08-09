.class Lcom/facebook/katana/activity/feedback/FeedbackAdapter$2;
.super Ljava/lang/Object;
.source "FeedbackAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;

.field private synthetic b:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/feedback/FeedbackAdapter;Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$2;->b:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    iput-object p2, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$2;->b:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-static {v1, v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a(Lcom/facebook/katana/activity/feedback/FeedbackAdapter;Z)Z

    .line 214
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$2;->b:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->notifyDataSetChanged()V

    .line 215
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$2;->a:Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$2;->b:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a(Lcom/facebook/katana/activity/feedback/FeedbackAdapter;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost;->g()Lcom/facebook/katana/model/FacebookPost$Likes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPost$Likes;->b()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;->a(Z)V

    .line 216
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
