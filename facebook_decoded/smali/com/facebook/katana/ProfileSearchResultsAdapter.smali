.class public abstract Lcom/facebook/katana/ProfileSearchResultsAdapter;
.super Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter;
.source "ProfileSearchResultsAdapter.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field private b:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private e:Landroid/view/LayoutInflater;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/StreamPhotosCache;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->a:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->b:Lcom/facebook/katana/binding/StreamPhotosCache;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->e:Landroid/view/LayoutInflater;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->d:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->g:Ljava/util/List;

    .line 49
    invoke-virtual {p0, p2}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->a(Landroid/database/Cursor;)V

    .line 50
    return-void
.end method

.method private f()Landroid/view/View;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0300eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    const v0, 0x7f0802b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 123
    return-object v1
.end method


# virtual methods
.method public final a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f02018e

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 86
    if-nez p4, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->f()Landroid/view/View;

    move-result-object p4

    .line 88
    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v2, 0x7f080081

    invoke-direct {v1, p4, v2}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 90
    iget-object v2, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_0
    iget-object v2, v0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v2}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 98
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    iget-object v3, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->b:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v4, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->a:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v2, v5}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_1

    .line 102
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    :goto_1
    const v1, 0x7f0802ab

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-object p4

    .line 93
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/ViewHolder;

    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 107
    :cond_2
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->c()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 61
    new-instance v1, Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    :goto_0
    return-object v1

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 66
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_1
    move-object v0, v1

    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object v1, p2

    goto :goto_1
.end method

.method public abstract a(Landroid/database/Cursor;)V
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ViewHolder;

    .line 147
    invoke-virtual {v0}, Lcom/facebook/katana/ViewHolder;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->e()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->e()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method
