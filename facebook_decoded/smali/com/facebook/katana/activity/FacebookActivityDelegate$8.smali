.class Lcom/facebook/katana/activity/FacebookActivityDelegate$8;
.super Ljava/lang/Object;
.source "FacebookActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/binding/AppSession;

.field private synthetic b:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;Lcom/facebook/katana/binding/AppSession;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iput-object p2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 930
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->SEARCH_EXPANDED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    if-ne v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->g(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;->OPENED:Lcom/facebook/katana/activity/FacebookActivityDelegate$NavbarState;

    if-ne v0, v1, :cond_1

    .line 935
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f(Z)V

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->a:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_5

    .line 938
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 939
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->a:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$GetNotificationsAppSessionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 942
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->a:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$BookmarksAppSessionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 944
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 945
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->a:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/FacebookActivityDelegate$LogoutAppSessionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 947
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "within_tab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 949
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$8;->b:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->k(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    .line 952
    :cond_5
    return-void
.end method
