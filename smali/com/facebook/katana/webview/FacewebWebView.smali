.class public Lcom/facebook/katana/webview/FacewebWebView;
.super Lcom/facebook/katana/webview/FacebookWebView;
.source "FacewebWebView.java"


# static fields
.field private static h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/WeakRef",
            "<",
            "Lcom/facebook/katana/webview/FacewebWebView;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected d:Lcom/facebook/katana/webview/FacebookAuthentication$Callback;

.field protected e:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;

.field protected f:Z

.field protected g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

.field private i:Z

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/webview/FacewebPalCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/FacebookWebView;-><init>(Landroid/content/Context;)V

    .line 122
    iput-boolean v1, p0, Lcom/facebook/katana/webview/FacewebWebView;->j:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->k:Ljava/util/List;

    .line 127
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView$PageState;->PAGE_STATE_UINITIALIZED:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    iput-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    .line 453
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView$PageState;->PAGE_STATE_UINITIALIZED:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    iput-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->g:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    .line 454
    iput-object p2, p0, Lcom/facebook/katana/webview/FacewebWebView;->e:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;

    .line 455
    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView$7;

    invoke-direct {v0, p0}, Lcom/facebook/katana/webview/FacewebWebView$7;-><init>(Lcom/facebook/katana/webview/FacewebWebView;)V

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->f:Z

    .line 473
    iput-boolean v1, p0, Lcom/facebook/katana/webview/FacewebWebView;->i:Z

    .line 475
    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView$8;

    invoke-direct {v0, p0}, Lcom/facebook/katana/webview/FacewebWebView$8;-><init>(Lcom/facebook/katana/webview/FacewebWebView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacewebWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 486
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;)Lcom/facebook/katana/webview/FacewebWebView;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView;

    invoke-direct {v0, p0, p1}, Lcom/facebook/katana/webview/FacewebWebView;-><init>(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;)V

    return-object v0
.end method

.method protected static a(Lcom/facebook/katana/webview/FacewebWebView;)V
    .locals 4
    .parameter

    .prologue
    .line 398
    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    monitor-enter v1

    .line 399
    :try_start_0
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    new-instance v2, Lcom/facebook/katana/util/WeakRef;

    invoke-direct {v2, p0}, Lcom/facebook/katana/util/WeakRef;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    const-string v0, "FacewebWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mRegisteredWebviews has "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 191
    :cond_0
    if-eqz p2, :cond_1

    .line 192
    invoke-virtual {p0, p1}, Lcom/facebook/katana/webview/FacewebWebView;->setMobilePage(Ljava/lang/String;)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->b:Landroid/content/Context;

    new-instance v1, Lcom/facebook/katana/webview/FacewebWebView$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/webview/FacewebWebView$1;-><init>(Lcom/facebook/katana/webview/FacewebWebView;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;)V

    .line 226
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/katana/Constants$URL;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacewebWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/webview/FacewebWebView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->k:Ljava/util/List;

    return-object v0
.end method

