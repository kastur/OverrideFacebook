.class public Lcom/facebook/apache/http/client/methods/HttpPut;
.super Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpPut.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "PUT"

    return-object v0
.end method
