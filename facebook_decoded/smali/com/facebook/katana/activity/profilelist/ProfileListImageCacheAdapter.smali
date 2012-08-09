.class public abstract Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;
.super Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter;
.source "ProfileListImageCacheAdapter.java"


# instance fields
.field private a:Lcom/facebook/katana/binding/ProfileImagesCache;

.field protected final e:Landroid/content/Context;

.field protected final g:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->e:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->g:Landroid/view/LayoutInflater;

    .line 34
    iput-object p2, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->a:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->f:Ljava/util/List;

    .line 37
    invoke-virtual {p0, p3}, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->b(Landroid/database/Cursor;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f02018e

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 66
    if-nez p4, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->a(Lcom/facebook/katana/model/FacebookProfile;)Landroid/view/View;

    move-result-object p4

    .line 68
    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v2, 0x7f080081

    invoke-direct {v1, p4, v2}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 69
    iget-object v2, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :goto_0
    iget-wide v2, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 76
    iget-object v2, v0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    .line 78
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->a:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v4, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->e:Landroid/content/Context;

    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    :goto_1
    const v1, 0x7f0802ab

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-object p4

    .line 72
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/ViewHolder;

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    .line 45
    if-nez p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    iget-object v2, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method protected a(Lcom/facebook/katana/model/FacebookProfile;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0300eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    const v0, 0x7f0802b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 102
    return-object v1
.end method

.method protected abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 110
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->c:Landroid/database/Cursor;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->d:Ljava/util/List;

    .line 112
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v5, 0x0

    .line 117
    const/4 v2, -0x1

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move v3, v1

    move v0, v1

    .line 123
    :goto_1
    if-ge v3, v6, :cond_2

    .line 126
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v4

    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 130
    if-lez v0, :cond_1

    .line 135
    iget-object v7, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->d:Ljava/util/List;

    new-instance v8, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;

    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5, v2, v0}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;-><init>(Ljava/lang/String;II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    move v2, v3

    .line 124
    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-object v5, v4

    goto :goto_1

    .line 146
    :cond_2
    if-lez v0, :cond_3

    .line 147
    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->d:Ljava/util/List;

    new-instance v3, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;

    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;->i()V

    goto :goto_0

    :cond_4
    move-object v4, v5

    goto :goto_2
.end method
