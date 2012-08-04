.class public Lcom/facebook/apache/http/impl/DefaultHttpRequestFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpRequestFactory;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "GET"

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/apache/http/impl/DefaultHttpRequestFactory;->a:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "POST"

    aput-object v1, v0, v2

    const-string v1, "PUT"

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/apache/http/impl/DefaultHttpRequestFactory;->b:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HEAD"

    aput-object v1, v0, v2

    const-string v1, "OPTIONS"

    aput-object v1, v0, v3

    const-string v1, "DELETE"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "TRACE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/apache/http/impl/DefaultHttpRequestFactory;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 68
    aget-object v2, p0, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    const/4 v1, 0x1

    .line 72
    :cond_0
    return v1

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/RequestLine;)Lcom/facebook/apache/http/HttpRequest;
    .locals 3
    .parameter

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    invoke-interface {p1}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/facebook/apache/http/impl/DefaultHttpRequestFactory;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    new-instance v0, Lcom/facebook/apache/http/message/BasicHttpRequest;

    invoke-direct {v0, p1}, Lcom/facebook/apache/http/message/BasicHttpRequest;-><init>(Lcom/facebook/apache/http/RequestLine;)V

    .line 86
    :goto_0
    return-object v0

    .line 83
    :cond_1
    sget-object v1, Lcom/facebook/apache/http/impl/DefaultHttpRequestFactory;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    new-instance v0, Lcom/facebook/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lcom/facebook/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Lcom/facebook/apache/http/RequestLine;)V

    goto :goto_0

    .line 85
    :cond_2
    sget-object v1, Lcom/facebook/apache/http/impl/DefaultHttpRequestFactory;->c:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/apache/http/impl/DefaultHttpRequestFactory;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    new-instance v0, Lcom/facebook/apache/http/message/BasicHttpRequest;

    invoke-direct {v0, p1}, Lcom/facebook/apache/http/message/BasicHttpRequest;-><init>(Lcom/facebook/apache/http/RequestLine;)V

    goto :goto_0

    .line 88
    :cond_3
    new-instance v1, Lcom/facebook/apache/http/MethodNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " method not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
