.class Lcom/facebook/katana/activity/stream/StreamActivity$7;
.super Ljava/lang/Object;
.source "StreamActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/stream/StreamActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$7;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/widget/TextView;->getImeActionId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$7;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->l()V

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
