.class Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;
.super Ljava/lang/Object;
.source "PhotoFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 327
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->showDialog(I)V

    .line 331
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->c(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v4, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v4}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->d(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->a(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 337
    :cond_0
    return-void
.end method
