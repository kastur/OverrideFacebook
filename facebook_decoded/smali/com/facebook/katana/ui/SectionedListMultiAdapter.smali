.class public Lcom/facebook/katana/ui/SectionedListMultiAdapter;
.super Lcom/facebook/katana/ui/SectionedListAdapter;
.source "SectionedListMultiAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ui/SectionedListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/katana/ui/SectionedListMultiAdapter$AdapterDataObserver;

.field private c:I

.field private d:I

.field private e:[I

.field private f:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/katana/ui/SectionedListAdapter;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/facebook/katana/ui/SectionedListMultiAdapter$AdapterDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter$AdapterDataObserver;-><init>(Lcom/facebook/katana/ui/SectionedListMultiAdapter;B)V

    iput-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->b:Lcom/facebook/katana/ui/SectionedListMultiAdapter$AdapterDataObserver;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/ui/SectionedListMultiAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->e()V

    return-void
.end method

.method private c(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->e:[I

    aget v0, v0, p1

    sub-int v0, p2, v0

    return v0
.end method

.method private d(I)I
    .locals 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 97
    iget-object v1, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->e:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_0

    .line 98
    return v0

    .line 96
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->e:[I

    .line 41
    iget-object v1, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->f:[I

    .line 42
    iput v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d:I

    .line 43
    iput v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c:I

    .line 44
    iget-object v1, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListAdapter;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->a()I

    move-result v2

    .line 51
    iget-object v3, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->e:[I

    iget v4, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c:I

    aput v4, v3, v1

    .line 52
    iget v3, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c:I

    .line 54
    iget-object v2, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->f:[I

    iget v3, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d:I

    aput v3, v2, v1

    .line 55
    iget v2, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d:I

    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->c()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d:I

    .line 47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c:I

    return v0
.end method

.method public final a(I)I
    .locals 4
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d(I)I

    move-result v0

    .line 183
    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c(II)I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->f:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListAdapter;->a(I)I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d(I)I

    move-result v0

    .line 162
    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c(II)I

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListAdapter;

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/ui/SectionedListAdapter;->a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d(I)I

    move-result v0

    .line 152
    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c(II)I

    move-result v1

    .line 153
    iget-object v2, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, v1, p2, p3}, Lcom/facebook/katana/ui/SectionedListAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d(I)I

    move-result v0

    .line 144
    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c(II)I

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/facebook/katana/ui/SectionedListAdapter;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/katana/ui/SectionedListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->b:Lcom/facebook/katana/ui/SectionedListMultiAdapter$AdapterDataObserver;

    invoke-virtual {p1, v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->a(Landroid/database/DataSetObserver;)V

    .line 73
    invoke-direct {p0}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->e()V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->i()V

    .line 75
    return-void
.end method

.method public final b(I)I
    .locals 3
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d(I)I

    move-result v0

    .line 128
    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c(II)I

    move-result v1

    .line 129
    iget-object v2, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListAdapter;->b(I)I

    move-result v0

    return v0
.end method

.method public final b(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d(I)I

    move-result v0

    .line 192
    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c(II)I

    move-result v1

    .line 193
    iget-object v2, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->f:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/facebook/katana/ui/SectionedListAdapter;->b(II)I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d:I

    return v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->d(I)I

    move-result v0

    .line 136
    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->c(II)I

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListAdapter;->c(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 200
    .line 201
    iget-object v0, p0, Lcom/facebook/katana/ui/SectionedListMultiAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListAdapter;

    .line 202
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/katana/ui/SectionedListAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 204
    :cond_1
    return v1
.end method
