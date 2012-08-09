.class Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;
.super Ljava/lang/Object;
.source "InAppNotificationController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/notify/InAppNotificationController;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/notify/InAppNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/notify/InAppNotificationController;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController;Z)Z

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-static {v0}, Lcom/facebook/orca/notify/InAppNotificationController;->e(Lcom/facebook/orca/notify/InAppNotificationController;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-static {v0}, Lcom/facebook/orca/notify/InAppNotificationController;->e(Lcom/facebook/orca/notify/InAppNotificationController;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/orca/notify/InAppNotificationController;->b(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    .line 297
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/threads/Message;)V

    .line 299
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController;Z)Z

    .line 289
    return-void
.end method
