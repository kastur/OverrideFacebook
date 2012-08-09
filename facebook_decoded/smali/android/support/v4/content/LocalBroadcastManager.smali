.class public Landroid/support/v4/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 284
    .line 285
    :cond_0
    iget-object v1, p0, Landroid/support/v4/content/LocalBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 287
    if-gtz v0, :cond_1

    .line 288
    monitor-exit v1

    return-void

    .line 290
    :cond_1
    new-array v4, v0, [Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    .line 291
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 294
    :goto_0
    array-length v0, v4

    if-ge v3, v0, :cond_0

    .line 295
    aget-object v5, v4, v3

    move v1, v2

    .line 296
    :goto_1
    iget-object v0, v5, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 297
    iget-object v0, v5, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->a:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Landroid/support/v4/content/LocalBroadcastManager;->a:Landroid/content/Context;

    iget-object v7, v5, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->a:Landroid/content/Intent;

    invoke-virtual {v0, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 294
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/content/LocalBroadcastManager;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->a()V

    return-void
.end method
