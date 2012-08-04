.class public Lcom/facebook/katana/activity/media/VaultOptIn;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "VaultOptIn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static e:Lcom/facebook/katana/activity/nux/BasicNuxController;


# instance fields
.field private f:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    return-void
.end method

.method public static declared-synchronized f()Lcom/facebook/katana/activity/nux/BasicNuxController;
    .locals 3

    .prologue
    .line 30
    const-class v1, Lcom/facebook/katana/activity/media/VaultOptIn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/activity/media/VaultOptIn;->e:Lcom/facebook/katana/activity/nux/BasicNuxController;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/facebook/katana/activity/media/VaultOptIn$1;

    const-string v2, "VAULT_OPT_IN"

    invoke-direct {v0, v2}, Lcom/facebook/katana/activity/media/VaultOptIn$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/activity/media/VaultOptIn;->e:Lcom/facebook/katana/activity/nux/BasicNuxController;

    .line 40
    :cond_0
    sget-object v0, Lcom/facebook/katana/activity/media/VaultOptIn;->e:Lcom/facebook/katana/activity/nux/BasicNuxController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030114

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/VaultOptIn;->setContentView(I)V

    .line 50
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "vault_sync_mode"

    const-string v2, "WIFI_ONLY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "MOBILE_RADIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const v0, 0x7f0802fe

    move v1, v0

    .line 62
    :goto_0
    const v0, 0x7f0802fd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/VaultOptIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/VaultOptIn;->f:Landroid/widget/RadioGroup;

    .line 63
    iget-object v0, p0, Lcom/facebook/katana/activity/media/VaultOptIn;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 66
    const v0, 0x7f080301

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/VaultOptIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void

    .line 57
    :cond_0
    const-string v1, "WIFI_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const v0, 0x7f0802ff

    move v1, v0

    goto :goto_0

    .line 60
    :cond_1
    const v0, 0x7f080300

    move v1, v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/VaultOptIn;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    const-string v2, "vault_sync_mode"

    const-string v3, "OFF"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    packed-switch v0, :pswitch_data_1

    .line 97
    const-string v0, "OFF"

    .line 101
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/service/vault/VaultService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const-string v3, "job"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/media/VaultOptIn;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 110
    const-string v2, "vault_sync_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    :cond_0
    invoke-static {}, Lcom/facebook/katana/activity/media/VaultOptIn;->f()Lcom/facebook/katana/activity/nux/BasicNuxController;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/VaultOptIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/activity/nux/BasicNuxController;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/VaultOptIn;->finish()V

    goto :goto_0

    .line 90
    :pswitch_1
    const-string v0, "MOBILE_RADIO"

    goto :goto_1

    .line 93
    :pswitch_2
    const-string v0, "WIFI_ONLY"

    goto :goto_1

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x7f080301
        :pswitch_0
    .end packed-switch

    .line 88
    :pswitch_data_1
    .packed-switch 0x7f0802fe
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 72
    invoke-static {}, Lcom/facebook/katana/activity/media/VaultOptIn;->f()Lcom/facebook/katana/activity/nux/BasicNuxController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/katana/activity/nux/BasicNuxController;->c(Landroid/content/Context;)V

    .line 73
    return-void
.end method
