.class public Lcom/facebook/katana/FacebookAccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FacebookAccountReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    .line 28
    const-string v0, "FacebookAccountReceiver"

    invoke-static {v0, v5}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "FacebookAccountReceiver"

    const-string v1, "----> onReceive"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/facebook/katana/provider/UserValuesManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 34
    const-string v0, "FacebookAccountReceiver"

    invoke-static {v0, v5}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const-string v0, "FacebookAccountReceiver"

    const-string v1, "Account does not exist."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 41
    :cond_2
    invoke-static {p1, v0}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_3

    .line 44
    const-string v1, "FacebookAccountReceiver"

    invoke-static {v1, v5}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const-string v1, "FacebookAccountReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Account still exists: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_3
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 55
    const-string v2, "FacebookAccountReceiver"

    invoke-static {v2, v5}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    const-string v2, "FacebookAccountReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Session status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_4
    sget-object v2, Lcom/facebook/katana/FacebookAccountReceiver$1;->a:[I

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_1
    const-string v2, "FacebookAccountReceiver"

    invoke-static {v2, v5}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    const-string v2, "FacebookAccountReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Logging out: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_5
    invoke-virtual {v1, p1}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
