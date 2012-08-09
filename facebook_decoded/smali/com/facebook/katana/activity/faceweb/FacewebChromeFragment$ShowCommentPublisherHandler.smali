.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;
.super Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private synthetic f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1897
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 1898
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    .line 1899
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "callback"

    invoke-interface {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->d:Ljava/lang/String;

    .line 1905
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "post_id"

    invoke-interface {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->e:Ljava/lang/String;

    .line 1906
    return-void
.end method

.method protected final a(Lcom/facebook/katana/webview/FacebookWebView;Landroid/widget/TextView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1937
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;->a(Lcom/facebook/katana/webview/FacebookWebView;Landroid/widget/TextView;)V

    .line 1938
    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 1939
    invoke-static {v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    .line 1940
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1941
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1943
    :try_start_0
    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1944
    const-string v0, "post_id"

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1948
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1949
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1951
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->e(I)V

    .line 1952
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Lcom/facebook/katana/webview/FacebookWebView;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 1954
    :cond_0
    return-void

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inconceivable exception"

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->f(I)V

    .line 1961
    if-eqz p3, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0343

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 1966
    :goto_0
    return-void

    .line 1965
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;->a(Lcom/facebook/katana/webview/FacebookWebView;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v0

    .line 1912
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    if-nez v1, :cond_1

    .line 1932
    :cond_0
    :goto_0
    return-void

    .line 1916
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowTextPublisherHandler;->b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V

    .line 1918
    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1919
    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;

    .line 1921
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v1

    .line 1922
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1923
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Landroid/app/Activity;Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/AppSessionListener;

    move-result-object v0

    .line 1925
    invoke-virtual {v1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1927
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 1930
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->f:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
