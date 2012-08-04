.class Lcom/facebook/katana/activity/stream/StreamActivity$3;
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
    .line 264
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$3;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

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
    .line 271
    invoke-virtual {p1}, Landroid/widget/TextView;->getImeActionId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$3;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->x()V

    .line 274
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
