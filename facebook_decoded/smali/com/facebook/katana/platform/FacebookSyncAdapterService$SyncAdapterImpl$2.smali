.class Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;
.super Ljava/lang/Object;
.source "FacebookSyncAdapterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Landroid/content/SyncResult;

.field private synthetic c:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;

.field private synthetic d:Landroid/os/Handler;

.field private synthetic e:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;


# direct methods
.method constructor <init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/content/Context;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->e:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

    iput-object p2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->b:Landroid/content/SyncResult;

    iput-object p4, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->c:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;

    iput-object p5, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 159
    if-nez v0, :cond_0

    .line 160
    const-string v0, "FBSyncAdapter"

    const-string v1, "Cannot sync due to missing active session"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->b:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 163
    iget-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->e:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

    iget-object v0, v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->a:Lcom/facebook/katana/platform/FacebookSyncAdapterService;

    iget-object v1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->e:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

    invoke-static {v1}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->a(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;)Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->c:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 171
    iget-object v1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0
.end method
