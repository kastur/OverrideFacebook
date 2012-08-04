.class public Lcom/facebook/apache/http/message/BasicHttpResponse;
.super Lcom/facebook/apache/http/message/AbstractHttpMessage;
.source "BasicHttpResponse.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpResponse;


# instance fields
.field private c:Lcom/facebook/apache/http/StatusLine;

.field private d:Lcom/facebook/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/StatusLine;Lcom/facebook/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/message/BasicHttpResponse;->c:Lcom/facebook/apache/http/StatusLine;

    .line 71
    if-nez p3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 73
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHttpResponse;->c:Lcom/facebook/apache/http/StatusLine;

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/HttpEntity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/facebook/apache/http/message/BasicHttpResponse;->d:Lcom/facebook/apache/http/HttpEntity;

    .line 167
    return-void
.end method

.method public final b()Lcom/facebook/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHttpResponse;->d:Lcom/facebook/apache/http/HttpEntity;

    return-object v0
.end method

.method public final c()Lcom/facebook/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHttpResponse;->c:Lcom/facebook/apache/http/StatusLine;

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->a()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicHttpResponse;->c:Lcom/facebook/apache/http/StatusLine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicHttpResponse;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
