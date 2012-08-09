.class Lcom/facebook/orca/sms/SmsSendMessageHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "SmsSendMessageHandler.java"


# direct methods
.method constructor <init>(Lcom/facebook/orca/sms/SmsSendMessageHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/facebook/orca/sms/SmsSendMessageHandler$2;->getResultCode()I

    .line 146
    return-void
.end method
