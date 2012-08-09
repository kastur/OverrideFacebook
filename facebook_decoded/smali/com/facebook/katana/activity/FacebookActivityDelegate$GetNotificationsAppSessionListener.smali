.class Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FacebookActivityDelegate.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1649
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/ui/PopupViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->u(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener$1;-><init>(Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1660
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xc8

    .line 1628
    if-ne p2, v1, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->q(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->s(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1632
    if-ne p2, v1, :cond_1

    .line 1637
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(J)J

    .line 1639
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->t(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    .line 1641
    :cond_2
    return-void
.end method
