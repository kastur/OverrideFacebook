.class public final Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;
.super Ljava/lang/Object;
.source "SchemeRegistry.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/conn/scheme/Scheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/Scheme;
    .locals 2
    .parameter

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/conn/scheme/Scheme;

    .line 110
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpHost;)Lcom/facebook/apache/http/conn/scheme/Scheme;
    .locals 2
    .parameter

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/apache/http/HttpHost;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/conn/scheme/Scheme;)Lcom/facebook/apache/http/conn/scheme/Scheme;
    .locals 2
    .parameter

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/facebook/apache/http/conn/scheme/Scheme;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/conn/scheme/Scheme;

    .line 128
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/Scheme;
    .locals 3
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->b(Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheme \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    return-object v0
.end method
