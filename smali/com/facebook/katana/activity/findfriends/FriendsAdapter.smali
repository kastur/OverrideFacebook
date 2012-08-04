.class public Lcom/facebook/katana/activity/findfriends/FriendsAdapter;
.super Lcom/facebook/katana/activity/findfriends/BaseAdapter;
.source "FriendsAdapter.java"


# instance fields
.field private g:Lcom/facebook/katana/binding/ProfileImagesCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/facebook/katana/binding/ProfileImagesCache;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;",
            "Lcom/facebook/katana/binding/ProfileImagesCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->a:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->g:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 34
    invoke-virtual {p0, p2}, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->a(Ljava/util/List;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/katana/model/FacebookPhonebookContact;)J
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-wide v0, p1, Lcom/facebook/katana/model/FacebookPhonebookContact;->userId:J

    return-wide v0
.end method

.method protected final a(Landroid/view/View;Lcom/facebook/katana/model/FacebookPhonebookContact;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f02018e

    .line 41
    check-cast p2, Lcom/facebook/katana/model/FacebookPhonebookContactUser;

    .line 45
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 46
    new-instance v0, Lcom/facebook/katana/ViewHolder;

    const v1, 0x7f080081

    invoke-direct {v0, p1, v1}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 47
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    iget-wide v1, p2, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 54
    iget-object v1, p2, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->imageUrl:Ljava/lang/String;

    .line 56
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->g:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v3, p0, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->b:Landroid/content/Context;

    iget-wide v4, p2, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->userId:J

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    :goto_1
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ViewHolder;

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected final b(Lcom/facebook/katana/model/FacebookPhonebookContact;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    const-string v0, ""

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->b:Landroid/content/Context;

    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->b:Landroid/content/Context;

    const v1, 0x7f0b043e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
