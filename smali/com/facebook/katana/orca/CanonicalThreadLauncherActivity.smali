.class public Lcom/facebook/katana/orca/CanonicalThreadLauncherActivity;
.super Landroid/app/Activity;
.source "CanonicalThreadLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/facebook/katana/orca/CanonicalThreadLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/intents/CanonicalThreadHandler;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    if-eqz v0, :cond_0

    .line 41
    new-instance v2, Lcom/facebook/orca/users/UserKey;

    sget-object v3, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v2, v3, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    .line 42
    const-string v0, "user_key"

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/katana/orca/CanonicalThreadLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {p0}, Lcom/facebook/katana/orca/CanonicalThreadLauncherActivity;->finish()V

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/facebook/katana/orca/CanonicalThreadLauncherActivity;->a()V

    .line 30
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 22
    invoke-direct {p0}, Lcom/facebook/katana/orca/CanonicalThreadLauncherActivity;->a()V

    .line 23
    return-void
.end method
