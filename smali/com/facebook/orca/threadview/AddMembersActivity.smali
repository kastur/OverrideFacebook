.class public Lcom/facebook/orca/threadview/AddMembersActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "AddMembersActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/orca/cache/DataCache;

.field private f:Landroid/support/v4/app/FragmentManager;

.field private g:Landroid/view/inputmethod/InputMethodManager;

.field private h:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

.field private i:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private j:Landroid/widget/Button;

.field private k:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

.field private l:Lcom/facebook/orca/threads/ThreadSummary;

.field private m:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/AddMembersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->g()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->k:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->add_members_missing_people:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->g:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 146
    new-instance v1, Lcom/facebook/orca/server/AddMembersParams;

    iget-object v2, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->l:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/server/AddMembersParams;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    const-string v2, "addMembersParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "add_members"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 67
    sget v0, Lcom/facebook/orca/R$layout;->orca_add_members:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 69
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->e:Lcom/facebook/orca/cache/DataCache;

    .line 70
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->f:Landroid/support/v4/app/FragmentManager;

    .line 71
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->g:Landroid/view/inputmethod/InputMethodManager;

    .line 72
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->h:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    .line 73
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 74
    sget v0, Lcom/facebook/orca/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->i:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 75
    sget v0, Lcom/facebook/orca/R$id;->add_members_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->j:Landroid/widget/Button;

    .line 77
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->l:Lcom/facebook/orca/threads/ThreadSummary;

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->l:Lcom/facebook/orca/threads/ThreadSummary;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->finish()V

    .line 129
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->h:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->i:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->h:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->l:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->f:Landroid/support/v4/app/FragmentManager;

    sget v1, Lcom/facebook/orca/R$id;->add_members_contact_picker:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->k:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->j:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/threadview/AddMembersActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/AddMembersActivity$1;-><init>(Lcom/facebook/orca/threadview/AddMembersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->k:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;->ADD_MEMBERS:Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;)V

    .line 101
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->l:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 103
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    new-instance v3, Lcom/facebook/orca/users/PickedUser;

    new-instance v4, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    const/4 v0, 0x0

    invoke-direct {v3, v4, v0}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->k:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 113
    const-string v0, "addMembersOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadview/AddMembersActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/AddMembersActivity$2;-><init>(Lcom/facebook/orca/threadview/AddMembersActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v2, Lcom/facebook/orca/R$string;->add_members_progress:I

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto/16 :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "add_members"

    return-object v0
.end method
