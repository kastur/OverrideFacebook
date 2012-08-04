.class public Lcom/facebook/katana/DropdownFriendsAdapter;
.super Landroid/widget/CursorAdapter;
.source "DropdownFriendsAdapter.java"


# instance fields
.field public final a:Lcom/facebook/katana/binding/AppSessionListener;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/katana/binding/ProfileImagesCache;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/ProfileImagesCache;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 69
    iput-object p1, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->b:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->d:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/facebook/katana/DropdownFriendsAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/DropdownFriendsAdapter$1;-><init>(Lcom/facebook/katana/DropdownFriendsAdapter;)V

    iput-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->e:Landroid/widget/Filter;

    .line 103
    new-instance v0, Lcom/facebook/katana/DropdownFriendsAdapter$DropdownAppSessionListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/DropdownFriendsAdapter$DropdownAppSessionListener;-><init>(Lcom/facebook/katana/DropdownFriendsAdapter;)V

    iput-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->a:Lcom/facebook/katana/binding/AppSessionListener;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/DropdownFriendsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 5
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->d:Ljava/util/List;

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

    .line 193
    invoke-virtual {v0}, Lcom/facebook/katana/ViewHolder;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 194
    if-eqz v1, :cond_0

    .line 195
    iget-wide v3, p1, Lcom/facebook/katana/binding/ProfileImage;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 200
    :cond_1
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f02018e

    .line 132
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ViewHolder;

    .line 135
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 138
    const/4 v3, 0x3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    if-eqz v3, :cond_1

    .line 140
    iget-object v4, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v5, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->b:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_0

    .line 142
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    :goto_0
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->b:Landroid/content/Context;

    const v1, 0x7f0b01f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 155
    :goto_1
    const v0, 0x7f080082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .line 144
    :cond_0
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->e:Landroid/widget/Filter;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/facebook/katana/DropdownFriendsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    const v1, 0x7f0300fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v2, 0x7f080170

    invoke-direct {v1, v0, v2}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v2, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-object v0
.end method
