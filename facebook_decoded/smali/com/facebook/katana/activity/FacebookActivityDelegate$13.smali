.class Lcom/facebook/katana/activity/FacebookActivityDelegate$13;
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
    .line 1447
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$13;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$13;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/katana/activity/NavBarHost;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$13;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/NavBarHost;

    invoke-interface {v0, p1}, Lcom/facebook/katana/activity/NavBarHost;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V

    .line 1454
    :cond_0
    return-void
.end method
