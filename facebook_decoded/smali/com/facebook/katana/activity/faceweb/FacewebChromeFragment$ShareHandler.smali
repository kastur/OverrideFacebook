.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1736
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->f(I)V

    .line 1771
    if-eqz p3, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0359

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 1775
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1747
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1748
    invoke-static {v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    .line 1749
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1750
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1752
    :try_start_0
    const-string v2, "action"

    const-string v3, "didPostStatus"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1753
    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1760
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->e(I)V

    .line 1761
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->j(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p0}, Lcom/facebook/katana/webview/FacebookWebView;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 1764
    :cond_0
    return-void

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inconceivable exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
