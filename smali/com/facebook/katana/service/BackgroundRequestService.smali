.class public Lcom/facebook/katana/service/BackgroundRequestService;
.super Landroid/app/IntentService;
.source "BackgroundRequestService.java"


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "BackgroundRequestService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private static a(Landroid/content/Intent;)Lcom/facebook/apache/http/client/methods/HttpRequestBase;
    .locals 4
    .parameter

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    const-string v0, "com.facebook.katana.service.BackgroundRequestService.data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    const-string v0, "com.facebook.katana.service.BackgroundRequestService.uri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    :try_start_0
    new-instance v0, Lcom/facebook/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v3}, Lcom/facebook/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    new-instance v1, Lcom/facebook/apache/http/entity/StringEntity;

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/client/methods/HttpPost;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 62
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/client/methods/HttpPost;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/BackgroundRequestService;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/facebook/katana/service/BackgroundRequestService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/BackgroundRequestService;->a:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/BackgroundRequestService;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 162
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 163
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/BackgroundRequestService;->a:Landroid/os/PowerManager$WakeLock;

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/service/BackgroundRequestService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Landroid/content/Intent;)Lcom/facebook/apache/http/client/methods/HttpRequestBase;
    .locals 3
    .parameter

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    const-string v0, "com.facebook.katana.service.BackgroundRequestService.uri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    :try_start_0
    new-instance v0, Lcom/facebook/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v2}, Lcom/facebook/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    .line 102
    const-string v0, "com.facebook.katana.service.BackgroundRequestService.operation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/BackgroundRequestService$Operation;

    .line 103
    sget-object v1, Lcom/facebook/katana/service/BackgroundRequestService$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/katana/service/BackgroundRequestService$Operation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    invoke-static {p1}, Lcom/facebook/katana/service/BackgroundRequestService;->a(Landroid/content/Intent;)Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    move-result-object v1

    .line 120
    :goto_1
    :try_start_0
    new-instance v2, Lcom/facebook/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lcom/facebook/apache/http/params/BasicHttpParams;-><init>()V

    .line 121
    const-string v3, "http.socket.timeout"

    new-instance v4, Ljava/lang/Integer;

    const v5, 0x19a28

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 123
    const-string v3, "http.connection.timeout"

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x4e20

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 127
    new-instance v3, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;

    invoke-static {p0}, Lcom/facebook/katana/net/HttpOperation;->a(Landroid/content/Context;)Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 130
    invoke-static {p0}, Lcom/facebook/katana/Constants;->b(Landroid/content/Context;)Lcom/facebook/apache/http/HttpHost;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v3}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->d()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v2}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 136
    :cond_1
    const-class v2, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;

    invoke-virtual {v3, v2}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->b(Ljava/lang/Class;)V

    .line 137
    const-class v2, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;

    invoke-virtual {v3, v2}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->a(Ljava/lang/Class;)V

    .line 140
    invoke-virtual {v3, v1}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v2

    .line 144
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpEntity;->h()V

    .line 147
    const/16 v1, 0xc8

    if-ne v2, v1, :cond_0

    sget-object v1, Lcom/facebook/katana/service/BackgroundRequestService$Operation;->LOG:Lcom/facebook/katana/service/BackgroundRequestService$Operation;

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/facebook/katana/service/BackgroundRequestService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/facebook/katana/provider/LoggingProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "BackgroundRequestService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-static {p1}, Lcom/facebook/katana/service/BackgroundRequestService;->b(Landroid/content/Intent;)Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    move-result-object v1

    goto :goto_1

    .line 112
    :pswitch_2
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p0}, Lcom/facebook/katana/service/BackgroundRequestService;->a(Landroid/content/Context;)V

    .line 93
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/BackgroundRequestService;->c(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-direct {p0}, Lcom/facebook/katana/service/BackgroundRequestService;->a()V

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/katana/service/BackgroundRequestService;->a()V

    throw v0
.end method
