.class Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;
.super Lcom/facebook/apache/http/entity/HttpEntityWrapper;
.source "EntityEnclosingRequestWrapper.java"


# instance fields
.field private synthetic b:Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;Lcom/facebook/apache/http/HttpEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->b:Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;

    .line 89
    invoke-direct {p0, p2}, Lcom/facebook/apache/http/entity/HttpEntityWrapper;-><init>(Lcom/facebook/apache/http/HttpEntity;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->b:Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->a(Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 108
    invoke-super {p0, p1}, Lcom/facebook/apache/http/entity/HttpEntityWrapper;->a(Ljava/io/OutputStream;)V

    .line 109
    return-void
.end method

.method public final f()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->b:Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->a(Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 102
    invoke-super {p0}, Lcom/facebook/apache/http/entity/HttpEntityWrapper;->f()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->b:Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->a(Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 96
    invoke-super {p0}, Lcom/facebook/apache/http/entity/HttpEntityWrapper;->h()V

    .line 97
    return-void
.end method
