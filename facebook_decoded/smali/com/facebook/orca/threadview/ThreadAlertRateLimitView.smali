.class public Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;
.super Lcom/facebook/orca/activity/CustomView;
.source "ThreadAlertRateLimitView.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private c:Lcom/facebook/orca/cache/DataCache;

.field private d:Lcom/facebook/orca/prefs/UiCounters;

.field private e:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private f:Ljava/lang/String;

.field private g:Lcom/facebook/orca/prefs/PrefKey;

.field private h:Lcom/facebook/orca/threads/MessagesCollection;

.field private i:Lcom/facebook/orca/compose/ComposeMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 46
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->i:Lcom/facebook/orca/compose/ComposeMode;

    .line 50
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->c()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->i:Lcom/facebook/orca/compose/ComposeMode;

    .line 55
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->c()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->i:Lcom/facebook/orca/compose/ComposeMode;

    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->c()V

    .line 61
    return-void
.end method

.method private a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->g:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e()V

    .line 124
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 65
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 66
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 67
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->c:Lcom/facebook/orca/cache/DataCache;

    .line 68
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    .line 70
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_alert_rate_limit_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a(I)V

    .line 72
    new-instance v0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$1;-><init>(Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$2;-><init>(Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 88
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "thread_mute_rate_limit_dismissed"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e()V

    .line 113
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->setVisibility(I)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private f()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 129
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    const-string v4, "thread_mute_rate_limit_dismissed"

    invoke-virtual {v3, v4}, Lcom/facebook/orca/prefs/UiCounters;->b(Ljava/lang/String;)J

    move-result-wide v3

    sub-long v3, v1, v3

    sget-wide v5, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->i:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v4, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-eq v3, v4, :cond_0

    .line 142
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v3}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v3

    .line 143
    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v5, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v4

    .line 146
    iget-object v5, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {v3}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {v4}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    const-string v4, "thread_mute"

    invoke-virtual {v3, v4}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_0

    .line 156
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    const-string v4, "thread_mute"

    iget-object v5, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 161
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->d:Lcom/facebook/orca/prefs/UiCounters;

    const-string v4, "thread_mute"

    iget-object v5, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/prefs/UiCounters;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()Z
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->h:Lcom/facebook/orca/threads/MessagesCollection;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    .line 178
    if-eqz v3, :cond_0

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3

    sget-wide v6, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v4, v6

    sub-long v4, v0, v4

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->h:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 184
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-lez v7, :cond_3

    .line 186
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 187
    add-int/lit8 v0, v1, 0x1

    .line 193
    :goto_2
    if-ge v0, v9, :cond_2

    move v1, v0

    .line 195
    goto :goto_1

    :cond_2
    move v1, v0

    .line 198
    :cond_3
    if-lt v1, v9, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method final a(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->h:Lcom/facebook/orca/threads/MessagesCollection;

    .line 98
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e()V

    .line 99
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->f:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->g:Lcom/facebook/orca/prefs/PrefKey;

    .line 93
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e()V

    .line 94
    return-void
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->i:Lcom/facebook/orca/compose/ComposeMode;

    .line 103
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->e()V

    .line 104
    return-void
.end method
