.class public Lcom/facebook/katana/platform/FacebookSyncAdapterService;
.super Landroid/app/Service;
.source "FacebookSyncAdapterService.java"


# static fields
.field private static final a:Z


# instance fields
.field private b:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "FBSyncAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->b:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

    .line 80
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->a:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->b:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 270
    new-instance v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;-><init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->b:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;

    .line 271
    return-void
.end method