.method private static c(Lcom/facebook/katana/webview/FacewebWebView;)V
    .locals 4
    .parameter

    .prologue
    .line 409
    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    monitor-enter v1

    .line 410
    :try_start_0
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    new-instance v2, Lcom/facebook/katana/util/WeakRef;

    invoke-direct {v2, p0}, Lcom/facebook/katana/util/WeakRef;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 411
    const-string v0, "FacewebWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mRegisteredWebviews has "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static g()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/webview/FacewebWebView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 422
    sget-object v2, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    monitor-enter v2

    .line 423
    :try_start_0
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    .line 424
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 426
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/WeakRef;

    .line 428
    invoke-virtual {v0}, Lcom/facebook/katana/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacewebWebView;

    .line 430
    if-nez v0, :cond_0

    .line 432
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 436
    :cond_0
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_1
    const-string v0, "FacewebWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mRegisteredWebviews gc\'ed from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/webview/FacewebWebView;->h:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    return-object v1
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 274
    invoke-super {p0, p1}, Lcom/facebook/katana/webview/FacebookWebView;->a(Landroid/content/Context;)V

    .line 276
    invoke-virtual {p0}, Lcom/facebook/katana/webview/FacewebWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 279
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/katana/webview/FacewebWebView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/facebook/katana/UserAgent;->a(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 286
    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView$2;

    invoke-direct {v0, p0}, Lcom/facebook/katana/webview/FacewebWebView$2;-><init>(Lcom/facebook/katana/webview/FacewebWebView;)V

    iput-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->d:Lcom/facebook/katana/webview/FacebookAuthentication$Callback;

    .line 305
    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView;->d:Lcom/facebook/katana/webview/FacebookAuthentication$Callback;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewClient;-><init>(Lcom/facebook/katana/webview/FacewebWebView;Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacewebWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 306
    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebGeolocationWebChromeClient;

    invoke-direct {v0, p0}, Lcom/facebook/katana/webview/FacewebWebView$FacewebGeolocationWebChromeClient;-><init>(Lcom/facebook/katana/webview/FacewebWebView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacewebWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 308
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 310
    const-string v1, "resetCache"

    new-instance v2, Lcom/facebook/katana/webview/FacewebWebView$3;

    invoke-direct {v2, p0, p1}, Lcom/facebook/katana/webview/FacewebWebView$3;-><init>(Lcom/facebook/katana/webview/FacewebWebView;Landroid/content/Context;)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 341
    const-string v1, "startSyncFriends"

    new-instance v2, Lcom/facebook/katana/webview/FacewebWebView$4;

    invoke-direct {v2, p0}, Lcom/facebook/katana/webview/FacewebWebView$4;-><init>(Lcom/facebook/katana/webview/FacewebWebView;)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 351
    const-string v1, "setRootVersion"

    new-instance v2, Lcom/facebook/katana/webview/FacewebWebView$5;

    invoke-direct {v2, p0}, Lcom/facebook/katana/webview/FacewebWebView$5;-><init>(Lcom/facebook/katana/webview/FacewebWebView;)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 366
    const-string v1, "reloadCurrent"

    new-instance v2, Lcom/facebook/katana/webview/FacewebWebView$6;

    invoke-direct {v2, p0}, Lcom/facebook/katana/webview/FacewebWebView$6;-><init>(Lcom/facebook/katana/webview/FacewebWebView;)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 372
    const-string v1, "broadcastScript"

    new-instance v2, Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler;

    invoke-direct {v2, p0, v0}, Lcom/facebook/katana/webview/FacewebWebView$BroadcastScriptHandler;-><init>(Lcom/facebook/katana/webview/FacewebWebView;Landroid/os/Handler;)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 373
    return-void
.end method

.method protected final a(Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;)V
    .locals 3
    .parameter

    .prologue
    .line 689
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->NETWORK_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    if-ne p1, v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView;->b:Landroid/content/Context;

    const v2, 0x7f0b01e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->AUTHENTICATION_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    if-ne p1, v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 693
    if-eqz v0, :cond_0

    .line 694
    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->h(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 235
    invoke-static {p0}, Lcom/facebook/katana/webview/FacewebWebView;->c(Lcom/facebook/katana/webview/FacewebWebView;)V

    .line 236
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->e:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$PageState;->PAGE_STATE_UINITIALIZED:Lcom/facebook/katana/webview/FacewebWebView$PageState;

    invoke-interface {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;->a(Lcom/facebook/katana/webview/FacewebWebView$PageState;)V

    .line 237
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->i:Z

    .line 143
    iget-boolean v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->c:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/facebook/katana/webview/FacewebWebView;->c(Lcom/facebook/katana/webview/FacewebWebView;)V

    .line 150
    invoke-super {p0}, Lcom/facebook/katana/webview/FacebookWebView;->destroy()V

    .line 151
    return-void
.end method

.method public final e()V
    .locals 6

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/facebook/katana/webview/FacewebWebView;->c()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "fb4ar"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Z)V

    .line 261
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 265
    invoke-super {p0}, Lcom/facebook/katana/webview/FacebookWebView;->reload()V

    .line 266
    return-void
.end method

.method public final declared-synchronized h()V
    .locals 3

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 504
    :goto_0
    monitor-exit p0

    return-void

    .line 500
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacewebPalCall;

    .line 501
    iget-object v2, p0, Lcom/facebook/katana/webview/FacewebWebView;->b:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/katana/webview/FacewebWebView;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebPalCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 503
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized i()V
    .locals 1

    .prologue
    .line 511
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->j:Z

    .line 512
    invoke-virtual {p0}, Lcom/facebook/katana/webview/FacewebWebView;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 706
    const-string v0, "(function(){try {if (window.fwHaveLoadedPage && fwHaveLoadedPage()) {return \'1\';}} catch (e) {return \'0\';}})()"

    new-instance v1, Lcom/facebook/katana/webview/FacewebWebView$9;

    invoke-direct {v1, p0}, Lcom/facebook/katana/webview/FacewebWebView$9;-><init>(Lcom/facebook/katana/webview/FacewebWebView;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)Ljava/lang/String;

    .line 730
    return-void
.end method

.method protected final k()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 734
    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacewebWebView;->setVerticalScrollBarEnabled(Z)V

    .line 735
    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacewebWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 736
    return-void
.end method

.method protected final l()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 740
    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacewebWebView;->setVerticalScrollBarEnabled(Z)V

    .line 741
    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/FacewebWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 742
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/facebook/katana/webview/FacewebWebView;->i:Z

    if-nez v0, :cond_0

    .line 160
    invoke-super {p0, p1}, Lcom/facebook/katana/webview/FacebookWebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method
