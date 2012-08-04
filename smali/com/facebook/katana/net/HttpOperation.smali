.class public Lcom/facebook/katana/net/HttpOperation;
.super Ljava/lang/Thread;
.source "HttpOperation.java"


# static fields
.field private static b:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:J

.field private static k:Lcom/facebook/apache/http/conn/ClientConnectionManager;


# instance fields
.field public final a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

.field private c:Lcom/facebook/apache/http/protocol/HttpContext;

.field private final d:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

.field private final e:Lcom/facebook/apache/http/HttpHost;

.field private f:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/facebook/katana/net/HttpOperation;->h:Ljava/lang/String;

    .line 99
    sput-object v0, Lcom/facebook/katana/net/HttpOperation;->i:Ljava/lang/String;

    .line 102
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/facebook/katana/net/HttpOperation;->j:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/facebook/katana/net/HttpOperation$Method;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 94
    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation;->f:J

    .line 95
    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation;->g:J

    .line 192
    invoke-static {p1}, Lcom/facebook/katana/net/HttpOperation;->a(Landroid/content/Context;)Lcom/facebook/apache/http/conn/ClientConnectionManager;

    .line 194
    sget-object v0, Lcom/facebook/katana/net/HttpOperation$Method;->GET:Lcom/facebook/katana/net/HttpOperation$Method;

    if-ne p2, v0, :cond_1

    .line 195
    new-instance v0, Lcom/facebook/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p3}, Lcom/facebook/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    .line 200
    :goto_0
    if-eqz p5, :cond_0

    .line 201
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p5}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    iput-object p4, p0, Lcom/facebook/katana/net/HttpOperation;->d:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->c:Lcom/facebook/apache/http/protocol/HttpContext;

    .line 209
    invoke-static {p1}, Lcom/facebook/katana/Constants;->b(Landroid/content/Context;)Lcom/facebook/apache/http/HttpHost;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->e:Lcom/facebook/apache/http/HttpHost;

    .line 210
    return-void

    .line 197
    :cond_1
    new-instance v0, Lcom/facebook/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p3}, Lcom/facebook/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/net/HttpOperation$Method;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 178
    if-eqz p5, :cond_0

    invoke-static {p1}, Lcom/facebook/katana/net/HttpOperation;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Lcom/facebook/katana/net/HttpOperation$Method;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 181
    return-void

    :cond_0
    move-object v5, v6

    .line 178
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 94
    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation;->f:J

    .line 95
    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation;->g:J

    .line 225
    invoke-static {p1}, Lcom/facebook/katana/net/HttpOperation;->a(Landroid/content/Context;)Lcom/facebook/apache/http/conn/ClientConnectionManager;

    .line 227
    new-instance v0, Lcom/facebook/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lcom/facebook/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    .line 229
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 231
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lcom/facebook/apache/http/client/methods/HttpPost;

    new-instance v2, Lcom/facebook/katana/net/HttpOperation$MyInputStreamEntity;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/facebook/katana/net/HttpOperation$MyInputStreamEntity;-><init>(Lcom/facebook/katana/net/HttpOperation;Ljava/io/InputStream;J)V

    invoke-virtual {v0, v2}, Lcom/facebook/apache/http/client/methods/HttpPost;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 233
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p4}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-eqz p6, :cond_0

    .line 236
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    const-string v1, "User-Agent"

    invoke-static {p1}, Lcom/facebook/katana/net/HttpOperation;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    iput-object p5, p0, Lcom/facebook/katana/net/HttpOperation;->d:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->c:Lcom/facebook/apache/http/protocol/HttpContext;

    .line 240
    invoke-static {p1}, Lcom/facebook/katana/Constants;->b(Landroid/content/Context;)Lcom/facebook/apache/http/HttpHost;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->e:Lcom/facebook/apache/http/HttpHost;

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/entity/mime/content/ContentBody;",
            ">;",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 94
    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation;->f:J

    .line 95
    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation;->g:J

    .line 246
    invoke-static {p1}, Lcom/facebook/katana/net/HttpOperation;->a(Landroid/content/Context;)Lcom/facebook/apache/http/conn/ClientConnectionManager;

    .line 248
    new-instance v0, Lcom/facebook/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lcom/facebook/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    .line 249
    if-eqz p3, :cond_1

    .line 250
    new-instance v4, Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;-><init>(Lcom/facebook/katana/net/HttpOperation;B)V

    .line 251
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 252
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    .line 253
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 255
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/entity/mime/content/ContentBody;

    .line 256
    invoke-virtual {v4, v1, v0}, Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 262
    invoke-interface {v0}, Lcom/facebook/apache/http/entity/mime/content/ContentBody;->e()J

    move-result-wide v0

    const-wide/16 v6, 0x23

    add-long/2addr v0, v6

    add-long/2addr v0, v2

    .line 263
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move-wide v2, v0

    .line 264
    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v4, v2, v3}, Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;->a(J)V

    .line 266
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lcom/facebook/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v4}, Lcom/facebook/apache/http/client/methods/HttpPost;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    const-string v1, "User-Agent"

    invoke-static {p1}, Lcom/facebook/katana/net/HttpOperation;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iput-object p5, p0, Lcom/facebook/katana/net/HttpOperation;->d:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->c:Lcom/facebook/apache/http/protocol/HttpContext;

    .line 275
    invoke-static {p1}, Lcom/facebook/katana/Constants;->b(Landroid/content/Context;)Lcom/facebook/apache/http/HttpHost;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->e:Lcom/facebook/apache/http/HttpHost;

    .line 276
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/facebook/apache/http/conn/ClientConnectionManager;
    .locals 4
    .parameter

    .prologue
    .line 154
    const-class v1, Lcom/facebook/katana/net/HttpOperation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/net/HttpOperation;->k:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/facebook/katana/net/HttpOperation;->k:Lcom/facebook/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    monitor-exit v1

    return-object v0

    .line 158
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 159
    new-instance v2, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v2, Lcom/facebook/katana/net/HttpOperation;->k:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    .line 161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    const-string v2, "check_certs"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 167
    sget-object v2, Lcom/facebook/katana/net/HttpOperation;->k:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    invoke-static {v2, v0}, Lcom/facebook/katana/net/HttpOperation;->a(Lcom/facebook/apache/http/conn/ClientConnectionManager;Z)V

    .line 169
    sget-object v0, Lcom/facebook/katana/net/HttpOperation;->k:Lcom/facebook/apache/http/conn/ClientConnectionManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/facebook/katana/net/HttpOperation;)Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->d:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 145
    const-class v1, Lcom/facebook/katana/net/HttpOperation;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/facebook/katana/net/HttpOperation;->a(Landroid/content/Context;)Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 146
    invoke-static {v0, p1}, Lcom/facebook/katana/net/HttpOperation;->a(Lcom/facebook/apache/http/conn/ClientConnectionManager;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v1

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Lcom/facebook/apache/http/conn/ClientConnectionManager;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 114
    const-class v1, Lcom/facebook/katana/net/HttpOperation;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Lcom/facebook/apache/http/conn/ClientConnectionManager;->a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 119
    new-instance v0, Lcom/facebook/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    const/16 v4, 0x50

    invoke-static {}, Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;->b()Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/facebook/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Lcom/facebook/apache/http/conn/scheme/Scheme;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    .line 121
    if-eqz p1, :cond_0

    .line 125
    invoke-static {}, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->b()Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 132
    :goto_0
    new-instance v3, Lcom/facebook/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v5, v0}, Lcom/facebook/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v2, v3}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Lcom/facebook/apache/http/conn/scheme/Scheme;)Lcom/facebook/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v1

    return-void

    .line 129
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/katana/net/TrustEveryoneSocketFactory;->d()Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 410
    const-class v1, Lcom/facebook/katana/net/HttpOperation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/net/HttpOperation;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/katana/net/HttpOperation;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 411
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/UserAgent$AppForegroundMode;->Background:Lcom/facebook/katana/UserAgent$AppForegroundMode;

    invoke-static {p0, v0, v2}, Lcom/facebook/katana/UserAgent;->a(Landroid/content/Context;Ljava/lang/Boolean;Lcom/facebook/katana/UserAgent$AppForegroundMode;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/net/HttpOperation;->h:Ljava/lang/String;

    .line 413
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/UserAgent$AppForegroundMode;->Foreground:Lcom/facebook/katana/UserAgent$AppForegroundMode;

    invoke-static {p0, v0, v2}, Lcom/facebook/katana/UserAgent;->a(Landroid/content/Context;Ljava/lang/Boolean;Lcom/facebook/katana/UserAgent$AppForegroundMode;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/net/HttpOperation;->i:Ljava/lang/String;

    .line 418
    :cond_1
    invoke-static {}, Lcom/facebook/katana/service/BackgroundDetectionService;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    sget-object v0, Lcom/facebook/katana/net/HttpOperation;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :goto_0
    monitor-exit v1

    return-object v0

    .line 422
    :cond_2
    :try_start_1
    sget-wide v2, Lcom/facebook/katana/net/HttpOperation;->j:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 423
    const-string v0, "LAST_FG_SIGNAL_TIME"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/facebook/katana/net/HttpOperation;->j:J

    .line 427
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 428
    sget-wide v4, Lcom/facebook/katana/net/HttpOperation;->j:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1499700

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 429
    sput-wide v2, Lcom/facebook/katana/net/HttpOperation;->j:J

    .line 430
    const-string v0, "LAST_FG_SIGNAL_TIME"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    sget-object v0, Lcom/facebook/katana/net/HttpOperation;->i:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 434
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 381
    sget-object v0, Lcom/facebook/katana/net/HttpOperation;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/UserAgent;->a(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/net/HttpOperation;->b:Ljava/lang/String;

    .line 385
    :cond_0
    invoke-static {p0}, Lcom/facebook/katana/net/HttpOperation;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_1

    .line 391
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/facebook/katana/net/HttpOperation;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/facebook/katana/net/HttpOperation;->interrupt()V

    .line 283
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->i()V

    .line 284
    return-void
.end method

.method public final b()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 396
    iget-wide v2, p0, Lcom/facebook/katana/net/HttpOperation;->g:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/facebook/katana/net/HttpOperation;->g:J

    iget-wide v2, p0, Lcom/facebook/katana/net/HttpOperation;->f:J

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/net/HttpOperation;->setPriority(I)V

    .line 294
    new-instance v0, Lcom/facebook/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lcom/facebook/apache/http/params/BasicHttpParams;-><init>()V

    .line 295
    const-string v1, "http.socket.timeout"

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x19a28

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 296
    const-string v1, "http.connection.timeout"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x4e20

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 297
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/facebook/apache/http/params/HttpConnectionParams;->b(Lcom/facebook/apache/http/params/HttpParams;I)V

    .line 300
    new-instance v1, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;

    sget-object v2, Lcom/facebook/katana/net/HttpOperation;->k:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 301
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->e:Lcom/facebook/apache/http/HttpHost;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v1}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->d()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.route.default-proxy"

    iget-object v3, p0, Lcom/facebook/katana/net/HttpOperation;->e:Lcom/facebook/apache/http/HttpHost;

    invoke-interface {v0, v2, v3}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 305
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/katana/net/HttpOperation;->f:J

    .line 306
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->h()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/NetworkIdleMonitor;->a(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v0, v2, v3}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    invoke-static {v0}, Lcom/facebook/katana/util/logging/DataLogger;->a(Lcom/facebook/apache/http/client/methods/HttpRequestBase;)V

    .line 315
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->c:Lcom/facebook/apache/http/protocol/HttpContext;

    if-eqz v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    iget-object v2, p0, Lcom/facebook/katana/net/HttpOperation;->c:Lcom/facebook/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v0

    .line 321
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->h()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/katana/util/logging/DataLogger;->a(Ljava/net/URI;Lcom/facebook/apache/http/HttpResponse;)V

    .line 322
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v2

    .line 323
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/apache/http/StatusLine;->c()Ljava/lang/String;

    move-result-object v3

    .line 324
    const/16 v1, 0xc8

    if-ne v2, v1, :cond_1

    .line 325
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v6

    .line 326
    if-eqz v6, :cond_1

    .line 329
    invoke-interface {v6}, Lcom/facebook/apache/http/HttpEntity;->e()Lcom/facebook/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 330
    invoke-interface {v6}, Lcom/facebook/apache/http/HttpEntity;->e()Lcom/facebook/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 334
    :goto_1
    invoke-interface {v6}, Lcom/facebook/apache/http/HttpEntity;->d()Lcom/facebook/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 335
    invoke-interface {v6}, Lcom/facebook/apache/http/HttpEntity;->d()Lcom/facebook/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 339
    :goto_2
    new-instance v0, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;

    invoke-interface {v6}, Lcom/facebook/apache/http/HttpEntity;->f()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6, v1, v5}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v0

    .line 352
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation;->g:J

    .line 353
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->h()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/NetworkIdleMonitor;->b(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->d:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->d:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;->a(Lcom/facebook/katana/net/HttpOperation;ILjava/lang/String;Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 369
    :cond_2
    if-eqz v4, :cond_3

    .line 371
    :try_start_2
    invoke-virtual {v4}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 377
    :cond_3
    :goto_3
    return-void

    .line 318
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v5, v4

    .line 332
    goto :goto_1

    :cond_6
    move-object v1, v4

    .line 337
    goto :goto_2

    .line 372
    :catch_0
    move-exception v0

    .line 373
    const-string v1, "HttpOperation"

    const-string v2, "cannot close response content input stream"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 358
    :catch_1
    move-exception v5

    move-object v6, v4

    .line 365
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->d:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    if-eqz v0, :cond_7

    .line 366
    iget-object v0, p0, Lcom/facebook/katana/net/HttpOperation;->d:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;->a(Lcom/facebook/katana/net/HttpOperation;ILjava/lang/String;Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 369
    :cond_7
    if-eqz v6, :cond_3

    .line 371
    :try_start_5
    invoke-virtual {v6}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 372
    :catch_2
    move-exception v0

    .line 373
    const-string v1, "HttpOperation"

    const-string v2, "cannot close response content input stream"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 369
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v4, :cond_8

    .line 371
    :try_start_6
    invoke-virtual {v4}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 374
    :cond_8
    :goto_6
    throw v0

    .line 372
    :catch_3
    move-exception v1

    .line 373
    const-string v2, "HttpOperation"

    const-string v3, "cannot close response content input stream"

    invoke-static {v2, v3, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 369
    :catchall_1
    move-exception v0

    move-object v4, v6

    goto :goto_5

    .line 358
    :catch_4
    move-exception v5

    move-object v6, v4

    goto :goto_4
.end method
