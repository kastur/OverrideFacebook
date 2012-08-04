.class Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$1;
.super Ljava/lang/Object;
.source "DefaultAndroidThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil;Ljava/lang/Runnable;Landroid/os/HandlerThread;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p2, p0, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$1;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$1;->b:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$1;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$1;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    throw v0
.end method
