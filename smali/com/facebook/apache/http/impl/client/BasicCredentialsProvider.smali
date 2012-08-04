.class public Lcom/facebook/apache/http/impl/client/BasicCredentialsProvider;
.super Ljava/lang/Object;
.source "BasicCredentialsProvider.java"

# interfaces
.implements Lcom/facebook/apache/http/client/CredentialsProvider;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/facebook/apache/http/auth/AuthScope;",
            "Lcom/facebook/apache/http/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/BasicCredentialsProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/facebook/apache/http/auth/AuthScope;)Lcom/facebook/apache/http/auth/Credentials;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/apache/http/auth/AuthScope;",
            "Lcom/facebook/apache/http/auth/Credentials;",
            ">;",
            "Lcom/facebook/apache/http/auth/AuthScope;",
            ")",
            "Lcom/facebook/apache/http/auth/Credentials;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/auth/Credentials;

    .line 78
    if-nez v0, :cond_1

    .line 81
    const/4 v4, -0x1

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/auth/AuthScope;

    .line 84
    invoke-virtual {p1, v1}, Lcom/facebook/apache/http/auth/AuthScope;->a(Lcom/facebook/apache/http/auth/AuthScope;)I

    move-result v3

    .line 85
    if-le v3, v4, :cond_2

    move v2, v3

    :goto_1
    move v4, v2

    move-object v2, v1

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    if-eqz v2, :cond_1

    .line 91
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/auth/Credentials;

    .line 94
    :cond_1
    return-object v0

    :cond_2
    move-object v1, v2

    move v2, v4

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/auth/AuthScope;)Lcom/facebook/apache/http/auth/Credentials;
    .locals 2
    .parameter

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/BasicCredentialsProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p1}, Lcom/facebook/apache/http/impl/client/BasicCredentialsProvider;->a(Ljava/util/Map;Lcom/facebook/apache/http/auth/AuthScope;)Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/BasicCredentialsProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
