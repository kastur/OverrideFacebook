.class Lcom/facebook/katana/service/method/PageTopicsGet$PageTopicsManagedStoreClient;
.super Ljava/lang/Object;
.source "PageTopicsGet.java"

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
        "Lcom/facebook/katana/model/PageTopic;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
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
            "Lcom/facebook/katana/model/PageTopic;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 258
    const v0, 0x1e13380

    return v0
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
    .line 239
    invoke-static {p0}, Lcom/facebook/katana/service/method/PageTopicsGet;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 215
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/PageTopic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    :try_start_0
    invoke-static {p0}, Lcom/facebook/katana/service/method/PageTopicsGet;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    :goto_0
    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    :cond_0
    return-object v0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    const-string v2, "PageTopicsGet"

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
    .line 203
    invoke-static {p2}, Lcom/facebook/katana/service/method/PageTopicsGet$PageTopicsManagedStoreClient;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    const v0, 0x1e13380

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-class v0, Lcom/facebook/katana/service/method/PageTopicsGet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 203
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/katana/service/method/PageTopicsGet$PageTopicsManagedStoreClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/service/method/PageTopicsGet$PageTopicsManagedStoreClient;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-static {p1}, Lcom/facebook/katana/service/method/PageTopicsGet$PageTopicsManagedStoreClient;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method
