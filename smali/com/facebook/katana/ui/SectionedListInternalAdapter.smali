.class Lcom/facebook/katana/ui/SectionedListInternalAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionedListView.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private a:Lcom/facebook/katana/ui/SectionedListAdapter;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/ui/SectionedListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    .line 92
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->b()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/SectionedListAdapter;->f(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/SectionedListAdapter;->i(I)I

    move-result v0

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter

    .prologue
    .line 163
    if-gez p1, :cond_1

    .line 164
    const/4 p1, 0x0

    .line 168
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/SectionedListAdapter;->h(I)I

    move-result v0

    return v0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->a()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->a()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .parameter

    .prologue
    .line 174
    if-gez p1, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/SectionedListAdapter;->e(I)[I

    move-result-object v0

    .line 181
    const/4 v1, 0x2

    array-length v2, v0

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 183
    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->a()I

    move-result v1

    .line 190
    new-array v2, v1, [Ljava/lang/Object;

    .line 192
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 193
    iget-object v3, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v3, v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->c(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/katana/ui/SectionedListAdapter;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->c()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/ui/SectionedListInternalAdapter;->a:Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v1, p1}, Lcom/facebook/katana/ui/SectionedListAdapter;->g(I)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 130
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v1

    goto :goto_0
.end method
