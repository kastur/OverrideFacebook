.class Lcom/facebook/katana/model/PhotoSetDataStoreClient;
.super Ljava/lang/Object;
.source "FacebookPhotoSet.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/katana/model/FacebookPhotoSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/facebook/katana/model/FacebookPhotoSet;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookPhotoSet;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p0, p1, p2}, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 155
    return-object p0
.end method


# virtual methods
.method public synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-static {}, Lcom/facebook/katana/model/PhotoSetDataStoreClient;->a()Lcom/facebook/katana/model/FacebookPhotoSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    const/16 v0, 0xe10

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-class v0, Lcom/facebook/katana/model/FacebookPhotoSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 142
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/katana/model/PhotoSetDataStoreClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/facebook/katana/model/PhotoSetDataStoreClient;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method
