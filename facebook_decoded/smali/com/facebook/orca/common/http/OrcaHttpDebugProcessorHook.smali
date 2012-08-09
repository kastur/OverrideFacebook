.class public Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;
.super Ljava/lang/Object;
.source "OrcaHttpDebugProcessorHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 83
    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpEntity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 85
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    invoke-interface {p0, v0}, Lcom/facebook/apache/http/HttpEntity;->a(Ljava/io/OutputStream;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const-string v0, "[TOO MUCH DATA TO INCLUDE]"

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "[NULL OR NON-REPEATABLE ENTITY]"

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Ljava/net/URI;
    .locals 3
    .parameter

    .prologue
    .line 68
    invoke-interface {p0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->h()Ljava/net/URI;

    move-result-object v1

    .line 72
    instance-of v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;

    if-eqz v0, :cond_0

    .line 73
    check-cast p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;

    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->l()Lcom/facebook/apache/http/HttpRequest;

    move-result-object v0

    .line 74
    instance-of v2, v0, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    if-eqz v2, :cond_0

    .line 75
    check-cast v0, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->h()Ljava/net/URI;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/facebook/apache/http/HttpResponse;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 109
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v0, "Http Response:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpResponse;->d()[Lcom/facebook/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 116
    invoke-interface {v4}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v4}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_1
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    if-eqz p1, :cond_2

    .line 123
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 124
    const-string v0, "Body:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_2
    :goto_2
    const-string v0, "orca:OrcaHttpDebug"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    const-string v0, "Body: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;)V
    .locals 6
    .parameter

    .prologue
    .line 32
    instance-of v0, p1, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 40
    check-cast v0, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v2, "Http request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {v0}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-interface {v0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->d()[Lcom/facebook/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 51
    invoke-interface {v4}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-interface {v4}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_2
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    instance-of v0, p1, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_3

    .line 59
    check-cast p1, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    .line 61
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lcom/facebook/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_3
    const-string v0, "orca:OrcaHttpDebug"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
