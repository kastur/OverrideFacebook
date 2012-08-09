.class public final Lcom/facebook/apache/http/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;
.source "DefaultedHttpContext.java"

# interfaces
.implements Lcom/facebook/apache/http/protocol/HttpContext;


# instance fields
.field private final a:Lcom/facebook/apache/http/protocol/HttpContext;

.field private final b:Lcom/facebook/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/protocol/DefaultedHttpContext;->a:Lcom/facebook/apache/http/protocol/HttpContext;

    .line 49
    iput-object p2, p0, Lcom/facebook/apache/http/protocol/DefaultedHttpContext;->b:Lcom/facebook/apache/http/protocol/HttpContext;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/DefaultedHttpContext;->a:Lcom/facebook/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/DefaultedHttpContext;->b:Lcom/facebook/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/DefaultedHttpContext;->a:Lcom/facebook/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
