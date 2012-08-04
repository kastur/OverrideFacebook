.class public Lcom/facebook/katana/FriendsAdapter;
.super Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;
.source "FriendsAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 52
    invoke-super/range {p0 .. p5}, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;->a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    iget-object v0, p0, Lcom/facebook/katana/FriendsAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/FriendsAdapter;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 59
    const v2, 0x7f080081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/FriendsAdapter;->e:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v6, "vnd.android.cursor.item/vnd.facebook.profile"

    aput-object v6, v0, v7

    invoke-static {v2, v3, v4, v5, v0}, Lcom/facebook/katana/platform/PlatformFastTrack;->a(Landroid/view/View;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 64
    :cond_0
    return-object v1
.end method

.method protected final a(Lcom/facebook/katana/model/FacebookProfile;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/katana/FriendsAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;->a(Lcom/facebook/katana/model/FacebookProfile;)Landroid/view/View;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/FriendsAdapter;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0300eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    const v0, 0x7f0802b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object v0, v1

    .line 45
    goto :goto_0
.end method
