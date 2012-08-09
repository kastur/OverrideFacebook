.class public Lcom/facebook/katana/orca/ThreadListLauncherActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ThreadListLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/facebook/katana/orca/ThreadListLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    const-string v1, "fb://messaging"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 35
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    const-string v1, "activity_launcher"

    const-string v2, "MessengerLauncher"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/ThreadListLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/facebook/katana/orca/ThreadListLauncherActivity;->finish()V

    .line 39
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-direct {p0}, Lcom/facebook/katana/orca/ThreadListLauncherActivity;->f()V

    .line 29
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/orca/ThreadListLauncherActivity;->f()V

    .line 22
    return-void
.end method
