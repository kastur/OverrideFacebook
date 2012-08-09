.class Lcom/facebook/katana/activity/findfriends/StepIntroActivity$2;
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
    .line 104
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$2;->a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$2;->a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    const-class v2, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepIntroActivity$2;->a:Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method
