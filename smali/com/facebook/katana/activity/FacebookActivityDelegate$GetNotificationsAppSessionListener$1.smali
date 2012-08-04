.class Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener$1;
.super Ljava/lang/Object;
.source "FacebookActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener$1;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener$1;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

    iget-object v0, v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/ui/PopupViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->g()Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->NOTIFICATIONS:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    if-ne v0, v1, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener$1;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

    iget-object v0, v0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    sget-object v1, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->NOTIFICATIONS:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;)V

    .line 1657
    :cond_0
    return-void
.end method
