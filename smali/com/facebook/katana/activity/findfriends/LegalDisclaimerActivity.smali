.class public Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "LegalDisclaimerActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# instance fields
.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->e:Landroid/widget/Button;

    .line 34
    new-instance v0, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$1;-><init>(Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;)V

    .line 42
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const/4 v0, -0x1

    const v1, 0x7f0b01b0

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->a(ILjava/lang/String;)V

    .line 46
    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$2;-><init>(Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;Landroid/net/Uri;)V

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f0b042a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 96
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0445

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0269

    new-instance v2, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$3;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$3;-><init>(Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->finish()V

    .line 77
    return-void
.end method
