.class public Lcom/facebook/katana/orca/FbandroidPushHandler;
.super Lcom/facebook/orca/push/AbstractPushHandler;
.source "FbandroidPushHandler.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/facebook/orca/notify/OrcaForegroundActivityListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/orca/notify/OrcaForegroundActivityListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/push/AbstractPushHandler;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidPushHandler;->a:Landroid/os/Handler;

    .line 26
    iput-object p2, p0, Lcom/facebook/katana/orca/FbandroidPushHandler;->b:Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/orca/FbandroidPushHandler;)Lcom/facebook/orca/notify/OrcaForegroundActivityListener;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidPushHandler;->b:Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidPushHandler;->b:Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;->a()Landroid/app/Activity;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/facebook/orca/threadview/ThreadViewActivity;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v1, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidPushHandler;->a:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/orca/FbandroidPushHandler$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/orca/FbandroidPushHandler$1;-><init>(Lcom/facebook/katana/orca/FbandroidPushHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
