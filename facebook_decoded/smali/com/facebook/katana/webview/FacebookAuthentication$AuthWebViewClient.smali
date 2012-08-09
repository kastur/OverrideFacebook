.class public Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FacebookAuthentication.java"


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lcom/facebook/katana/webview/FacebookAuthentication$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;->a:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;->b:Lcom/facebook/katana/webview/FacebookAuthentication$Callback;

    .line 126
    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "check_certs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;->a:Landroid/content/Context;

    const v1, 0x7f0b01e5

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 146
    :cond_2
    sget-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;->a:Landroid/content/Context;

    const v2, 0x7f0b01e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v3, "http"

    invoke-static {v1, v3}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https"

    invoke-static {v1, v3}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, ".facebook.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/login.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;->b:Lcom/facebook/katana/webview/FacebookAuthentication$Callback;

    invoke-static {v0, v1}, Lcom/facebook/katana/webview/FacebookAuthentication;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V

    .line 178
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
