.class public Lcom/facebook/apache/http/client/methods/HttpOptions;
.super Lcom/facebook/apache/http/client/methods/HttpRequestBase;
.source "HttpOptions.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "OPTIONS"

    return-object v0
.end method
