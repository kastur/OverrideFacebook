.class public Lcom/facebook/katana/c2dm/RegistrationRetryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationRetryReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-static {p1, p2}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 19
    return-void
.end method
