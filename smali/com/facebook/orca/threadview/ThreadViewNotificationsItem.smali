.class public Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ThreadViewNotificationsItem.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private c:Lcom/facebook/orca/prefs/UiCounters;

.field private d:Lcom/facebook/orca/intents/MessagingIntentUris;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

.field private h:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

.field private i:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

.field private j:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/lang/String;

.field private m:Lcom/facebook/orca/notify/NotificationSetting;

.field private n:Lcom/facebook/orca/notify/NotificationSetting;

.field private o:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->c()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->c()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->c()V

    .line 63
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    if-ne p1, v0, :cond_2

    .line 120
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->a:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/notify/NotificationSetting;

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 133
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->c:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "thread_mute"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->c:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "thread_mute"

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Z)V

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->o:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    if-eq p1, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->o:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->b()V

    .line 141
    :cond_1
    return-void

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    if-ne p1, v0, :cond_3

    .line 122
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->b:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    if-ne p1, v0, :cond_4

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->j:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    if-ne p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Z)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    const/16 v2, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 166
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-static {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->f:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->j:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-static {v0, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    .line 180
    invoke-virtual {v0, v6}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setChecked(Z)V

    goto :goto_1

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v0

    .line 183
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 184
    sget v2, Lcom/facebook/orca/R$string;->thread_notifications_muted_until:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->j:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    sget v2, Lcom/facebook/orca/R$string;->thread_notifications_muted_one_hour:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->k:Landroid/widget/TextView;

    sget v2, Lcom/facebook/orca/R$string;->global_notifications_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_2
    return-void

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-static {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v2

    mul-long/2addr v2, v7

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 194
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 195
    sget v2, Lcom/facebook/orca/R$string;->global_notifications_muted_until:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-static {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 198
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v2

    mul-long/2addr v2, v7

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 199
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->j:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setChecked(Z)V

    goto :goto_2

    .line 202
    :cond_5
    if-eqz p1, :cond_6

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    sget v2, Lcom/facebook/orca/R$string;->thread_notifications_muted_one_hour:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setChecked(Z)V

    goto :goto_2

    .line 205
    :cond_6
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 206
    sget v2, Lcom/facebook/orca/R$string;->thread_notifications_muted_until:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 211
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setChecked(Z)V

    goto/16 :goto_2

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setChecked(Z)V

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)Lcom/facebook/orca/intents/MessagingIntentUris;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->d:Lcom/facebook/orca/intents/MessagingIntentUris;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 67
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 68
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 69
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->c:Lcom/facebook/orca/prefs/UiCounters;

    .line 70
    const-class v0, Lcom/facebook/orca/intents/MessagingIntentUris;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/intents/MessagingIntentUris;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->d:Lcom/facebook/orca/intents/MessagingIntentUris;

    .line 72
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_view_notifications_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(I)V

    .line 74
    sget v0, Lcom/facebook/orca/R$id;->thread_view_notifications_options:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->e:Landroid/view/View;

    .line 75
    sget v0, Lcom/facebook/orca/R$id;->thread_view_notifications_item_global_options:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->f:Landroid/view/View;

    .line 76
    sget v0, Lcom/facebook/orca/R$id;->thread_view_notifications_item_alerts_on:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    .line 77
    sget v0, Lcom/facebook/orca/R$id;->thread_view_notifications_item_alerts_off:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    .line 78
    sget v0, Lcom/facebook/orca/R$id;->thread_view_notifications_item_alerts_mute_one_hour:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    .line 79
    sget v0, Lcom/facebook/orca/R$id;->thread_view_notifications_item_alerts_mute_morning:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->j:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    .line 80
    sget v0, Lcom/facebook/orca/R$id;->thread_view_notifications_item_global_alert_message:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->k:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$string;->thread_notifications_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$string;->thread_notifications_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)V

    .line 91
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->g:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->h:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->i:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->j:Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationItemRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    sget v2, Lcom/facebook/orca/R$string;->thread_notifications_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 147
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-static {v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    sget v2, Lcom/facebook/orca/R$string;->global_notifications_muted_msg:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    :goto_0
    sget v2, Lcom/facebook/orca/R$string;->global_notifications_goto_settings:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;

    invoke-direct {v3, p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    sget v0, Lcom/facebook/orca/R$string;->dialog_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 163
    return-void

    .line 150
    :cond_0
    sget v2, Lcom/facebook/orca/R$string;->global_notifications_disabled_msg:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->m:Lcom/facebook/orca/notify/NotificationSetting;

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->n:Lcom/facebook/orca/notify/NotificationSetting;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Z)V

    .line 116
    return-void
.end method

.method public setDetailsTab(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->o:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    .line 110
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->l:Ljava/lang/String;

    .line 106
    return-void
.end method
