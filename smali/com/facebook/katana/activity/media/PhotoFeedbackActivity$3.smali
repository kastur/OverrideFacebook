.class Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$3;
.super Ljava/lang/Object;
.source "PhotoFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$3;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 372
    return-void
.end method
