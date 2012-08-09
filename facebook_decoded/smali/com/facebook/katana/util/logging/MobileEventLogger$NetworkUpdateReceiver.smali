.class public final Lcom/facebook/katana/util/logging/MobileEventLogger$NetworkUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileEventLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 892
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Lcom/facebook/katana/util/logging/MobileEventLogger;Landroid/content/Context;)V

    .line 893
    return-void
.end method
