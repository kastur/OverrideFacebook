.class Lcom/facebook/katana/activity/BugReporter$1;
.super Ljava/util/TimerTask;
.source "BugReporter.java"


# instance fields
.field private synthetic a:Ljava/io/File;

.field private synthetic b:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BugReporter;Ljava/io/File;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p2, p0, Lcom/facebook/katana/activity/BugReporter$1;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/facebook/katana/activity/BugReporter$1;->b:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/katana/activity/BugReporter$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 55
    iget-object v0, p0, Lcom/facebook/katana/activity/BugReporter$1;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 56
    return-void
.end method
