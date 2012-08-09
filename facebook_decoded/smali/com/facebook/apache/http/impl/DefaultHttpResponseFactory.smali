.class public Lcom/facebook/apache/http/impl/DefaultHttpResponseFactory;
.super Ljava/lang/Object;
.source "DefaultHttpResponseFactory.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpResponseFactory;


# instance fields
.field private a:Lcom/facebook/apache/http/ReasonPhraseCatalog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/apache/http/impl/EnglishReasonPhraseCatalog;->a:Lcom/facebook/apache/http/impl/EnglishReasonPhraseCatalog;

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/DefaultHttpResponseFactory;-><init>(Lcom/facebook/apache/http/ReasonPhraseCatalog;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Lcom/facebook/apache/http/ReasonPhraseCatalog;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reason phrase catalog must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/DefaultHttpResponseFactory;->a:Lcom/facebook/apache/http/ReasonPhraseCatalog;

    .line 64
    return-void
.end method

.method private static a()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/StatusLine;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-static {}, Lcom/facebook/apache/http/impl/DefaultHttpResponseFactory;->a()Ljava/util/Locale;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/facebook/apache/http/message/BasicHttpResponse;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/DefaultHttpResponseFactory;->a:Lcom/facebook/apache/http/ReasonPhraseCatalog;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/apache/http/message/BasicHttpResponse;-><init>(Lcom/facebook/apache/http/StatusLine;Lcom/facebook/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v1
.end method
