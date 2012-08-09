.class public Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;
.super Ljava/lang/Object;
.source "ContactPickerHackListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ListAdapter;
.implements Lcom/facebook/orca/common/ui/widgets/CustomFilterable;


# instance fields
.field private final a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    .line 29
    return-void
.end method

.method private static a(Landroid/view/ViewParent;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    const/4 v1, 0x0

    move-object v0, p0

    .line 82
    :goto_0
    if-eqz v0, :cond_2

    .line 83
    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 84
    check-cast v0, Landroid/widget/ListView;

    .line 89
    :goto_1
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 91
    invoke-virtual {v0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$drawable;->transparent_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    return-void

    .line 87
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/common/ui/widgets/CustomFilter;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->b:Z

    if-nez v0, :cond_0

    .line 74
    invoke-static {p3}, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a(Landroid/view/ViewParent;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->b:Z

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 44
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 49
    return-void
.end method
