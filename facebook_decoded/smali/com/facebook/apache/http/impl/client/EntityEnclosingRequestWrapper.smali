.class public Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;
.super Lcom/facebook/apache/http/impl/client/RequestWrapper;
.source "EntityEnclosingRequestWrapper.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private c:Lcom/facebook/apache/http/HttpEntity;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/impl/client/RequestWrapper;-><init>(Lcom/facebook/apache/http/HttpRequest;)V

    .line 64
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 65
    return-void
.end method

.method private a(Lcom/facebook/apache/http/HttpEntity;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    if-eqz p1, :cond_0

    new-instance v0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;

    invoke-direct {v0, p0, p1}, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;-><init>(Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;Lcom/facebook/apache/http/HttpEntity;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->c:Lcom/facebook/apache/http/HttpEntity;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->d:Z

    .line 74
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 77
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->c(Ljava/lang/String;)Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/facebook/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->c:Lcom/facebook/apache/http/HttpEntity;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->c:Lcom/facebook/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->c:Lcom/facebook/apache/http/HttpEntity;

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;->d:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
