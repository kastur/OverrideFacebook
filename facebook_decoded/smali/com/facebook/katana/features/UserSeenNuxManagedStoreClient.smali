.class Lcom/facebook/katana/features/UserSeenNuxManagedStoreClient;
.super Ljava/lang/Object;
.source "UserSeenNux.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Lcom/facebook/katana/features/UserSeenNux$Project;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/facebook/katana/features/UserSeenNux;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "user_seen_nux"

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/features/UserSeenNux$Project;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/features/UserSeenNux$Project;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0, p1, p2}, Lcom/facebook/katana/service/method/FqlGetUserSeenNux;->a(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {p2}, Lcom/facebook/katana/features/UserSeenNuxManagedStoreClient;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    const/16 v0, 0xe10

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/facebook/katana/features/UserSeenNux;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-static {}, Lcom/facebook/katana/features/UserSeenNuxManagedStoreClient;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    const/16 v0, 0xe10

    return v0
.end method

.method public synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    check-cast p2, Lcom/facebook/katana/features/UserSeenNux$Project;

    invoke-static {p1, p2, p3}, Lcom/facebook/katana/features/UserSeenNuxManagedStoreClient;->a(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
