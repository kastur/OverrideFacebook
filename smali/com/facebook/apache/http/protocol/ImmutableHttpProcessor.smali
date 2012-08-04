.class public final Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;
.super Ljava/lang/Object;
.source "ImmutableHttpProcessor.java"

# interfaces
.implements Lcom/facebook/apache/http/protocol/HttpProcessor;


# instance fields
.field private final a:[Lcom/facebook/apache/http/HttpRequestInterceptor;

.field private final b:[Lcom/facebook/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>([Lcom/facebook/apache/http/HttpRequestInterceptor;[Lcom/facebook/apache/http/HttpResponseInterceptor;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    array-length v2, p1

    .line 54
    new-array v1, v2, [Lcom/facebook/apache/http/HttpRequestInterceptor;

    iput-object v1, p0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;->a:[Lcom/facebook/apache/http/HttpRequestInterceptor;

    move v1, v0

    .line 55
    :goto_0
    if-ge v1, v2, :cond_1

    .line 56
    iget-object v3, p0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;->a:[Lcom/facebook/apache/http/HttpRequestInterceptor;

    aget-object v4, p1, v1

    aput-object v4, v3, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-array v1, v0, [Lcom/facebook/apache/http/HttpRequestInterceptor;

    iput-object v1, p0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;->a:[Lcom/facebook/apache/http/HttpRequestInterceptor;

    .line 61
    :cond_1
    if-eqz p2, :cond_2

    .line 62
    array-length v1, p2

    .line 63
    new-array v2, v1, [Lcom/facebook/apache/http/HttpResponseInterceptor;

    iput-object v2, p0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;->b:[Lcom/facebook/apache/http/HttpResponseInterceptor;

    .line 64
    :goto_1
    if-ge v0, v1, :cond_3

    .line 65
    iget-object v2, p0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;->b:[Lcom/facebook/apache/http/HttpResponseInterceptor;

    aget-object v3, p2, v0

    aput-object v3, v2, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_2
    new-array v0, v0, [Lcom/facebook/apache/http/HttpResponseInterceptor;

    iput-object v0, p0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;->b:[Lcom/facebook/apache/http/HttpResponseInterceptor;

    .line 70
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;->a:[Lcom/facebook/apache/http/HttpRequestInterceptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;->a:[Lcom/facebook/apache/http/HttpRequestInterceptor;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/facebook/apache/http/HttpRequestInterceptor;->a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;->b:[Lcom/facebook/apache/http/HttpResponseInterceptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;->b:[Lcom/facebook/apache/http/HttpResponseInterceptor;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/facebook/apache/http/HttpResponseInterceptor;->a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method
