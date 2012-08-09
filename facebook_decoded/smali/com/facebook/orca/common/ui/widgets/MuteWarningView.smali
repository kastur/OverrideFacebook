.class public Lcom/facebook/orca/common/ui/widgets/MuteWarningView;
.super Lcom/facebook/orca/activity/CustomView;
.source "MuteWarningView.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private c:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Button;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Lcom/facebook/orca/prefs/PrefKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v3

    .line 71
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 72
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 74
    sget v0, Lcom/facebook/orca/R$layout;->orca_mute_warning:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(I)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/facebook/orca/R$styleable;->MuteWarningView:[I

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->k:Z

    .line 78
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->l:Z

    .line 79
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->m:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 92
    sget v0, Lcom/facebook/orca/R$id;->mute_warning_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->e:Landroid/view/View;

    .line 93
    sget v0, Lcom/facebook/orca/R$id;->mute_warning_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->f:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/facebook/orca/R$id;->mute_warning_separator_top:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->g:Landroid/view/View;

    .line 95
    sget v0, Lcom/facebook/orca/R$id;->mute_warning_separator_bottom:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->h:Landroid/view/View;

    .line 96
    sget v0, Lcom/facebook/orca/R$id;->mute_warning_unmute_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->i:Landroid/widget/Button;

    .line 98
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->g:Landroid/view/View;

    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->k:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->h:Landroid/view/View;

    iget-boolean v3, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->l:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->i:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$2;-><init>(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b()V

    .line 109
    return-void

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    :cond_1
    move v1, v2

    .line 99
    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->o:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b()V

    .line 151
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->j:Z

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->n:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->mute_warning_thread:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 139
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-static {v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->mute_warning_global:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->d()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->e()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->f()V

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 166
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 167
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->f()V

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->o:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 174
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 175
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->j:Z

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v1, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 193
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->m:I

    if-ne v2, v5, :cond_1

    .line 194
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 196
    :cond_1
    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {v1, p0}, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;->a(Landroid/view/View;)V

    .line 199
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->m:I

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getHeight()I

    move-result v0

    .line 200
    :goto_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v2, v4, v4, v4, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 201
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 202
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 203
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;-><init>(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iput-boolean v5, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->j:Z

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getHeight()I

    move-result v0

    neg-int v0, v0

    goto :goto_1
.end method


# virtual methods
.method public setAnimateOutDirection(I)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->m:I

    .line 254
    return-void
.end method

.method public setAnimationContainer(Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->d:Landroid/widget/FrameLayout;

    .line 119
    return-void
.end method

.method public setDividerOnBottom(Z)V
    .locals 2
    .parameter

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->l:Z

    .line 245
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->h:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 246
    return-void

    .line 245
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDividerOnTop(Z)V
    .locals 2
    .parameter

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->k:Z

    .line 236
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 237
    return-void

    .line 236
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->n:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->o:Lcom/facebook/orca/prefs/PrefKey;

    .line 114
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b()V

    .line 115
    return-void
.end method
