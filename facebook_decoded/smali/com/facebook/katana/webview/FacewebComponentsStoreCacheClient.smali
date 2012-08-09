.class Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient;
.super Ljava/lang/Object;
.source "FacewebComponentsStoreCache.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;",
        "Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 324
    :try_start_0
    new-instance v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    invoke-static {p1}, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;->b(Ljava/lang/String;)Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;-><init>(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-object v0

    .line 325
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 329
    invoke-static {}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a()Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_DISK:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    invoke-virtual {v0, p0, v2}, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->a(Landroid/content/Context;Lcom/facebook/katana/binding/ManagedDataStore$ClearType;)V

    .line 330
    new-instance v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    sget-object v2, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;->DESERIALIZATION_ERROR:Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;-><init>(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;",
            "Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 340
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 342
    if-nez v0, :cond_0

    .line 343
    new-instance v5, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    sget-object v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;->NO_SESSION_ERROR:Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;

    const-string v1, ""

    invoke-direct {v5, v0, v1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;-><init>(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;Ljava/lang/String;)V

    .line 344
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 369
    :goto_0
    monitor-exit p0

    return-object v0

    .line 347
    :cond_0
    :try_start_1
    new-instance v1, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient$1;-><init>(Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;Landroid/content/Context;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 369
    invoke-static {p1}, Lcom/facebook/katana/service/method/FacewebComponentsStoreFetcher;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-static {p1, p2}, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 307
    const/16 v0, 0xe10

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-class v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 307
    check-cast p1, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;

    invoke-static {p1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient;->a(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 307
    const/16 v0, 0xe10

    return v0
.end method

.method public synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    check-cast p2, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method
