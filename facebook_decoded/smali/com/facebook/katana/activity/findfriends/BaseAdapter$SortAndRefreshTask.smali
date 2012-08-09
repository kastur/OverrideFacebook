.class Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;
.super Landroid/os/AsyncTask;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/facebook/katana/model/FacebookPhonebookContact;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<+",
        "Lcom/facebook/katana/model/FacebookPhonebookContact;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/findfriends/BaseAdapter;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/findfriends/BaseAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;->a:Lcom/facebook/katana/activity/findfriends/BaseAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/findfriends/BaseAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;-><init>(Lcom/facebook/katana/activity/findfriends/BaseAdapter;)V

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
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask$1;-><init>(Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;)V

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 386
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 387
    return-object v1
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {p1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;->a:Lcom/facebook/katana/activity/findfriends/BaseAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->a:Ljava/util/List;

    .line 398
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;->a:Lcom/facebook/katana/activity/findfriends/BaseAdapter;

    iput-object v0, v1, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->c:Ljava/util/List;

    .line 399
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;->a:Lcom/facebook/katana/activity/findfriends/BaseAdapter;

    iget-object v0, v0, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 402
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;->a:Lcom/facebook/katana/activity/findfriends/BaseAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/BaseAdapter;->i()V

    .line 403
    return-void
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 412
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v7

    .line 454
    :goto_0
    return-object v0

    .line 419
    :cond_0
    const-string v1, ""

    .line 424
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    move v5, v0

    move-object v6, v1

    move v1, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 425
    add-int/lit8 v1, v1, 0x1

    .line 426
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 429
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 430
    goto :goto_1

    .line 434
    :cond_1
    if-ltz v5, :cond_2

    .line 435
    new-instance v9, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;

    invoke-direct {v9, v6, v5, v2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;-><init>(Ljava/lang/String;II)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v4

    move v5, v1

    move-object v6, v0

    .line 445
    goto :goto_1

    .line 447
    :cond_3
    new-instance v0, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;

    invoke-direct {v0, v6, v5, v2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$FirstLetterFriendSection;-><init>(Ljava/lang/String;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v7

    .line 454
    goto :goto_0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 365
    check-cast p1, [Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;->a(Ljava/util/List;)V

    return-void
.end method
