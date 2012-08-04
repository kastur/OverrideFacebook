.class public Lcom/facebook/katana/webview/FacebookAuthentication$FacewebAuthenticationWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FacebookAuthentication.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/facebook/katana/webview/FacebookAuthentication$FacewebAuthenticationWebViewClient;->a:Landroid/content/Context;

    .line 201
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/webview/FacebookAuthentication$FacewebAuthenticationWebViewClient;->b:Ljava/lang/String;

    .line 203
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    .line 261
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/webview/FacebookAuthentication$FacewebAuthenticationWebViewClient;->b:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/facebook/katana/webview/FacebookAuthentication;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    sget-object v1, Lcom/facebook/katana/webview/FacebookAuthentication;->a:Ljava/lang/String;

    const-string v2, "authenticated -> true"

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sput-boolean v0, Lcom/facebook/katana/webview/FacebookAuthentication;->b:Z

    move v1, v0

    .line 271
    :cond_0
    const-class v2, Lcom/facebook/katana/webview/FacebookAuthentication;

    monitor-enter v2

    .line 272
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/facebook/katana/webview/FacebookAuthentication;->c:Z

    .line 273
    sget-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->d:Ljava/util/Set;

    .line 274
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/facebook/katana/webview/FacebookAuthentication;->d:Ljava/util/Set;

    .line 275
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacebookAuthentication$Callback;

    .line 278
    if-eqz v1, :cond_1

    .line 279
    invoke-interface {v0}, Lcom/facebook/katana/webview/FacebookAuthentication$Callback;->a()V

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 281
    :cond_1
    invoke-interface {v0}, Lcom/facebook/katana/webview/FacebookAuthentication$Callback;->b()V

    goto :goto_0

    .line 284
    :cond_2
    invoke-static {}, Lcom/facebook/katana/webview/FacebookAuthentication;->a()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 285
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/katana/webview/FacebookAuthentication;->a(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 286
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    sget-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authentication error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-class v1, Lcom/facebook/katana/webview/FacebookAuthentication;

    monitor-enter v1

    .line 239
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/facebook/katana/webview/FacebookAuthentication;->c:Z

    .line 240
    sget-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->d:Ljava/util/Set;

    .line 241
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/facebook/katana/webview/FacebookAuthentication;->d:Ljava/util/Set;

    .line 242
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacebookAuthentication$Callback;

    .line 245
    invoke-interface {v0}, Lcom/facebook/katana/webview/FacebookAuthentication$Callback;->c()V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 247
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookAuthentication$FacewebAuthenticationWebViewClient;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "check_certs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookAuthentication$FacewebAuthenticationWebViewClient;->a:Landroid/content/Context;

    const v1, 0x7f0b01e5

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 223
    :cond_2
    sget-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacebookAuthentication$FacewebAuthenticationWebViewClient;->a:Landroid/content/Context;

    const v2, 0x7f0b01e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
