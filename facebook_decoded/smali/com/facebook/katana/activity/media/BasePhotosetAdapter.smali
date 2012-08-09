.class public abstract Lcom/facebook/katana/activity/media/BasePhotosetAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BasePhotosetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/BasePhotosetAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final a(Lcom/facebook/katana/model/FacebookPhotoSet;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/BasePhotosetAdapter;->setNotifyOnChange(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/BasePhotosetAdapter;->clear()V

    .line 23
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPhotoSet;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 24
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/BasePhotosetAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/BasePhotosetAdapter;->setNotifyOnChange(Z)V

    .line 27
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/BasePhotosetAdapter;->notifyDataSetChanged()V

    .line 29
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/media/BasePhotosetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
