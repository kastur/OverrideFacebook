.class public Lcom/facebook/katana/webview/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/facebook/katana/webview/BaseWebView;->c()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/facebook/katana/webview/BaseWebView;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0}, Lcom/facebook/katana/webview/BaseWebView;->c()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/facebook/katana/webview/BaseWebView;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0}, Lcom/facebook/katana/webview/BaseWebView;->c()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/facebook/katana/webview/BaseWebView;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method protected static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/katana/webview/BaseWebView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/facebook/katana/webview/BaseWebView;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/facebook/katana/webview/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/webview/BaseWebView;->a:Ljava/lang/String;

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 99
    invoke-virtual {p0, v6}, Lcom/facebook/katana/webview/BaseWebView;->setHapticFeedbackEnabled(Z)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/facebook/katana/webview/BaseWebView;->setLongClickable(Z)V

    .line 102
    new-instance v0, Lcom/facebook/katana/webview/BaseWebView$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/webview/BaseWebView$1;-><init>(Lcom/facebook/katana/webview/BaseWebView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/BaseWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/webview/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 118
    const-string v0, "android_disable_webcache"

    invoke-static {p1, v0}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 119
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 128
    :try_start_0
    const-class v0, Landroid/webkit/CacheManager;

    const-string v2, "setCacheDisabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 130
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 131
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/katana/webview/BaseWebView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/facebook/katana/UserAgent;->a(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/facebook/katana/webview/BaseWebView;->b()V

    .line 142
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v2, "WebViewCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to disable cache:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/facebook/katana/webview/BaseWebView$BaseWebChromeClient;

    invoke-direct {v0}, Lcom/facebook/katana/webview/BaseWebView$BaseWebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/BaseWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 150
    return-void
.end method
