.class Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;
.super Ljava/lang/Object;
.source "BookmarksGet.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/katana/model/BookmarksGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 339
    const/16 v0, 0x4b0

    return v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;)Landroid/util/Pair;
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;->a:Landroid/util/Pair;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {p0}, Lcom/facebook/katana/service/method/BookmarksGet;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 294
    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 302
    :try_start_0
    invoke-static {p1}, Lcom/facebook/katana/service/method/BookmarksGet;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    :goto_0
    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;->a:Landroid/util/Pair;

    .line 313
    return-object v0

    .line 303
    :catch_0
    move-exception v1

    .line 304
    invoke-static {}, Lcom/facebook/katana/service/method/BookmarksGet;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p2}, Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    const/16 v0, 0x4b0

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-class v0, Lcom/facebook/katana/service/method/BookmarksGet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 280
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-static {p1}, Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method
