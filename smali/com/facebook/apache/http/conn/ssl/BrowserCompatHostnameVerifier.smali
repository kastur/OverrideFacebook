.class public Lcom/facebook/apache/http/conn/ssl/BrowserCompatHostnameVerifier;
.super Lcom/facebook/apache/http/conn/ssl/AbstractVerifier;
.source "BrowserCompatHostnameVerifier.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
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
    .line 54
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/apache/http/conn/ssl/BrowserCompatHostnameVerifier;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 55
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "BROWSER_COMPATIBLE"

    return-object v0
.end method
