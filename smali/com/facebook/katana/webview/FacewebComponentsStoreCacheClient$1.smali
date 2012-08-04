.class Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FacewebComponentsStoreCache.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;Landroid/content/Context;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p2, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    iput-object p3, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->c:Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 353
    if-nez p2, :cond_0

    .line 354
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->c:Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;

    new-instance v5, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    sget-object v6, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;->UNKNOWN_ERROR:Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;

    invoke-direct {v5, v6, p1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;-><init>(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;Ljava/lang/String;)V

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    :goto_0
    return-void

    .line 358
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;->c()Ljava/lang/String;

    move-result-object v9

    .line 359
    iget-object v5, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    iget-object v6, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->b:Landroid/content/Context;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->c:Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;

    new-instance v10, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    invoke-direct {v10, p2}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;-><init>(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;)V

    invoke-interface/range {v5 .. v10}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 363
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;->c:Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;

    new-instance v5, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    sget-object v7, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;->SERIALIZATION_ERROR:Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;-><init>(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;Ljava/lang/String;)V

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
