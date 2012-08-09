.class public Lcom/facebook/apache/http/client/methods/HttpGet;
.super Lcom/facebook/apache/http/client/methods/HttpRequestBase;
.source "HttpGet.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/client/methods/HttpGet;->a(Ljava/net/URI;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/client/methods/HttpGet;->a(Ljava/net/URI;)V

    .line 62
    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "GET"

    return-object v0
.end method
