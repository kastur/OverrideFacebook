.class Lcom/facebook/katana/features/composer/MinorStatusClient;
.super Ljava/lang/Object;
.source "MinorStatus.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Boolean;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const v0, 0x93a80

    .line 105
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2a30

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Boolean;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-static {p2}, Lcom/facebook/katana/features/composer/MinorStatusClient;->a(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "We\'re using this as a tristate."
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 62
    :try_start_0
    new-instance v1, Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-direct {v1}, Lcom/facebook/katana/service/method/FBJsonFactory;-><init>()V

    invoke-virtual {v1, p0}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 63
    const-class v2, Lcom/facebook/katana/model/MinorStatusModel;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/MinorStatusModel;

    iget-boolean v0, v0, Lcom/facebook/katana/model/MinorStatusModel;->isMinor:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    goto :goto_0

    .line 65
    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p2}, Lcom/facebook/katana/features/composer/MinorStatusClient;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/facebook/katana/features/composer/MinorStatusClient;->a(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/katana/features/composer/MinorStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-string v0, "user_minor_status"

    return-object v0
.end method

.method public synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p2, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/features/composer/MinorStatusClient;->a(Ljava/lang/Object;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 2
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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {p1, p3, v0, v1}, Lcom/facebook/katana/service/method/FqlGetMinorStatus;->a(Landroid/content/Context;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;J)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method
