.class Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;
.super Lcom/facebook/katana/service/method/FqlGetStream;
.source "FeedbackActivity.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private synthetic f:Lcom/facebook/katana/activity/feedback/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J[Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;->f:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    .line 319
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-wide v5, p6

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGetStream;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J[Ljava/lang/String;)V

    .line 321
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 327
    const/16 v0, 0xc8

    if-ne p5, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;->f:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost;

    invoke-static {v1, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Lcom/facebook/katana/model/FacebookPost;)Lcom/facebook/katana/model/FacebookPost;

    .line 329
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;->f:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->c(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)V

    .line 330
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;->f:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Z)V

    .line 336
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;->o:Landroid/content/Context;

    const v1, 0x7f0b034a

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 334
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;->f:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->finish()V

    goto :goto_0
.end method
