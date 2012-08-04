.class public Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;
.super Ljava/lang/Object;
.source "ListViewScrollStateHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/ListView;)Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;
    .locals 3
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/widget/ListView;->isStackFromBottom()Z

    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 37
    :cond_0
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->BOTTOM:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    .line 50
    :goto_0
    return-object v0

    .line 38
    :cond_1
    if-nez v0, :cond_5

    .line 39
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->TOP:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    .line 44
    :cond_3
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->TOP:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_5

    .line 46
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->BOTTOM:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    goto :goto_0

    .line 50
    :cond_5
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->MIDDLE:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    goto :goto_0
.end method

.method private static c(Landroid/widget/ListView;)Lcom/google/common/collect/ImmutableMap;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 66
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 67
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    move v0, v1

    .line 68
    :goto_0
    if-gt v0, v3, :cond_1

    .line 69
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 70
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    .line 73
    const-wide/high16 v7, -0x8000

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    .line 74
    sub-int v7, v0, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 77
    if-eqz v7, :cond_0

    .line 78
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/widget/ListView;)Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;
    .locals 3
    .parameter

    .prologue
    .line 93
    invoke-static {p1}, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;->a(Landroid/widget/ListView;)Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    move-result-object v0

    .line 94
    invoke-static {p1}, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;->c(Landroid/widget/ListView;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 95
    new-instance v2, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;-><init>(Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;Ljava/util/Map;)V

    return-object v2
.end method
