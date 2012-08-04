.class public Lcom/facebook/orca/threadlist/ThreadChooserDialog;
.super Landroid/app/Dialog;
.source "ThreadChooserDialog.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

.field private final c:Lcom/facebook/orca/cache/DataCache;

.field private final d:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private h:Lcom/facebook/orca/threads/ThreadsCollection;

.field private i:Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/String;

    const-string v1, "NEW_THREAD"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/threadlist/ThreadListAdapter;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/facebook/orca/threads/ThreadsCollection;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->h:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 56
    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    .line 57
    iput-object p3, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->c:Lcom/facebook/orca/cache/DataCache;

    .line 58
    iput-object p4, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadChooserDialog;)Lcom/facebook/orca/ops/OrcaServiceOperation;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->c:Lcom/facebook/orca/cache/DataCache;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->c:Lcom/facebook/orca/cache/DataCache;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->h:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 121
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->c()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 164
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 165
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->j:Ljava/lang/String;

    .line 170
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->dismiss()V

    .line 171
    return-void

    .line 166
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_0

    .line 167
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 168
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;)V
    .locals 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->e()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v0

    .line 136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v2, "fetchThreadListParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_thread_list"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$string;->thread_list_loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 146
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->h:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 147
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->c()V

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadChooserDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadChooserDialog;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadChooserDialog;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 153
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->h:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 157
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/orca/R$string;->thread_list_no_threads:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 159
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->h:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 160
    return-void

    .line 159
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->i:Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;

    .line 179
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->e:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->requestWindowFeature(I)Z

    .line 74
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_chooser_dialog:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->setContentView(I)V

    .line 76
    sget v0, Lcom/facebook/orca/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    sget v0, Lcom/facebook/orca/R$id;->thread_list:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->f:Landroid/widget/ListView;

    .line 80
    sget v0, Lcom/facebook/orca/R$id;->threadlist_empty_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->g:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->CHOOSE_DIALOG:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadChooserDialog$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog$1;-><init>(Lcom/facebook/orca/threadlist/ThreadChooserDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadChooserDialog$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog$2;-><init>(Lcom/facebook/orca/threadlist/ThreadChooserDialog;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 105
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a()V

    .line 106
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->d:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->i:Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->i:Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;->a(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method
