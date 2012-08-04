.class public Lcom/facebook/katana/activity/media/CameraLauncherActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CameraLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private b(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-static {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Landroid/app/Activity;)V

    .line 69
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "CAMERA"

    const-string v1, "LoginActivity returned OK, but no session found"

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraLauncherActivity;->finish()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "started_from_launcher"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 67
    const-string v1, "activity_launcher"

    const-string v2, "CameraLauncher"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraLauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 38
    const/16 v0, 0x8a2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/CameraLauncherActivity;->b(Z)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraLauncherActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/CameraLauncherActivity;->b(Z)V

    .line 31
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/CameraLauncherActivity;->b(Z)V

    .line 25
    return-void
.end method
