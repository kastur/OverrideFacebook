.class Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$BucketizeItemsTask;
.super Landroid/os/AsyncTask;
.source "FriendCheckinsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/katana/model/FacebookCheckin;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$Group;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$BucketizeItemsTask;-><init>(Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;)V

    return-void
.end method

.method private varargs a([Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookCheckin;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$Group;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x1

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 90
    aget-object v0, p1, v2

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    aget-object v1, p1, v2

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;->a(Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;->b(Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$BucketizeItemsTask;->a:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;->i()V

    .line 103
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 86
    check-cast p1, [Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$BucketizeItemsTask;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter$BucketizeItemsTask;->a(Ljava/util/List;)V

    return-void
.end method
