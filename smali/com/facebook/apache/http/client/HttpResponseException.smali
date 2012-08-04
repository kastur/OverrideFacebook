.class public Lcom/facebook/apache/http/client/HttpResponseException;
.super Lcom/facebook/apache/http/client/ClientProtocolException;
.source "HttpResponseException.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lcom/facebook/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    .line 45
    iput p1, p0, Lcom/facebook/apache/http/client/HttpResponseException;->a:I

    .line 46
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/facebook/apache/http/client/HttpResponseException;->a:I

    return v0
.end method
