.class public Lcom/facebook/orca/threadview/ThreadTitleView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ThreadTitleView.java"


# instance fields
.field private a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

.field private e:Lcom/facebook/orca/presence/PresenceState;

.field private f:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private g:Lcom/facebook/orca/users/LastActiveHelper;

.field private h:Lcom/facebook/orca/threads/ThreadSummary;

.field private i:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

.field private j:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->e:Lcom/facebook/orca/presence/PresenceState;

    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->e:Lcom/facebook/orca/presence/PresenceState;

    .line 52
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->a()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->e:Lcom/facebook/orca/presence/PresenceState;

    .line 57
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->a()V

    .line 58
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 62
    const-class v0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    .line 63
    const-class v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->f:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 64
    const-class v0, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->i:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    .line 65
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    const-class v0, Lcom/facebook/orca/users/LastActiveHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/LastActiveHelper;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->g:Lcom/facebook/orca/users/LastActiveHelper;

    .line 68
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_title:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->a(I)V

    .line 69
    sget v0, Lcom/facebook/orca/R$id;->thread_title_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    .line 70
    sget v0, Lcom/facebook/orca/R$id;->thread_title_status:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/facebook/orca/R$id;->thread_title_progress:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->c:Landroid/widget/ProgressBar;

    .line 73
    new-instance v0, Lcom/facebook/orca/threadview/ThreadTitleView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadTitleView$1;-><init>(Lcom/facebook/orca/threadview/ThreadTitleView;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->j:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->j:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;)V

    .line 80
    return-void
.end method

.method private a(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->e:Lcom/facebook/orca/presence/PresenceState;

    if-ne v0, p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadTitleView;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadTitleView;->a(Lcom/facebook/orca/presence/PresenceState;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->e:Lcom/facebook/orca/presence/PresenceState;

    .line 137
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->d()V

    .line 138
    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setMaxLines(I)V

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setMaxLines(I)V

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Z)V

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->c()Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Lcom/facebook/orca/presence/PresenceState;)V

    .line 108
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->d()V

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Z)V

    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->d()V

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Z)V

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->e:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v2}, Lcom/facebook/orca/presence/PresenceState;->a()Lcom/facebook/orca/presence/Availability;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/presence/Availability;->AVAILABLE:Lcom/facebook/orca/presence/Availability;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->g:Lcom/facebook/orca/users/LastActiveHelper;

    invoke-virtual {v2}, Lcom/facebook/orca/users/LastActiveHelper;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    :cond_0
    sget v2, Lcom/facebook/orca/R$string;->presence_active_now:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    .line 160
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_1
    return-void

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->g:Lcom/facebook/orca/users/LastActiveHelper;

    invoke-virtual {v2}, Lcom/facebook/orca/users/LastActiveHelper;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->g:Lcom/facebook/orca/users/LastActiveHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/LastActiveHelper;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->e:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v2}, Lcom/facebook/orca/presence/PresenceState;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    sget v2, Lcom/facebook/orca/R$string;->presence_mobile:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->f:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v2

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->i:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/util/PhoneNumberFormatter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadParticipant;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    move-object v0, v1

    goto :goto_0

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 169
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->c:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    return-void

    .line 169
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->onAttachedToWindow()V

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Z)V

    .line 86
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->c()V

    .line 87
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->onDetachedFromWindow()V

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Z)V

    .line 93
    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Z)V

    .line 94
    return-void
.end method

.method public setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setData(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->g:Lcom/facebook/orca/users/LastActiveHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/users/LastActiveHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 101
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->c()V

    .line 102
    return-void
.end method
