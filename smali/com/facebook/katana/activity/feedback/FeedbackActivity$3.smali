.class Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 406
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 407
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 408
    iget-object v7, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->d(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v4}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v4

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v6}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->f(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/model/FacebookProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 415
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
