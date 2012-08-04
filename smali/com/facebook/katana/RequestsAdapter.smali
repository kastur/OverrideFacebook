.class public Lcom/facebook/katana/RequestsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RequestsAdapter.java"


# instance fields
.field a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/RequestsAdapter$FriendRequest;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/katana/binding/AppSession;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/RequestsAdapter$FriendRequest;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/katana/binding/AppSessionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->e:Ljava/util/Map;

    .line 43
    new-instance v0, Lcom/facebook/katana/RequestsAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/RequestsAdapter$1;-><init>(Lcom/facebook/katana/RequestsAdapter;)V

    iput-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->f:Lcom/facebook/katana/binding/AppSessionListener;

    .line 272
    iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter;->b:Landroid/content/Context;

    .line 273
    iput-object p2, p0, Lcom/facebook/katana/RequestsAdapter;->d:Lcom/facebook/katana/binding/AppSession;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/RequestsAdapter;->a:Z

    .line 277
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->d:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 279
    invoke-virtual {p0, p3}, Lcom/facebook/katana/RequestsAdapter;->a(Ljava/util/Map;)V

    .line 280
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/RequestsAdapter;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->d:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->d:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 344
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->c:Ljava/util/ArrayList;

    .line 285
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookUser;

    .line 286
    new-instance v2, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    invoke-direct {v2, p0, v0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;-><init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/model/FacebookUser;)V

    .line 287
    iget-object v3, p0, Lcom/facebook/katana/RequestsAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v3, p0, Lcom/facebook/katana/RequestsAdapter;->e:Ljava/util/Map;

    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->d:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/RequestsAdapter;->d:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->f(Landroid/content/Context;J)Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->d:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v2

    .line 297
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookUser;

    .line 302
    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter;->e:Ljava/util/Map;

    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    .line 303
    iget-object v4, p0, Lcom/facebook/katana/RequestsAdapter;->b:Landroid/content/Context;

    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->c:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 305
    :cond_1
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iget-object v0, v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a:Lcom/facebook/katana/model/FacebookUser;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iget-object v0, v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a:Lcom/facebook/katana/model/FacebookUser;

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    .line 327
    iget-object v1, v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    if-nez v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 330
    const v2, 0x7f0300f1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    .line 333
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->b()V

    .line 336
    iget-object v0, v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
