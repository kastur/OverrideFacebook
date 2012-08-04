.class Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;
.super Landroid/os/AsyncTask;
.source "ProfileListDynamicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/facebook/katana/model/FacebookProfile;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<+",
        "Lcom/facebook/katana/model/FacebookProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;->a:Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;-><init>(Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;)V

    return-void
.end method

.method private varargs a([Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x1

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 239
    new-instance v0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask$1;-><init>(Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;)V

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 251
    return-object v1
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;->a:Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;

    iput-object p1, v0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->d:Ljava/util/List;

    .line 260
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;->a:Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->i()V

    .line 261
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 231
    check-cast p1, [Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;->a(Ljava/util/List;)V

    return-void
.end method
