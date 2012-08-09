.class public Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;
.super Ljava/lang/Object;
.source "QuickActionPopMenu.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/PopupWindow;

.field private final c:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

.field private d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ListView;

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->h:I

    .line 66
    iput v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->i:I

    .line 67
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->j:Landroid/graphics/Point;

    .line 102
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a:Landroid/view/View;

    .line 103
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    .line 104
    iput-object p2, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->c:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->e:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$1;-><init>(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 121
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->c()V

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->f:Landroid/view/View;

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 261
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "click"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "quick_action_item"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->e:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->c:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    sget v1, Lcom/facebook/orca/R$layout;->orca_quick_action_menu_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->f:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->f:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->g:Landroid/widget/ListView;

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$2;-><init>(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method private d()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->d:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 225
    :goto_0
    return v0

    .line 206
    :cond_1
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;

    .line 208
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_4

    :cond_2
    :goto_2
    move-object v1, v0

    .line 209
    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 216
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 218
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->g:Landroid/widget/ListView;

    new-instance v4, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$QuickActionAdapter;

    iget-object v5, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v4, p0, v5, v0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$QuickActionAdapter;-><init>(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->g:Landroid/widget/ListView;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/16 v2, 0x3e8

    const/high16 v4, -0x8000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->measure(II)V

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, -0x3

    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 229
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->c:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->c:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    invoke-interface {v0, p0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;->a(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->d:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->h:I

    if-ne v0, v2, :cond_3

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 245
    :goto_1
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->i:I

    if-ne v0, v2, :cond_5

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 253
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    goto :goto_0

    .line 239
    :cond_3
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->h:I

    if-ne v0, v4, :cond_4

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_1

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_1

    .line 247
    :cond_5
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->i:I

    if-ne v0, v4, :cond_6

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_2

    .line 250
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->e()V

    .line 269
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->d:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->j:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->j:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 129
    const/4 v0, -0x3

    iput v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->h:I

    .line 130
    return-void
.end method

.method public final a(Lcom/google/common/collect/ImmutableList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->d:Lcom/google/common/collect/ImmutableList;

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$QuickActionAdapter;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$QuickActionAdapter;-><init>(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 279
    return-void
.end method
