.class Lcom/facebook/orca/notify/InAppNotificationController$4;
.super Ljava/lang/Object;
.source "InAppNotificationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/notify/InAppNotificationController;


# direct methods
.method constructor <init>(Lcom/facebook/orca/notify/InAppNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController$4;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$4;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-static {v0}, Lcom/facebook/orca/notify/InAppNotificationController;->b(Lcom/facebook/orca/notify/InAppNotificationController;)V

    .line 184
    return-void
.end method
