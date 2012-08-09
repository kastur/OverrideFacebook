.class public Lcom/facebook/apache/http/protocol/HttpRequestHandlerRegistry;
.super Ljava/lang/Object;
.source "HttpRequestHandlerRegistry.java"

# interfaces
.implements Lcom/facebook/apache/http/protocol/HttpRequestHandlerResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/facebook/apache/http/protocol/UriPatternMatcher;

    invoke-direct {v0}, Lcom/facebook/apache/http/protocol/UriPatternMatcher;-><init>()V

    .line 55
    return-void
.end method
