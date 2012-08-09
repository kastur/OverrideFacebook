.class Lcom/facebook/katana/service/method/NotificationsGet$NotificationsManagedStoreClient;
.super Ljava/lang/Object;
.source "NotificationsGet.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/katana/model/FacebookNotifications;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookNotifications;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 154
    :try_start_0
    invoke-static {p1, p0}, Lcom/facebook/katana/service/method/NotificationsGet;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    new-instance v0, Lcom/facebook/katana/model/FacebookNotifications;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookNotifications;-><init>()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
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
    const/4 v1, 0x0

    .line 165
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p0, v1, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 147
    return-object p0
.end method


# virtual methods
.method public synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-static {p1, p2}, Lcom/facebook/katana/service/method/NotificationsGet$NotificationsManagedStoreClient;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookNotifications;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    const/16 v0, 0x12c

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-class v0, Lcom/facebook/katana/service/method/NotificationsGet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/katana/service/method/NotificationsGet$NotificationsManagedStoreClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    const/16 v0, 0xe10

    return v0
.end method

.method public synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-static {p1}, Lcom/facebook/katana/service/method/NotificationsGet$NotificationsManagedStoreClient;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method
