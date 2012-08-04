.class Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 435
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 437
    iget-object v7, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->d(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v4}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v4

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v6}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->f(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/model/FacebookProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->showDialog(I)V

    .line 441
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 443
    :cond_0
    return-void
.end method
