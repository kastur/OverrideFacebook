.class public final Lcom/facebook/apache/http/impl/conn/SchemeRegistryFactory;
.super Ljava/lang/Object;
.source "SchemeRegistryFactory.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 43
    new-instance v1, Lcom/facebook/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    const/16 v3, 0x50

    invoke-static {}, Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;->b()Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Lcom/facebook/apache/http/conn/scheme/Scheme;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    .line 45
    new-instance v1, Lcom/facebook/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-static {}, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->b()Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Lcom/facebook/apache/http/conn/scheme/Scheme;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    .line 47
    return-object v0
.end method
