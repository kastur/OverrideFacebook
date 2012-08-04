.class public Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "OrcaHttpRequestRetryHandler.java"

# interfaces
.implements Lcom/facebook/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->a:I

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;ILcom/facebook/apache/http/protocol/HttpContext;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    if-nez p3, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    const-string v2, "orca:OrcaHttpRequestRetryHandler"

    const-string v3, "Exception"

    invoke-static {v2, v3, p1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const/4 v2, 0x3

    if-le p2, v2, :cond_2

    .line 79
    const-string v1, "orca:OrcaHttpRequestRetryHandler"

    const-string v2, "Hit retry limit"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return v0

    .line 82
    :cond_2
    instance-of v2, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v2, :cond_3

    .line 84
    const-string v0, "orca:OrcaHttpRequestRetryHandler"

    const-string v2, "[NoHttpResponseException] Retrying"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 85
    goto :goto_0

    .line 87
    :cond_3
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_4

    .line 89
    const-string v1, "orca:OrcaHttpRequestRetryHandler"

    const-string v2, "[InterruptedIOException] Not Retrying"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_4
    instance-of v2, p1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_5

    .line 94
    const-string v1, "orca:OrcaHttpRequestRetryHandler"

    const-string v2, "[UnknownHostException] Not Retrying"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_5
    instance-of v2, p1, Ljava/net/ConnectException;

    if-eqz v2, :cond_6

    .line 99
    const-string v1, "orca:OrcaHttpRequestRetryHandler"

    const-string v2, "[ConnectException] Not Retrying"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_6
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_7

    .line 104
    const-string v1, "orca:OrcaHttpRequestRetryHandler"

    const-string v2, "[SSLHandshakeException] Not Retrying"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_7
    const-string v0, "orca:OrcaHttpRequestRetryHandler"

    const-string v2, "[Default] Retrying"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 113
    goto :goto_0
.end method
