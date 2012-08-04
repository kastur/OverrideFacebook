.class Lcom/facebook/katana/activity/findfriends/StepIntroActivity$1;
.super Ljava/lang/Object;
.source "StepIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/findfriends/StepIntroActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/ContinuousImport;->a(Landroid/content/Context;Z)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    const-class v2, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string v1, "is_part_of_nux"

    iget-object v2, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->a(Lcom/facebook/katana/activity/findfriends/StepIntroActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->a(Lcom/facebook/katana/activity/findfriends/StepIntroActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->finish()V

    .line 99
    :cond_0
    return-void
.end method
