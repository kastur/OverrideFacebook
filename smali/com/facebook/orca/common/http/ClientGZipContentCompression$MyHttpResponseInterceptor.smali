.class Lcom/facebook/orca/common/http/ClientGZipContentCompression$MyHttpResponseInterceptor;
.super Ljava/lang/Object;
.source "ClientGZipContentCompression.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpResponseInterceptor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/facebook/orca/common/http/ClientGZipContentCompression$MyHttpResponseInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->e()Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->e()[Lcom/facebook/apache/http/HeaderElement;

    move-result-object v1

    .line 67
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 68
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/facebook/apache/http/HeaderElement;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gzip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    new-instance v0, Lcom/facebook/orca/common/http/ClientGZipContentCompression$GzipDecompressingEntity;

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/http/ClientGZipContentCompression$GzipDecompressingEntity;-><init>(Lcom/facebook/apache/http/HttpEntity;)V

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 75
    :cond_0
    return-void

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
