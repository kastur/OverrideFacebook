.class Lcom/facebook/katana/util/WebPageCache$1;
.super Ljava/lang/Object;
.source "WebPageCache.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;


# instance fields
.field private synthetic a:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/facebook/katana/util/WebPageCache;


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/util/WebPageCache$1;->a:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener;

    sget-object v1, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;->EMPTY_HTML:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    invoke-interface {v0}, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener;->a()V

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v0, "__fb_fw_invalid_page__"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/facebook/katana/util/WebPageCache$1;->a:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener;

    sget-object v1, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;->NOT_FACEWEB_PAGE:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    invoke-interface {v0}, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener;->a()V

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {p4}, Lcom/facebook/katana/util/WebPageCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/facebook/katana/util/WebPageCache$1;->d:Lcom/facebook/katana/util/WebPageCache;

    iget-object v2, p0, Lcom/facebook/katana/util/WebPageCache$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/katana/util/WebPageCache$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/katana/util/WebPageCache;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
