.class final Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "FacebookSyncAdapterService.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/platform/FacebookSyncAdapterService;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->a:Lcom/facebook/katana/platform/FacebookSyncAdapterService;

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->c:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->b:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/os/Handler;Landroid/content/Context;Landroid/os/Message;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x1

    .line 147
    iget v0, p3, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 149
    :pswitch_0
    invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "FBSyncAdapter"

    const-string v1, "MESSAGE_START"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    iget-object v6, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->b:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;-><init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/content/Context;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;Landroid/os/Handler;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 182
    :pswitch_1
    invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const-string v0, "FBSyncAdapter"

    const-string v1, "MESSAGE_SYNC_BEGIN"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_2
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 244
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 195
    :pswitch_2
    iget v5, p5, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->a:I

    .line 196
    iget-object v6, p5, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->b:Ljava/lang/Exception;

    .line 197
    invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    const-string v0, "FBSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MESSAGE_SYNC_END: error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_4
    const/16 v0, 0xc8

    if-eq v5, v0, :cond_5

    .line 202
    if-eqz v6, :cond_6

    .line 203
    instance-of v0, v6, Ljava/io/IOException;

    if-nez v0, :cond_6

    .line 204
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iput-wide v3, v0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 214
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->b:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;-><init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/content/Context;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;Landroid/os/Handler;ILjava/lang/Exception;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 209
    :cond_6
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iput-wide v3, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_2

    .line 241
    :pswitch_3
    invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    const-string v0, "FBSyncAdapter"

    const-string v1, "MESSAGE_CLEANUP_DONE"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/os/Handler;Landroid/content/Context;Landroid/os/Message;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->a(Landroid/os/Handler;Landroid/content/Context;Landroid/os/Message;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V

    return-void
.end method


# virtual methods
.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v1, "FBSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "performing sync with extras: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->c:Ljava/lang/String;

    .line 110
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 113
    new-instance v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;-><init>(B)V

    .line 116
    new-instance v1, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;

    invoke-direct {v1, p0, p5, v0}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;-><init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->a(Landroid/os/Handler;)V

    .line 126
    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 130
    invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "FBSyncAdapter"

    const-string v1, "=====> Loop end."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    return-void

    .line 103
    :cond_2
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
