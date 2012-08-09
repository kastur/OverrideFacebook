.class Lcom/facebook/katana/activity/FacebookActivityDelegate$2;
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
    .line 566
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$2;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 569
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$2;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    sget-object v1, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->FRIEND_REQUESTS:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    const-string v2, "fb://friends/requests/"

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$2;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/util/logging/InteractionLogger;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElements;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$2;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/ui/PopupViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$2;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/ui/PopupViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$2;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    sget-object v1, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->FRIEND_REQUESTS:Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;)V

    goto :goto_0
.end method
