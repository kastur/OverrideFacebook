.class Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FacebookActivityDelegate.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->v(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->v(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Landroid/app/Activity;)V

    .line 1717
    return-void
.end method
