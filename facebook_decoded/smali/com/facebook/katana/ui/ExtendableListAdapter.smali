.class public Lcom/facebook/katana/ui/ExtendableListAdapter;
.super Ljava/lang/Object;
.source "ExtendableListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/WrapperListAdapter;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListAdapter;

.field private c:Lcom/facebook/katana/ui/ExtendableListAdapter$LoadMoreCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;Lcom/facebook/katana/ui/ExtendableListAdapter$LoadMoreCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->a:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    .line 58
    iput-object p3, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->c:Lcom/facebook/katana/ui/ExtendableListAdapter$LoadMoreCallback;

    .line 59
    return-void
.end method

.method private a(I)I
    .locals 6
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ExtendableListAdapter;->getCount()I

    move-result v0

    .line 69
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Invalid index: %d of %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 74
    const/4 p1, -0x2

    .line 76
    :cond_2
    return p1
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->c:Lcom/facebook/katana/ui/ExtendableListAdapter$LoadMoreCallback;

    invoke-interface {v0}, Lcom/facebook/katana/ui/ExtendableListAdapter$LoadMoreCallback;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 142
    if-nez v1, :cond_0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-direct {p0}, Lcom/facebook/katana/ui/ExtendableListAdapter;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/ExtendableListAdapter;->a(I)I

    move-result v0

    .line 157
    if-ltz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/ExtendableListAdapter;->a(I)I

    move-result v0

    .line 171
    if-ltz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 176
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/ExtendableListAdapter;->a(I)I

    move-result v0

    .line 228
    if-ltz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 232
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/ExtendableListAdapter;->a(I)I

    move-result v0

    .line 195
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 196
    if-eqz p2, :cond_0

    .line 209
    :goto_0
    invoke-direct {p0}, Lcom/facebook/katana/ui/ExtendableListAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->c:Lcom/facebook/katana/ui/ExtendableListAdapter$LoadMoreCallback;

    invoke-interface {v0}, Lcom/facebook/katana/ui/ExtendableListAdapter$LoadMoreCallback;->b()V

    .line 217
    :goto_1
    return-object p2

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 204
    const v1, 0x7f030057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 213
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ExtendableListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/ExtendableListAdapter;->a(I)I

    move-result v0

    .line 109
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 123
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/katana/ui/ExtendableListAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 132
    return-void
.end method
