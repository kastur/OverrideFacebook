.class Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;
.super Ljava/lang/Object;
.source "FeedFilterPickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;->c:Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;

    iput p2, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;->a:I

    iput-object p3, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;->c:Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->a()V

    .line 76
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;->c:Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->E()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v1

    .line 77
    if-nez v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;->c:Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->a(Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;->c:Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->a(Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    iget v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;->a:I

    if-eq v0, p2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;->c:Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;->a(Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/NewsFeedToggleOption;

    iget-object v0, v0, Lcom/facebook/katana/model/NewsFeedToggleOption;->script:Ljava/lang/String;

    .line 87
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/webview/FacewebWebView;->b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/FeedFilterPickerDialogFragment$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/webview/FacewebWebView;->b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    goto :goto_0
.end method
