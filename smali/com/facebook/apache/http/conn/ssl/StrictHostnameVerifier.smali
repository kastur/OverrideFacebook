.class public Lcom/facebook/apache/http/conn/ssl/StrictHostnameVerifier;
.super Lcom/facebook/apache/http/conn/ssl/AbstractVerifier;
.source "StrictHostnameVerifier.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/ssl/AbstractVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/apache/http/conn/ssl/StrictHostnameVerifier;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "STRICT"

    return-object v0
.end method
