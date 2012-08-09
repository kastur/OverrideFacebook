.class Lcom/facebook/orca/notify/OrcaNotificationManager$2;
.super Ljava/lang/Object;
.source "OrcaNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/orca/notify/OrcaNotificationManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/notify/OrcaNotificationManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object p2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/notify/OrcaNotificationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->c(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/notify/OrcaNotificationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v2}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/notify/OrcaNotificationManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    throw v0
.end method
