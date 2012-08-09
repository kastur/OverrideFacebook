.class public Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ThreadViewMembersFragmentTab.java"


# instance fields
.field private J:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

.field private K:Landroid/widget/ListView;

.field private L:Landroid/widget/Button;

.field private M:Landroid/view/View;

.field private N:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)Lcom/facebook/orca/threadview/ThreadViewActivity;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->N:Lcom/facebook/orca/threadview/ThreadViewActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->e(I)V

    return-void
.end method

.method private e(I)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->J:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->getItem(I)Ljava/lang/Object;

    .line 123
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 46
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_view_members_tab:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->M:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->J:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->a(Ljava/util/List;)V

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->J:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->notifyDataSetChanged()V

    .line 119
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->L:Landroid/widget/Button;

    sget v1, Lcom/facebook/orca/R$string;->thread_view_members_create_group_button_text:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->L:Landroid/widget/Button;

    sget v1, Lcom/facebook/orca/R$string;->thread_view_members_add_button_text:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->c(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 54
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    const-class v1, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->J:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    .line 57
    sget v0, Lcom/facebook/orca/R$id;->members_list:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->K:Landroid/widget/ListView;

    .line 58
    sget v0, Lcom/facebook/orca/R$id;->members_list_add_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->L:Landroid/widget/Button;

    .line 59
    sget v0, Lcom/facebook/orca/R$id;->members_footer_button_section:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->M:Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->N:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->K:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->K:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->J:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->K:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->K:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->a(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->L:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->w()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->N:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 85
    return-void
.end method
