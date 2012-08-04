.class Lcom/facebook/orca/common/async/AsyncTaskRunner$1;
.super Landroid/os/AsyncTask;
.source "AsyncTaskRunner.java"


# annotations
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


# instance fields
.field private synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/async/AsyncTaskRunner;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p2, p0, Lcom/facebook/orca/common/async/AsyncTaskRunner$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/common/async/AsyncTaskRunner$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/orca/common/async/AsyncTaskRunner$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
