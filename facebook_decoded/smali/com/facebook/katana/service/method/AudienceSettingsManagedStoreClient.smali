.class Lcom/facebook/katana/service/method/AudienceSettingsManagedStoreClient;
.super Ljava/lang/Object;
.source "AudienceSettings.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Lcom/facebook/katana/model/PrivacySetting$Category;",
        "Lcom/facebook/katana/service/method/AudienceSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/facebook/katana/service/method/AudienceSettings;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot deserialize AudienceSettings"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/model/PrivacySetting$Category;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/model/PrivacySetting$Category;",
            "Lcom/facebook/katana/service/method/AudienceSettings;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {p0, p1, p2}, Lcom/facebook/katana/service/method/AudienceSettings;->a(Landroid/content/Context;Lcom/facebook/katana/model/PrivacySetting$Category;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/katana/model/PrivacySetting$Category;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/facebook/katana/model/PrivacySetting$Category;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-static {}, Lcom/facebook/katana/service/method/AudienceSettingsManagedStoreClient;->a()Lcom/facebook/katana/service/method/AudienceSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    const/16 v0, 0x12c

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-class v0, Lcom/facebook/katana/service/method/AudienceSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 193
    check-cast p1, Lcom/facebook/katana/model/PrivacySetting$Category;

    invoke-static {p1}, Lcom/facebook/katana/service/method/AudienceSettingsManagedStoreClient;->a(Lcom/facebook/katana/model/PrivacySetting$Category;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    check-cast p2, Lcom/facebook/katana/model/PrivacySetting$Category;

    invoke-static {p1, p2, p3}, Lcom/facebook/katana/service/method/AudienceSettingsManagedStoreClient;->a(Landroid/content/Context;Lcom/facebook/katana/model/PrivacySetting$Category;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method
