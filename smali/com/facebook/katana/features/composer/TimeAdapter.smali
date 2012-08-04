.class public Lcom/facebook/katana/features/composer/TimeAdapter;
.super Lcom/facebook/katana/ui/SectionedListAdapter;
.source "TimeAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:[Lcom/facebook/katana/features/composer/TimeAdapter$Period;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/facebook/katana/features/composer/TimeAdapter$Period;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/facebook/katana/ui/SectionedListAdapter;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->a:Landroid/content/Context;

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->b:Landroid/view/LayoutInflater;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->c:I

    .line 92
    iput-object p2, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->d:[Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    .line 93
    return-void
.end method

.method private j(I)Lcom/facebook/katana/features/composer/TimeAdapter$Period;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->d:[Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public final a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    .line 146
    if-nez p4, :cond_1

    .line 147
    iget-object v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 149
    :goto_0
    check-cast v0, Landroid/widget/LinearLayout;

    .line 150
    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    const v2, 0x7f08007c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 152
    invoke-virtual {p0}, Lcom/facebook/katana/features/composer/TimeAdapter;->e()I

    move-result v2

    if-ne p2, v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v2, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->d:[Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->localizedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-object v0

    .line 152
    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    move-object v0, p4

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    .line 130
    if-nez p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 134
    check-cast v0, Landroid/widget/TextView;

    .line 135
    iget-object v2, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0398

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public final synthetic a(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p2}, Lcom/facebook/katana/features/composer/TimeAdapter;->j(I)Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)I
    .locals 2
    .parameter

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sectionPosition must be 0, as we have only one section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->d:[Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    array-length v0, v0

    return v0
.end method

.method public final b(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    return v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sectionPosition must be 0, as we have only one section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->d:[Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    return-object v0
.end method

.method public final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput p1, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->c:I

    .line 219
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->c:I

    return v0
.end method

.method public final f()Lcom/facebook/katana/features/composer/TimeAdapter$Period;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/facebook/katana/features/composer/TimeAdapter;->e()I

    move-result v0

    .line 201
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/features/composer/TimeAdapter;->d:[Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    aget-object v0, v1, v0

    goto :goto_0
.end method
