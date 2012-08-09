.class Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener$1;
.super Ljava/lang/Object;
.source "PhotoFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener$1;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener$1;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->onClickLike(Landroid/view/View;)V

    .line 168
    return-void
.end method
