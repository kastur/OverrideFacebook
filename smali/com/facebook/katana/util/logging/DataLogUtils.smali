.class public final Lcom/facebook/katana/util/logging/DataLogUtils;
.super Ljava/lang/Object;
.source "DataLogUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/facebook/katana/util/logging/DataLogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/logging/DataLogUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/apache/http/HttpMessage;)J
    .locals 5
    .parameter

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    .line 106
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpMessage;->e()Lcom/facebook/apache/http/HeaderIterator;

    move-result-object v2

    .line 107
    :goto_0
    invoke-interface {v2}, Lcom/facebook/apache/http/HeaderIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-interface {v2}, Lcom/facebook/apache/http/HeaderIterator;->a()Lcom/facebook/apache/http/Header;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    return-wide v0
.end method

.method public static a(Lcom/facebook/apache/http/HttpResponse;)J
    .locals 6
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lcom/facebook/katana/util/logging/DataLogUtils;->a(Lcom/facebook/apache/http/HttpMessage;)J

    move-result-wide v0

    .line 60
    invoke-static {p0}, Lcom/facebook/katana/util/logging/DataLogUtils;->b(Lcom/facebook/apache/http/HttpMessage;)J

    move-result-wide v2

    .line 61
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 62
    add-long/2addr v0, v2

    .line 72
    :cond_0
    :goto_0
    return-wide v0

    .line 63
    :cond_1
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 66
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v2}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Lcom/facebook/apache/http/client/methods/HttpRequestBase;)J
    .locals 7
    .parameter

    .prologue
    .line 28
    invoke-static {p0}, Lcom/facebook/katana/util/logging/DataLogUtils;->a(Lcom/facebook/apache/http/HttpMessage;)J

    move-result-wide v1

    .line 30
    invoke-virtual {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->a_()Ljava/lang/String;

    move-result-object v0

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 31
    check-cast v0, Lcom/facebook/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lcom/facebook/apache/http/client/methods/HttpPost;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v3

    .line 34
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 36
    add-long v0, v1, v3

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 46
    :cond_0
    return-wide v0

    :cond_1
    move-wide v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/facebook/apache/http/HttpMessage;)J
    .locals 10
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    const-wide/16 v3, -0x1

    .line 121
    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Lcom/facebook/apache/http/HttpMessage;->b(Ljava/lang/String;)[Lcom/facebook/apache/http/Header;

    move-result-object v7

    .line 122
    if-eqz v7, :cond_1

    move v0, v1

    :goto_0
    array-length v8, v7

    if-lez v8, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 124
    array-length v3, v7

    move-wide v0, v5

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, v7, v2

    .line 125
    invoke-interface {v4}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v4

    .line 127
    if-eqz v4, :cond_0

    .line 129
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 130
    cmp-long v4, v8, v5

    if-lez v4, :cond_0

    .line 131
    add-long/2addr v0, v8

    .line 124
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    .line 122
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 133
    :catch_0
    move-exception v4

    .line 134
    sget-object v8, Lcom/facebook/katana/util/logging/DataLogUtils;->a:Ljava/lang/String;

    const-string v9, "Failure in getting content length from the header"

    invoke-static {v8, v9, v4}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    move-wide v0, v3

    .line 139
    :cond_4
    return-wide v0
.end method

.method public static b(Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 85
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->d()Lcom/facebook/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->d()Lcom/facebook/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    if-nez v0, :cond_1

    .line 91
    const-string v1, "Content-Type"

    invoke-interface {p0, v1}, Lcom/facebook/apache/http/HttpResponse;->c(Ljava/lang/String;)Lcom/facebook/apache/http/Header;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v1}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_1
    return-object v0
.end method
