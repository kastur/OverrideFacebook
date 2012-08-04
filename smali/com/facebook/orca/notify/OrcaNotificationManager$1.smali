.class Lcom/facebook/orca/notify/OrcaNotificationManager$1;
.super Ljava/lang/Object;
.source "OrcaNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/orca/threads/Message;

.field private synthetic c:Lcom/facebook/orca/push/PushSource;

.field private synthetic d:Lcom/facebook/orca/notify/OrcaNotificationManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/notify/OrcaNotificationManager;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->d:Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object p2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->b:Lcom/facebook/orca/threads/Message;

    iput-object p4, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->c:Lcom/facebook/orca/push/PushSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->d:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->d:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/notify/OrcaNotificationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->d:Lcom/facebook/orca/notify/OrcaNotificationManager;

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->b:Lcom/facebook/orca/threads/Message;

    iget-object v3, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->c:Lcom/facebook/orca/push/PushSource;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/notify/OrcaNotificationManager;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->d:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->d:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/notify/OrcaNotificationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->d:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$1;->d:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v2}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/notify/OrcaNotificationManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    throw v0
.end method
