.class public final Lcom/facebook/apache/http/protocol/BasicHttpProcessor;
.super Ljava/lang/Object;
.source "BasicHttpProcessor.java"

# interfaces
.implements Lcom/facebook/apache/http/protocol/HttpProcessor;
.implements Lcom/facebook/apache/http/protocol/HttpRequestInterceptorList;
.implements Lcom/facebook/apache/http/protocol/HttpResponseInterceptorList;
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/facebook/apache/http/protocol/BasicHttpProcessor;)V
    .locals 2
    .parameter

    .prologue
    .line 222
    iget-object v0, p1, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p1, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    iget-object v0, p1, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    iget-object v0, p1, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/facebook/apache/http/HttpRequestInterceptor;
    .locals 1
    .parameter

    .prologue
    .line 113
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpRequestInterceptor;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpRequestInterceptor;

    .line 200
    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/HttpRequestInterceptor;->a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/HttpRequestInterceptor;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 208
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpResponseInterceptor;

    .line 211
    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/HttpResponseInterceptor;->a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/HttpResponseInterceptor;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/facebook/apache/http/HttpResponseInterceptor;
    .locals 1
    .parameter

    .prologue
    .line 142
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpResponseInterceptor;

    goto :goto_0
.end method

.method public final b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 102
    return-void
.end method

.method public final b(Lcom/facebook/apache/http/HttpResponseInterceptor;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(Lcom/facebook/apache/http/HttpResponseInterceptor;)V

    .line 131
    return-void
.end method

.method public final b(Ljava/lang/Class;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;

    .line 241
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(Lcom/facebook/apache/http/protocol/BasicHttpProcessor;)V

    .line 242
    return-object v0
.end method
