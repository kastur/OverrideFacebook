.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$1;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/webview/FacebookWebView;

.field private synthetic b:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$1;->b:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;

    iput-object p2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$1;->a:Lcom/facebook/katana/webview/FacebookWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1813
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1815
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1816
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$1;->b:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$1;->a:Lcom/facebook/katana/webview/FacebookWebView;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;->a(Lcom/facebook/katana/webview/FacebookWebView;Landroid/widget/TextView;)V

    .line 1818
    new-array v0, v2, [C

    invoke-virtual {p1, v0, v2, v2}, Landroid/widget/TextView;->setText([CII)V

    .line 1821
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$1;->b:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 1824
    :cond_0
    return v2
.end method
