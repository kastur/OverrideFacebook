.class public Lcom/facebook/apache/http/impl/client/TunnelRefusedException;
.super Lcom/facebook/apache/http/HttpException;
.source "TunnelRefusedException.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/apache/http/HttpResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/facebook/apache/http/impl/client/TunnelRefusedException;->a:Lcom/facebook/apache/http/HttpResponse;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/TunnelRefusedException;->a:Lcom/facebook/apache/http/HttpResponse;

    return-object v0
.end method
