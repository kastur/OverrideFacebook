.class Lcom/facebook/orca/messageview/MessageViewActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MessageViewActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/messageview/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageViewActivity$3;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity$3;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->d(Lcom/facebook/orca/messageview/MessageViewActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 293
    const-string v0, "orca:MessageViewActivity"

    const-string v1, "Called onReceive after it was unregistered."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const-string v0, "threadid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity$3;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-static {v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->e(Lcom/facebook/orca/messageview/MessageViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "message_ids"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity$3;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-static {v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->f(Lcom/facebook/orca/messageview/MessageViewActivity;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity$3;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->finish()V

    goto :goto_0
.end method
