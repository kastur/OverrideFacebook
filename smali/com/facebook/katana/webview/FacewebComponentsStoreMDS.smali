.class Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;
.super Lcom/facebook/katana/binding/SimpleManagedDataStore;
.source "FacewebComponentsStoreCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/katana/binding/SimpleManagedDataStore",
        "<",
        "Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;",
        "Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient;

    invoke-direct {v0}, Lcom/facebook/katana/webview/FacewebComponentsStoreCacheClient;-><init>()V

    sget-object v1, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST_BY_KEY:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->b:Ljava/util/Map;

    .line 211
    return-void
.end method

.method private a(Landroid/content/Context;ZLcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;Ljava/lang/String;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    const/4 v3, 0x0

    .line 268
    if-eqz p2, :cond_0

    .line 270
    invoke-static {p5}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p5}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;->b()Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 273
    new-instance v3, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;

    invoke-virtual {p3}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;->b()Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/webview/MFacewebVersion;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 282
    invoke-super/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 287
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    if-nez v0, :cond_2

    .line 303
    :cond_1
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 295
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;

    .line 296
    if-eqz p2, :cond_3

    .line 297
    invoke-virtual {p5}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;->b()Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;->a(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;)V

    goto :goto_0

    .line 299
    :cond_3
    invoke-virtual {p5}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;->a()Lcom/facebook/katana/util/Tuple;

    move-result-object v1

    .line 300
    iget-object v0, v1, Lcom/facebook/katana/util/Tuple;->a:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;

    iget-object v1, v1, Lcom/facebook/katana/util/Tuple;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;->a(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d()Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Don\'t call me directly"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;)Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 225
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    monitor-exit p0

    move-object v0, v1

    .line 251
    :goto_0
    return-object v0

    .line 234
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v2, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->b:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    .line 240
    if-eqz v0, :cond_1

    .line 245
    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    move-object v0, v1

    .line 251
    goto :goto_0
.end method

.method public final synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-static {}, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->d()Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    move-object v3, p3

    check-cast v3, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;

    move-object v5, p5

    check-cast v5, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->a(Landroid/content/Context;ZLcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;Ljava/lang/String;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;)V

    return-void
.end method
