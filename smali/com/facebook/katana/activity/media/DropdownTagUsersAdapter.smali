.class public Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DropdownTagUsersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/facebook/katana/activity/media/UserHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/facebook/katana/binding/AppSession;

.field private final c:Lcom/facebook/katana/binding/ProfileImagesCache;

.field private d:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$DropdownAppSessionListener;

.field private final e:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    const v0, 0x7f0300fa

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 64
    iput-object p1, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->a:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 69
    new-instance v0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$1;-><init>(Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->e:Landroid/widget/Filter;

    .line 151
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->b:Lcom/facebook/katana/binding/AppSession;

    .line 152
    new-instance v0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$DropdownAppSessionListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$DropdownAppSessionListener;-><init>(Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->d:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$DropdownAppSessionListener;

    .line 154
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->b:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->b:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->d:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$DropdownAppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 157
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->b:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->b:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->d:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$DropdownAppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 5
    .parameter

    .prologue
    .line 251
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 252
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/UserHolder;

    .line 253
    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UserHolder;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_0

    .line 255
    iget-wide v3, p1, Lcom/facebook/katana/binding/ProfileImage;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UserHolder;->d()Lcom/facebook/katana/ViewHolder;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 263
    :cond_1
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->e:Landroid/widget/Filter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f02018e

    .line 179
    .line 181
    if-nez p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 184
    const v1, 0x7f0300fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/UserHolder;

    .line 189
    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v2, 0x7f080170

    invoke-direct {v1, p2, v2}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 190
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/UserHolder;->a(Lcom/facebook/katana/ViewHolder;)V

    .line 193
    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UserHolder;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UserHolder;->c()Ljava/lang/String;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_2

    .line 198
    iget-object v3, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v4, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UserHolder;->a()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_1

    .line 200
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/UserHolder;->b()Ljava/lang/String;

    move-result-object v0

    .line 210
    if-nez v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0b01f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 213
    :goto_1
    const v0, 0x7f080082

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-object p2

    .line 202
    :cond_1
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method
