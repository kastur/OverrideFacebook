.class public Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;
.super Ljava/lang/Object;
.source "OrcaHttpRequestProcessor.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final c:Lcom/facebook/orca/common/http/OrcaHttpClient;

.field private final d:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/apache/http/client/methods/HttpUriRequest;",
            "Lcom/facebook/apache/http/client/methods/HttpUriRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "OrcaHttpRequestProcessor"

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a:Ljava/lang/String;

    .line 33
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClient;Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->c:Lcom/facebook/orca/common/http/OrcaHttpClient;

    .line 45
    iput-object p2, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    .line 46
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    return-void
.end method

.method private static a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpHost;
    .locals 4
    .parameter

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    invoke-interface {p0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->h()Ljava/net/URI;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    new-instance v0, Lcom/facebook/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/facebook/apache/http/client/ResponseHandler;Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lcom/facebook/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    invoke-interface {p1, p2}, Lcom/facebook/apache/http/client/ResponseHandler;->a(Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 246
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_0

    .line 220
    :try_start_1
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->h()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :cond_0
    :goto_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 221
    :catch_1
    move-exception v1

    .line 224
    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error consuming content after an exception."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RuntimeException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 238
    :cond_2
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 243
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Throwable"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter

    .prologue
    .line 169
    invoke-static {p1}, Lcom/facebook/orca/common/http/ProtocolExceptions;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->c:Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-interface {v0}, Lcom/facebook/orca/common/http/OrcaHttpClient;->a()Lcom/facebook/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/client/CookieStore;->b()V

    .line 172
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 173
    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 174
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Lcom/facebook/apache/http/HttpResponse;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 192
    if-eqz p0, :cond_0

    .line 194
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    .line 198
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Z

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Ljava/io/IOException;

    const-string v1, "In lame duck mode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpResponse;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d()V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lcom/facebook/apache/http/HttpRequest;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->c:Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-interface {v0, p2}, Lcom/facebook/orca/common/http/OrcaHttpClient;->a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v1

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lcom/facebook/apache/http/HttpResponse;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    invoke-static {v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lcom/facebook/apache/http/HttpResponse;)V

    .line 80
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    :try_start_1
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    invoke-static {v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lcom/facebook/apache/http/HttpResponse;)V

    .line 80
    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/apache/http/client/methods/HttpUriRequest;Lcom/facebook/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/client/methods/HttpUriRequest;",
            "Lcom/facebook/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    if-nez p3, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d()V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lcom/facebook/apache/http/HttpRequest;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->c:Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-static {p2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpHost;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, p2, v4}, Lcom/facebook/orca/common/http/OrcaHttpClient;->a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v1

    .line 112
    invoke-static {p1, p3, v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lcom/facebook/apache/http/client/ResponseHandler;Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    iget-object v3, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-static {v1, v0}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lcom/facebook/apache/http/HttpResponse;Ljava/lang/Object;)V

    .line 118
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v3

    .line 119
    if-eqz v3, :cond_1

    .line 121
    invoke-interface {v3}, Lcom/facebook/apache/http/HttpEntity;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    invoke-static {v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lcom/facebook/apache/http/HttpResponse;)V

    .line 134
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_1
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    invoke-static {v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lcom/facebook/apache/http/HttpResponse;)V

    .line 134
    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Z

    .line 139
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Z

    .line 143
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    .line 153
    invoke-interface {v0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->i()V

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method
