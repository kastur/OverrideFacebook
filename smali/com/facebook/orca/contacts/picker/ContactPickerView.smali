.class public Lcom/facebook/orca/contacts/picker/ContactPickerView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ContactPickerView.java"


# instance fields
.field private a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

.field private b:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

.field private k:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;

.field private l:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->l:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    .line 80
    invoke-direct {p0, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V

    .line 81
    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 259
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FILTERING:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    if-ne p1, v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Z)V

    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V
    .locals 1
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->l:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    .line 299
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->j:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->j:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 302
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    .line 86
    sget v0, Lcom/facebook/orca/R$layout;->orca_contact_picker_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(I)V

    .line 87
    sget v0, Lcom/facebook/orca/R$id;->friends_list:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Landroid/widget/ListView;

    .line 88
    sget v0, Lcom/facebook/orca/R$id;->friends_list_empty_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 89
    sget v0, Lcom/facebook/orca/R$id;->friends_list_mask:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Landroid/view/View;

    .line 90
    sget v0, Lcom/facebook/orca/R$id;->friends_list_search:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    .line 91
    sget v0, Lcom/facebook/orca/R$id;->dummy_focus_elt:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Landroid/view/View;

    .line 92
    sget v0, Lcom/facebook/orca/R$id;->contact_picker_search_magnifier:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/view/View;

    .line 93
    sget v0, Lcom/facebook/orca/R$id;->contact_picker_search_progress:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->i:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$2;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$4;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$5;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    sget v1, Lcom/facebook/orca/R$string;->contacts_loading:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(I)V

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 148
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$6;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$6;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    .line 159
    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    const-string v2, "orca:ContactPickerView"

    const-string v3, "Search box focus changed: %d"

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    if-nez p1, :cond_2

    .line 232
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b()V

    .line 239
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e()V

    .line 240
    return-void

    :cond_1
    move v0, v1

    .line 230
    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->l:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    if-ne v0, v1, :cond_0

    .line 236
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->UNFILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 289
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 291
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 292
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/ContactPickerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e(I)V

    return-void
.end method

.method private c(I)V
    .locals 3
    .parameter

    .prologue
    .line 222
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 225
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 227
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/contacts/picker/ContactPickerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d(I)V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    const-string v1, "orca:ContactPickerView"

    const-string v2, "Empty search"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->UNFILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 275
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e()V

    .line 276
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Ljava/lang/CharSequence;)V

    .line 277
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FINISHED:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V

    .line 283
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v2, "orca:ContactPickerView"

    const-string v3, "Performing filtering"

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERING:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-direct {p0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 281
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V

    goto :goto_0
.end method

.method private d(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 243
    const-string v0, "orca:ContactPickerView"

    const-string v1, "Filtering complete"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 247
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->UNFILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 255
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e()V

    .line 256
    return-void

    .line 248
    :cond_0
    if-nez p1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 250
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 253
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 316
    :goto_0
    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :goto_1
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->l:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    sget-object v3, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERING:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    if-eq v0, v3, :cond_1

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->l:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    sget-object v3, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 311
    goto :goto_0

    :cond_1
    move v0, v2

    .line 313
    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private e(I)V
    .locals 2
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 327
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->k:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->k:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;->a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    .line 330
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final a(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 187
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetChanged()V

    .line 188
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    sget v1, Lcom/facebook/orca/R$string;->contact_picker_no_results:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(I)V

    .line 192
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->l:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    if-eq v0, v1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d()V

    .line 195
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 209
    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return v0

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 213
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->j:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    .line 169
    return-void
.end method

.method public setOnRowClickedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->k:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;

    .line 178
    return-void
.end method

.method public setSearchBoxText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method
