.class public Lcom/facebook/apache/http/client/methods/HttpPost;
.super Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpPost.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/client/methods/HttpPost;->a(Ljava/net/URI;)V

    .line 77
    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "POST"

    return-object v0
.end method
