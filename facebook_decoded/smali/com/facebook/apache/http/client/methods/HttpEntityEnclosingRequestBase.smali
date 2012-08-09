.class public abstract Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.super Lcom/facebook/apache/http/client/methods/HttpRequestBase;
.source "HttpEntityEnclosingRequestBase.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private c:Lcom/facebook/apache/http/HttpEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpEntity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;->c:Lcom/facebook/apache/http/HttpEntity;

    .line 60
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 63
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;->c(Ljava/lang/String;)Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 64
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
    .line 55
    iget-object v0, p0, Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;->c:Lcom/facebook/apache/http/HttpEntity;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 71
    iget-object v1, p0, Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;->c:Lcom/facebook/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;->c:Lcom/facebook/apache/http/HttpEntity;

    invoke-static {v1}, Lcom/facebook/apache/http/client/utils/CloneUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/HttpEntity;

    iput-object v1, v0, Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;->c:Lcom/facebook/apache/http/HttpEntity;

    .line 74
    :cond_0
    return-object v0
.end method
