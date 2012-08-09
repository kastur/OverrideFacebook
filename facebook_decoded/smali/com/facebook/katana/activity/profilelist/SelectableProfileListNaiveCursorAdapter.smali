.class public Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;
.super Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;
.source "SelectableProfileListNaiveCursorAdapter.java"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/binding/ProfileImagesCache;",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;)V

    .line 36
    iput-object p4, p0, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->a:Ljava/util/Set;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-super/range {p0 .. p5}, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;->a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 47
    const v1, 0x7f08007d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 49
    iget-object v3, p0, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->a:Ljava/util/Set;

    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    return-object v2
.end method

.method protected final a(Lcom/facebook/katana/model/FacebookProfile;)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;->a(Lcom/facebook/katana/model/FacebookProfile;)Landroid/view/View;

    move-result-object v1

    .line 58
    const v0, 0x7f0802b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 59
    return-object v1
.end method

.method final a(ILandroid/view/View;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 66
    const v1, 0x7f08007d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 69
    iget-object v2, p0, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->a:Ljava/util/Set;

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->a:Ljava/util/Set;

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->a:Ljava/util/Set;

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
