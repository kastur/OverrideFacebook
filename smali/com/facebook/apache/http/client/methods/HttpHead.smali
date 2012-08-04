.class public Lcom/facebook/apache/http/client/methods/HttpHead;
.super Lcom/facebook/apache/http/client/methods/HttpRequestBase;
.source "HttpHead.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/client/methods/HttpHead;->a(Ljava/net/URI;)V

    .line 65
    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "HEAD"

    return-object v0
.end method
