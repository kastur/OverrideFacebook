.class public Lcom/facebook/apache/http/protocol/BasicHttpContext;
.super Ljava/lang/Object;
.source "BasicHttpContext.java"

# interfaces
.implements Lcom/facebook/apache/http/protocol/HttpContext;


# instance fields
.field private final a:Lcom/facebook/apache/http/protocol/HttpContext;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/protocol/BasicHttpContext;-><init>(Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpContext;->b:Ljava/util/Map;

    .line 52
    iput-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpContext;->a:Lcom/facebook/apache/http/protocol/HttpContext;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/facebook/apache/http/protocol/BasicHttpContext;->b:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpContext;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/facebook/apache/http/protocol/BasicHttpContext;->a:Lcom/facebook/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpContext;->a:Lcom/facebook/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpContext;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpContext;->b:Ljava/util/Map;

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpContext;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method
