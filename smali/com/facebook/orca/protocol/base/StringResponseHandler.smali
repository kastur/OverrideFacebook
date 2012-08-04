.class public Lcom/facebook/orca/protocol/base/StringResponseHandler;
.super Ljava/lang/Object;
.source "StringResponseHandler.java"

# interfaces
.implements Lcom/facebook/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/apache/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/StringResponseHandler;->a:Lcom/facebook/apache/http/HttpResponse;

    .line 23
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v1

    .line 25
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-interface {v1}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v2

    .line 28
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_3

    .line 29
    const/16 v3, 0x190

    if-ne v2, v3, :cond_0

    .line 30
    invoke-static {v0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a(Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-interface {v1}, Lcom/facebook/apache/http/StatusLine;->c()Ljava/lang/String;

    move-result-object v1

    .line 33
    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_1
    new-instance v1, Lcom/facebook/apache/http/client/HttpResponseException;

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 26
    :cond_1
    invoke-static {v0}, Lcom/facebook/apache/http/util/EntityUtils;->c(Lcom/facebook/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 33
    goto :goto_1

    .line 37
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/StringResponseHandler;->a:Lcom/facebook/apache/http/HttpResponse;

    return-object v0
.end method

.method public final synthetic a(Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/base/StringResponseHandler;->b(Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
