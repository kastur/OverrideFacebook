.class public Lcom/facebook/katana/service/method/ApiLogging;
.super Landroid/content/BroadcastReceiver;
.source "ApiLogging.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:I

.field private static c:I

.field private static d:Z

.field private static e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static p:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static q:J

.field private static r:J

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:I

.field private static w:Lorg/codehaus/jackson/map/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LRUMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    const-string v0, ",\"uid\":"

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->a:Ljava/lang/Object;

    .line 93
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    sput v0, Lcom/facebook/katana/service/method/ApiLogging;->b:I

    .line 94
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    :goto_1
    sput v0, Lcom/facebook/katana/service/method/ApiLogging;->c:I

    .line 97
    sput-boolean v1, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 112
    sput-object v2, Lcom/facebook/katana/service/method/ApiLogging;->s:Ljava/lang/String;

    .line 113
    sput-object v2, Lcom/facebook/katana/service/method/ApiLogging;->t:Ljava/lang/String;

    .line 114
    sput-object v2, Lcom/facebook/katana/service/method/ApiLogging;->u:Ljava/lang/String;

    .line 119
    const/16 v0, 0x19

    sput v0, Lcom/facebook/katana/service/method/ApiLogging;->v:I

    .line 120
    new-instance v0, Lorg/codehaus/jackson/map/util/LRUMap;

    const/4 v1, 0x1

    sget v2, Lcom/facebook/katana/service/method/ApiLogging;->v:I

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/util/LRUMap;-><init>(II)V

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->w:Lorg/codehaus/jackson/map/util/LRUMap;

    return-void

    .line 93
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0

    .line 94
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 116
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    .line 439
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 440
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    new-instance v0, Lcom/facebook/katana/service/method/ApiLogging$1;

    invoke-direct {v0}, Lcom/facebook/katana/service/method/ApiLogging$1;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/katana/util/NetworkIdleMonitor;->a(Landroid/content/Context;Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkIdleListener;)V

    .line 139
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 340
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x800

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 341
    const-string v0, "payload"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?id=350685531728"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&lid=105"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/service/method/ApiLogging;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&carrier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/service/method/ApiLogging;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/service/method/ApiLogging;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/x-www-form-urlencoded;"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    .line 358
    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    const-string v1, "LogClass"

    const-string v2, "Logging failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JILjava/lang/Exception;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 401
    .line 404
    instance-of v0, p5, Lcom/facebook/katana/model/FacebookApiException;

    if-eqz v0, :cond_2

    .line 405
    check-cast p5, Lcom/facebook/katana/model/FacebookApiException;

    invoke-virtual {p5}, Lcom/facebook/katana/model/FacebookApiException;->a()I

    move-result v0

    int-to-long v0, v0

    move-wide v4, v0

    move-wide v0, v2

    .line 414
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x258

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 415
    const-string v7, "{\"lid\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const/16 v7, 0x6a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v7, "\",\"elapsed\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 420
    const-string v7, ",\"data\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    cmp-long v7, v4, v2

    if-lez v7, :cond_0

    .line 423
    const-string v7, ",\"api_error\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 426
    :cond_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 427
    const-string v2, ",\"error\":"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 430
    :cond_1
    const-string v0, ",\"frequency\":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    sget v0, Lcom/facebook/katana/service/method/ApiLogging;->b:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    const-string v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/method/ApiLogging;->a(Ljava/lang/String;)V

    .line 434
    return-void

    .line 406
    :cond_2
    instance-of v0, p5, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_3

    instance-of v0, p5, Ljava/io/IOException;

    if-eqz v0, :cond_4

    .line 408
    :cond_3
    const-wide/16 v0, 0x79

    move-wide v4, v2

    goto :goto_0

    .line 409
    :cond_4
    instance-of v0, p5, Lorg/codehaus/jackson/JsonParseException;

    if-nez v0, :cond_5

    instance-of v0, p5, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_6

    .line 411
    :cond_5
    const-wide/16 v0, 0x78

    move-wide v4, v2

    goto :goto_0

    :cond_6
    move-wide v0, v2

    move-wide v4, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JJI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 374
    const-string v1, "{\"lid\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    const-string v1, ",\"url\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, "\",\"elapsed\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, ",\"data\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 382
    const/16 v1, 0xc8

    if-eq p6, v1, :cond_0

    .line 383
    const-string v1, ",\"error\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    :cond_0
    const-string v1, ",\"frequency\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    sget v1, Lcom/facebook/katana/service/method/ApiLogging;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/service/method/ApiLogging;->a(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 330
    const-class v1, Lcom/facebook/katana/service/method/ApiLogging;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->w:Lorg/codehaus/jackson/map/util/LRUMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/codehaus/jackson/map/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit v1

    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 312
    sput-boolean v0, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    .line 313
    sget-object v1, Lcom/facebook/katana/service/method/ApiLogging;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 314
    const/16 v1, 0xc8

    if-eq p0, v1, :cond_0

    .line 315
    sget-object v1, Lcom/facebook/katana/service/method/ApiLogging;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 317
    :cond_0
    sget-object v1, Lcom/facebook/katana/util/Utils;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    sget v2, Lcom/facebook/katana/service/method/ApiLogging;->c:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Exception;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 295
    sput-boolean v0, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    .line 296
    sget-object v1, Lcom/facebook/katana/service/method/ApiLogging;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 297
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 298
    :cond_0
    sget-object v1, Lcom/facebook/katana/service/method/ApiLogging;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 303
    :cond_1
    :goto_0
    sget-object v1, Lcom/facebook/katana/util/Utils;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    sget v2, Lcom/facebook/katana/service/method/ApiLogging;->b:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_4

    :goto_1
    return v0

    .line 299
    :cond_2
    instance-of v1, p0, Lorg/codehaus/jackson/JsonParseException;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_1

    .line 301
    :cond_3
    sget-object v1, Lcom/facebook/katana/service/method/ApiLogging;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 303
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    .line 444
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 445
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 198
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 201
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->u:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->s:Ljava/lang/String;

    .line 209
    :cond_1
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->t:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 210
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 211
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->t:Ljava/lang/String;

    .line 213
    :cond_2
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/method/ApiLogging;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    invoke-static {p0, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 217
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 222
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 223
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 224
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 225
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 226
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 227
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 228
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 229
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/katana/service/method/ApiLogging;->q:J

    .line 231
    return-void

    .line 203
    :catch_0
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/facebook/katana/service/method/ApiLogging;->u:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    .line 449
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 450
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v7, 0x0

    .line 234
    sget-boolean v0, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    if-eqz v0, :cond_1

    .line 236
    invoke-static {p0, v7}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    .line 240
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/facebook/katana/service/method/ApiLogging;->r:J

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    const-string v5, "{\"lid\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const/16 v5, 0x6c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v5, ",\"trx_io_ec\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    sget-object v5, Lcom/facebook/katana/service/method/ApiLogging;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string v5, ",\"api_io_ec\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    sget-object v5, Lcom/facebook/katana/service/method/ApiLogging;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string v5, ",\"api_data_ec\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    sget-object v5, Lcom/facebook/katana/service/method/ApiLogging;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const-string v5, ",\"trx_count\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    sget-object v5, Lcom/facebook/katana/service/method/ApiLogging;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v5, ",\"api_count\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    sget-object v5, Lcom/facebook/katana/service/method/ApiLogging;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 255
    sget-object v2, Lcom/facebook/katana/service/method/ApiLogging;->a:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    const-string v0, ",\"resume_count\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v0, ",\"kill_count\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string v0, ",\"oom_flush\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    const-string v0, ",\"upload_attempt\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    const-string v0, ",\"upload_attempt_composer\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v0, ",\"upload_failure\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    const-string v0, ",\"upload_success\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    const-string v0, ",\"start_time\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    sget-wide v0, Lcom/facebook/katana/service/method/ApiLogging;->q:J

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    const-string v0, ",\"end_time\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    sget-wide v0, Lcom/facebook/katana/service/method/ApiLogging;->r:J

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 278
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 279
    const-string v2, "session_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v2, "start_time"

    sget-wide v5, Lcom/facebook/katana/service/method/ApiLogging;->q:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    const-string v2, "end_time"

    sget-wide v5, Lcom/facebook/katana/service/method/ApiLogging;->r:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 282
    const-string v2, "api_log"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v2, Lcom/facebook/katana/provider/LoggingProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 284
    sput-boolean v7, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    .line 286
    :cond_1
    return-void

    :cond_2
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    .line 454
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 455
    return-void
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/facebook/katana/service/method/ApiLogging;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    .line 462
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 463
    return-void
.end method

.method private static declared-synchronized e(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 322
    const-class v1, Lcom/facebook/katana/service/method/ApiLogging;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->w:Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LRUMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    invoke-static {p0, v0}, Lcom/facebook/katana/service/method/ApiLogging;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 325
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->w:Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LRUMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    monitor-exit v1

    return-void
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/method/ApiLogging;->d:Z

    .line 471
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 472
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    :try_start_0
    sget-object v1, Lcom/facebook/katana/provider/LoggingProvider;->a:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/method/ApiLogging$LoggingQuery;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    const-string v3, "payload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/service/BackgroundRequestService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?id=350685531728"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&lid=105"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    const-string v5, "com.facebook.katana.service.BackgroundRequestService.operation"

    sget-object v6, Lcom/facebook/katana/service/BackgroundRequestService$Operation;->LOG:Lcom/facebook/katana/service/BackgroundRequestService$Operation;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 173
    const-string v5, "com.facebook.katana.service.BackgroundRequestService.data"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v2, "com.facebook.katana.service.BackgroundRequestService.uri"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/facebook/katana/service/method/ApiLogging;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&carrier="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/facebook/katana/service/method/ApiLogging;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/facebook/katana/service/method/ApiLogging;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :cond_2
    if-eqz v1, :cond_3

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_3
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v1

    move-object v1, v6

    :goto_1
    :try_start_2
    sget-object v2, Lcom/facebook/katana/provider/LoggingProvider;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/facebook/katana/service/method/ApiLogging;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    if-eqz v1, :cond_3

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 190
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 186
    :catch_1
    move-exception v2

    goto :goto_1
.end method
