.class Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity$1;
.super Landroid/text/style/ClickableSpan;
.source "StepHowItWorksActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;

    invoke-static {v1}, Lcom/facebook/katana/Constants$URL;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method
