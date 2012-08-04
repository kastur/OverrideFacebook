.class public Lcom/facebook/katana/activity/findfriends/StepIntroActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "StepIntroActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/StepIntroActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->e:Z

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$1;-><init>(Lcom/facebook/katana/activity/findfriends/StepIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$2;-><init>(Lcom/facebook/katana/activity/findfriends/StepIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->setContentView(I)V

    .line 36
    const/4 v0, -0x1

    const v1, 0x7f0b033d

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->a(ILjava/lang/String;)V

    .line 38
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "new_android_ci_enabled"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "new_android_ci_invite_step_enabled"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_part_of_nux"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->e:Z

    .line 46
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->f()V

    .line 47
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0b044f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->e:Z

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "android_sync_setup_flow_enabled"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/SyncContactsSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->finish()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method
