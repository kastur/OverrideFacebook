.class public Lcom/facebook/orca/prefs/NotificationEnabledPreference;
.super Landroid/preference/DialogPreference;
.source "NotificationEnabledPreference.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private c:Lcom/facebook/orca/notify/NotificationSetting;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-static {v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 52
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 53
    sget v2, Lcom/facebook/orca/R$string;->preference_notifications_muted_until:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v1}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    sget v1, Lcom/facebook/orca/R$string;->preference_notifications_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    sget v1, Lcom/facebook/orca/R$string;->preference_notifications_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    .line 100
    if-nez p1, :cond_1

    .line 101
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->a:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 111
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    .line 112
    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 114
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 115
    invoke-direct {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 108
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 109
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->b:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 41
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 42
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 45
    invoke-direct {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method private a(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 82
    iput p2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->d:I

    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/NotificationEnabledPreference;Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 90
    iget v2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->d:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    move v2, v0

    .line 91
    :goto_0
    if-eqz p1, :cond_0

    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget v3, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->d:I

    invoke-direct {p0, v3}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(I)V

    .line 94
    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->notifyDependencyChange(Z)V

    .line 97
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 90
    goto :goto_0

    :cond_2
    move v0, v1

    .line 94
    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v1

    .line 64
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    sget v3, Lcom/facebook/orca/R$string;->notification_enable_notifications:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/facebook/orca/R$string;->notification_mute_for_one_hour_notifications:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget v4, Lcom/facebook/orca/R$string;->notification_mute_until:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 70
    sget v1, Lcom/facebook/orca/R$string;->preference_notifications_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    new-instance v0, Lcom/facebook/orca/prefs/NotificationEnabledPreference$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference$1;-><init>(Lcom/facebook/orca/prefs/NotificationEnabledPreference;)V

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {p1, v7, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    return-void
.end method
