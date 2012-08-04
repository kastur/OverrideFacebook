.class public Lcom/facebook/katana/webview/FacebookAuthentication;
.super Ljava/lang/Object;
.source "FacebookAuthentication.java"


# static fields
.field public static final a:Ljava/lang/String;

.field protected static b:Z

.field protected static c:Z

.field protected static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/webview/FacebookAuthentication$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/katana/webview/FacebookAuthentication;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->a:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/webview/FacebookAuthentication;->c:Z

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method static synthetic a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-static {p0, v3}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 59
    const-class v1, Lcom/facebook/katana/webview/FacebookAuthentication;

    monitor-enter v1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    sget-object v2, Lcom/facebook/katana/webview/FacebookAuthentication;->d:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    sget-boolean v2, Lcom/facebook/katana/webview/FacebookAuthentication;->c:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_2

    .line 68
    :cond_1
    monitor-exit v1

    .line 102
    :goto_0
    return-void

    .line 71
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/webview/FacebookAuthentication;->c:Z

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->a:Ljava/lang/String;

    const-string v1, "authenticated -> false"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->e:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Ljava/lang/Object;)V

    .line 81
    new-instance v0, Lcom/facebook/katana/webview/BaseWebView;

    invoke-direct {v0, p0}, Lcom/facebook/katana/webview/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 94
    sput-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 96
    sget-object v0, Lcom/facebook/katana/webview/FacebookAuthentication;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/facebook/katana/webview/FacebookAuthentication$FacewebAuthenticationWebViewClient;

    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/webview/FacebookAuthentication$FacewebAuthenticationWebViewClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/util/FacebookPlatform;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/facebook/katana/webview/FacebookAuthentication;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 299
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 302
    const-string v3, "http"

    invoke-static {v2, v3}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https"

    invoke-static {v2, v3}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 308
    const-string v3, "m."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".facebook.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0, p1}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
