.class Lcom/facebook/katana/activity/feedback/FeedbackAdapter$1;
.super Ljava/lang/Object;
.source "FeedbackAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/feedback/FeedbackAdapter;Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p2, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$1;->a:Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;

    .line 204
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$1;->a:Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;

    invoke-interface {v1, v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;->a(Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V

    .line 205
    return-void
.end method
