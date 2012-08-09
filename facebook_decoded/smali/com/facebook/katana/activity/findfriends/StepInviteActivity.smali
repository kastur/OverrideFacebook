.class public Lcom/facebook/katana/activity/findfriends/StepInviteActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "StepInviteActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Lcom/facebook/katana/binding/AppSession;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->h:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/StepInviteActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/findfriends/StepInviteActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/findfriends/StepInviteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/findfriends/StepInviteActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->f:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/findfriends/StepInviteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->h()V

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/findfriends/StepInviteActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity$1;-><init>(Lcom/facebook/katana/activity/findfriends/StepInviteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->i:Z

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->finish()V

    .line 125
    :goto_0
    return-void

    .line 112
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

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/SyncContactsSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {p0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 38
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "new_android_ci_invite_step_enabled"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->h()V

    .line 41
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->finish()V

    .line 65
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "invitee_credentials"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->g:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_part_of_nux"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->i:Z

    .line 52
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->h()V

    .line 54
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->finish()V

    .line 58
    :cond_1
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 60
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->setContentView(I)V

    .line 62
    const/4 v0, -0x1

    const v1, 0x7f0b033d

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->a(ILjava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->g()V

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f0b0462

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepInviteActivity;->h()V

    .line 72
    return-void
.end method
