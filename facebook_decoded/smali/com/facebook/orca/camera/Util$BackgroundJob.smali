.class Lcom/facebook/orca/camera/Util$BackgroundJob;
.super Lcom/facebook/orca/camera/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/facebook/orca/camera/MonitoredActivity;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/camera/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/facebook/orca/camera/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 345
    new-instance v0, Lcom/facebook/orca/camera/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/camera/Util$BackgroundJob$1;-><init>(Lcom/facebook/orca/camera/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->e:Ljava/lang/Runnable;

    .line 354
    iput-object p1, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->a:Lcom/facebook/orca/camera/MonitoredActivity;

    .line 355
    iput-object p3, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->b:Landroid/app/ProgressDialog;

    .line 356
    iput-object p2, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->c:Ljava/lang/Runnable;

    .line 357
    iget-object v0, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->a:Lcom/facebook/orca/camera/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/camera/MonitoredActivity;->a(Lcom/facebook/orca/camera/MonitoredActivity$LifeCycleListener;)V

    .line 358
    iput-object p4, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->d:Landroid/os/Handler;

    .line 359
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/camera/Util$BackgroundJob;)Lcom/facebook/orca/camera/MonitoredActivity;
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->a:Lcom/facebook/orca/camera/MonitoredActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/camera/Util$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 375
    iget-object v0, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 386
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 381
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    iget-object v0, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/orca/camera/Util$BackgroundJob;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
