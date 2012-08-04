.class Lcom/facebook/katana/activity/feedback/FeedbackActivity$4;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$4;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$4;->a:Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 426
    return-void
.end method
