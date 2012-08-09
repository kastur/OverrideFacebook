.class public Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;
.super Ljava/lang/Object;
.source "LoggingConfigSettings.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;->a:Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;

    .line 79
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    const v0, 0xa8c0

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 3
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
            "Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient$1;

    invoke-direct {v0, p0, p3}, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient$1;-><init>(Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V

    .line 130
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 132
    if-nez v1, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const-string v2, "android_log_config"

    invoke-static {v1, p1, v2, p2, v0}, Lcom/facebook/katana/service/method/FqlGetUserServerSettings;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 90
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 98
    :try_start_0
    new-instance v1, Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-direct {v1}, Lcom/facebook/katana/service/method/FBJsonFactory;-><init>()V

    invoke-virtual {v1, p1}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;->a:Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;

    invoke-interface {v2, v1}, Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0, p2}, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;->a(Ljava/lang/String;)Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    const v0, 0xa8c0

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/facebook/katana/features/LoggingConfigSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;

    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;->a(Ljava/lang/String;Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;)I

    move-result v0

    return v0
.end method

.method public synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
