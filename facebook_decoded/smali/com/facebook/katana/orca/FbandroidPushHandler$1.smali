.class Lcom/facebook/katana/orca/FbandroidPushHandler$1;
.super Ljava/lang/Object;
.source "FbandroidPushHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/orca/FbandroidPushHandler;


# direct methods
.method constructor <init>(Lcom/facebook/katana/orca/FbandroidPushHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidPushHandler$1;->a:Lcom/facebook/katana/orca/FbandroidPushHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iget-object v1, p0, Lcom/facebook/katana/orca/FbandroidPushHandler$1;->a:Lcom/facebook/katana/orca/FbandroidPushHandler;

    invoke-static {v1}, Lcom/facebook/katana/orca/FbandroidPushHandler;->a(Lcom/facebook/katana/orca/FbandroidPushHandler;)Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 46
    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->d()V

    .line 47
    return-void
.end method
