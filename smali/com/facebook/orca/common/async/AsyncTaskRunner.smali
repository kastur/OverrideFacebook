.class public Lcom/facebook/orca/common/async/AsyncTaskRunner;
.super Ljava/lang/Object;
.source "AsyncTaskRunner.java"


# instance fields
.field private final a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/async/AsyncTaskRunner$1;-><init>(Lcom/facebook/orca/common/async/AsyncTaskRunner;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a:Landroid/os/AsyncTask;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    return-void
.end method
