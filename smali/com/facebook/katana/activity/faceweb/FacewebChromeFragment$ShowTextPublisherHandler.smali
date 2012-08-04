.class public abstract Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;
.super Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;
.source "FacewebChromeFragment.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 1790
    invoke-direct {p0, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 1791
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/katana/webview/FacebookWebView;Landroid/widget/TextView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1875
    return-void
.end method

.method public a(Lcom/facebook/katana/webview/FacebookWebView;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$5;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$5;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1888
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1796
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v1

    .line 1797
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    if-nez v0, :cond_1

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    const v0, 0x7f0800f2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1804
    const v3, 0x7f0800ef

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1805
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1808
    const v3, 0x7f0800f0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1809
    new-instance v3, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$1;

    invoke-direct {v3, p0, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$1;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;Lcom/facebook/katana/webview/FacebookWebView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1829
    new-instance v3, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$2;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$2;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1839
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1840
    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$3;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1856
    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$4;

    invoke-direct {v1, p0, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler$4;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;Lcom/facebook/katana/webview/FacebookWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
