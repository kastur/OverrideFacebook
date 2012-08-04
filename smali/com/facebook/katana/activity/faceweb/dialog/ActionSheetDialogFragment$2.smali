.class Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$2;
.super Ljava/lang/Object;
.source "ActionSheetDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$2;->a:Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$2;->a:Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->a()V

    .line 76
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$2;->a:Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->E()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v1

    .line 77
    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$2;->a:Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->a(Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$2;->a:Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->a(Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment$2;->a:Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;->a(Lcom/facebook/katana/activity/faceweb/dialog/ActionSheetDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/faceweb/ActionSheetButton;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/ActionSheetButton;->callback:Ljava/lang/String;

    .line 84
    if-eqz v0, :cond_0

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/webview/FacewebWebView;->b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    goto :goto_0
.end method
