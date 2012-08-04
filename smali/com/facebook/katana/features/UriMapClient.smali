.class public abstract Lcom/facebook/katana/features/UriMapClient;
.super Ljava/lang/Object;
.source "UriMapClient.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/util/UriTemplateMap",
        "<",
        "Lcom/facebook/katana/IntentUriHandler$UriHandler;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Lcom/facebook/katana/IntentUriHandler$UriHandler;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/katana/util/UriTemplateMap",
            "<",
            "Lcom/facebook/katana/IntentUriHandler$UriHandler;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 43
    :try_start_0
    new-instance v0, Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-direct {v0}, Lcom/facebook/katana/service/method/FBJsonFactory;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 46
    new-instance v1, Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;

    invoke-direct {v1}, Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v4

    .line 85
    :goto_0
    return-object v0

    .line 53
    :cond_1
    check-cast v0, Ljava/util/Map;

    .line 55
    new-instance v3, Lcom/facebook/katana/util/UriTemplateMap;

    invoke-direct {v3}, Lcom/facebook/katana/util/UriTemplateMap;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/facebook/katana/features/UriMapClient;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_0 .. :try_end_0} :catch_3

    .line 62
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/facebook/katana/features/UriMapClient;->a(Ljava/lang/String;)Lcom/facebook/katana/IntentUriHandler$UriHandler;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/facebook/katana/util/UriTemplateMap;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/facebook/katana/util/UriTemplateMap$InvalidUriTemplateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 66
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/katana/features/UriMapClient;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid uri template: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw v0

    .line 83
    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_0

    .line 69
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_2 .. :try_end_2} :catch_3

    .line 74
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/features/UriMapClient;->a(Ljava/lang/String;)Lcom/facebook/katana/IntentUriHandler$UriHandler;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/katana/util/UriTemplateMap;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/facebook/katana/util/UriTemplateMap$InvalidUriTemplateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 75
    :catch_2
    move-exception v0

    .line 77
    :try_start_4
    invoke-virtual {p0}, Lcom/facebook/katana/features/UriMapClient;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid uri template: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 85
    :catch_3
    move-exception v0

    move-object v0, v4

    goto/16 :goto_0

    :cond_3
    move-object v0, v3

    .line 81
    goto/16 :goto_0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p2}, Lcom/facebook/katana/features/UriMapClient;->b(Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap;

    move-result-object v0

    return-object v0
.end method

.method public initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/Object;",
            "Lcom/facebook/katana/util/UriTemplateMap",
            "<",
            "Lcom/facebook/katana/IntentUriHandler$UriHandler;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 93
    new-instance v0, Lcom/facebook/katana/features/UriMapClient$1;

    invoke-direct {v0, p0, p3}, Lcom/facebook/katana/features/UriMapClient$1;-><init>(Lcom/facebook/katana/features/UriMapClient;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V

    .line 126
    invoke-interface {p3}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->c()Lcom/facebook/katana/util/TraceLogger;

    move-result-object v1

    const-string v2, "requesting project name %s/map %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/facebook/katana/features/UriMapClient;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/facebook/katana/features/UriMapClient;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-static {p1, v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 130
    if-nez v1, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/features/UriMapClient;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/katana/features/UriMapClient;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Lcom/facebook/katana/service/method/FqlGetUserServerSettings;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
