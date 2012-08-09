.class public Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ThreadViewDetailsFragmentTab.java"


# instance fields
.field private J:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

.field private K:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

.field private L:Landroid/widget/Button;

.field private M:Lcom/facebook/orca/threadview/ThreadViewActivity;

.field private N:Lcom/facebook/orca/threads/ThreadSummary;

.field private O:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    return-void
.end method

.method private E()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/facebook/orca/threadview/ThreadNamePicker;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->M:Lcom/facebook/orca/threadview/ThreadViewActivity;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->O:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadNamePicker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadNamePicker;->a(Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;)V

    .line 121
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->show()V

    goto :goto_0
.end method

.method private F()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->M:Lcom/facebook/orca/threadview/ThreadViewActivity;

    const-class v2, Lcom/facebook/orca/mutators/LeaveThreadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v1, "threadid"

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a(Landroid/content/Intent;I)V

    .line 128
    return-void
.end method

.method private G()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->J:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->O:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Z)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    .line 138
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->O:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    .line 139
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->h()Lcom/facebook/orca/server/ModifyThreadParams;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->M:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/ModifyThreadParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->O:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->E()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-static {p0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->F()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v3

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v4

    .line 99
    iget-object v5, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->J:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->L:Landroid/widget/Button;

    if-nez v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->O:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->J:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->K:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a()V

    .line 105
    return-void

    :cond_2
    move v0, v2

    .line 99
    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->G()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_view_details_tab:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 85
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->M:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->finish()V

    .line 89
    :cond_0
    return-void
.end method

.method final a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    .line 93
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->c()V

    .line 94
    return-void
.end method

.method final b()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->M:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->l()V

    .line 149
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->c(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/facebook/orca/R$id;->thread_view_details_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->J:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    .line 48
    sget v0, Lcom/facebook/orca/R$id;->thread_view_notifications_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->K:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    .line 49
    sget v0, Lcom/facebook/orca/R$id;->thread_view_details_leave:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->L:Landroid/widget/Button;

    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->M:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->J:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->K:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->M:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->setThreadId(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->K:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->setDetailsTab(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->L:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->u()V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->K:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a()V

    .line 80
    return-void
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->w()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->M:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 74
    return-void
.end method
