.class Lcom/facebook/orca/notify/InAppNotificationController$2;
.super Ljava/lang/Object;
.source "InAppNotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/notify/InAppNotificationController;


# direct methods
.method constructor <init>(Lcom/facebook/orca/notify/InAppNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController$2;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$2;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    sget-object v1, Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;->SLIDE_OUT:Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V

    .line 143
    return-void
.end method
