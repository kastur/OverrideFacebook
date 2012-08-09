.class Lcom/facebook/katana/activity/FacebookActivityDelegate$4;
.super Ljava/lang/Object;
.source "FacebookActivityDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$4;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 608
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$4;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    sget-object v1, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->NOTIFICATIONS:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    const-string v2, "fb://notifications"

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$4;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/util/logging/InteractionLogger;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElements;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$4;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/ui/PopupViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$4;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/ui/PopupViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$4;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$4;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/service/method/NotificationsGet;->a(Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookNotifications;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/NotificationsLogger;->a(Landroid/content/Context;I)V

    .line 622
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$4;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    sget-object v1, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->NOTIFICATIONS:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;)V

    goto :goto_0
.end method
