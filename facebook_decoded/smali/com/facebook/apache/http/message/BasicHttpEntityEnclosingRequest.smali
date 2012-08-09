.class public Lcom/facebook/apache/http/message/BasicHttpEntityEnclosingRequest;
.super Lcom/facebook/apache/http/message/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpEntityEnclosingRequest;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/RequestLine;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/message/BasicHttpRequest;-><init>(Lcom/facebook/apache/http/RequestLine;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 69
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/message/BasicHttpEntityEnclosingRequest;->c(Ljava/lang/String;)Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 70
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
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
