.class public Lcom/facebook/orca/contacts/picker/FriendListPickerView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "FriendListPickerView.java"


# instance fields
.field private a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/orca/presence/PresenceManager;

.field private c:Lcom/facebook/orca/database/DbUsersPropertyUtil;

.field private d:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

.field private e:Lcom/facebook/orca/contacts/picker/FriendListPickerView$UserComparatorByName;

.field private f:Lcom/facebook/orca/contacts/picker/ContactPickerView;

.field private g:Z

.field private volatile h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Z

.field private l:Z

.field private m:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

.field private n:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private a(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 249
    invoke-virtual {v0, p1}, Lcom/facebook/orca/users/FacebookUserIterator;->a(Ljava/util/Collection;)V

    .line 252
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->b()Lcom/facebook/orca/users/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    :try_start_1
    const-string v3, "orca:FriendListPickerView"

    const-string v4, "Exception reading facebook users"

    invoke-static {v3, v4, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    .line 260
    :goto_1
    return-object v2

    .line 258
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    throw v1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 73
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    const-class v2, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    .line 76
    new-instance v2, Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-direct {v2, p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V

    iput-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->f:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->f:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->addView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->f:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    new-instance v2, Lcom/facebook/orca/contacts/picker/FriendListPickerView$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView$1;-><init>(Lcom/facebook/orca/contacts/picker/FriendListPickerView;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setOnRowClickedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;)V

    .line 86
    const-class v0, Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Ljavax/inject/Provider;

    .line 87
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/presence/PresenceManager;

    .line 88
    const-class v0, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->c:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 89
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->d:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    .line 90
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListPickerView$UserComparatorByName;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView$UserComparatorByName;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->e:Lcom/facebook/orca/contacts/picker/FriendListPickerView$UserComparatorByName;

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->d:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->h:Ljava/util/List;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->d:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->i:Ljava/util/List;

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->e()V

    .line 104
    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 2
    .parameter

    .prologue
    .line 371
    instance-of v0, p1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v0, :cond_1

    .line 372
    check-cast p1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 373
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;->a(Lcom/facebook/orca/users/UserWithIdentifier;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne p1, v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/FriendListPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->j()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/FriendListPickerView;Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/FriendListPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->d()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/contacts/picker/FriendListPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->f()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->k:Z

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/contacts/picker/FriendListPickerView$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView$4;-><init>(Lcom/facebook/orca/contacts/picker/FriendListPickerView;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->k:Z

    .line 187
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->c:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbUserPropertyKey;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    .line 192
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->c:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v3, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v2, v3, v5, v6}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v2

    .line 194
    cmp-long v0, v0, v5

    if-gtz v0, :cond_0

    cmp-long v0, v2, v5

    if-nez v0, :cond_0

    .line 196
    const-string v0, "orca:FriendListPickerView"

    const-string v1, "Waiting for friends"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iput-boolean v4, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->k:Z

    .line 222
    :goto_0
    return-void

    .line 201
    :cond_0
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 202
    const-string v0, "loadFriendsOnWorkerThread"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->g()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->h:Ljava/util/List;

    .line 205
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->h()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->i:Ljava/util/List;

    .line 206
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->i()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->j:Ljava/util/List;

    .line 207
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->d:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->h:Ljava/util/List;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 208
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->d:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->i:Ljava/util/List;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->b(Lcom/google/common/collect/ImmutableList;)V

    .line 209
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->d:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->j:Ljava/util/List;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->c(Lcom/google/common/collect/ImmutableList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iput-boolean v4, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->k:Z

    .line 213
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 214
    const-string v0, "orca:FriendListPickerView"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListPickerView$5;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView$5;-><init>(Lcom/facebook/orca/contacts/picker/FriendListPickerView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->k:Z

    throw v0
.end method

.method private g()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    const-string v0, "getTopFriends"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 227
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 229
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/FacebookUserIterator;->a(I)V

    .line 231
    :try_start_0
    const-string v1, "#fetch"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 233
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->b()Lcom/facebook/orca/users/User;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 234
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    :try_start_1
    const-string v4, "orca:FriendListPickerView"

    const-string v5, "Exception reading facebook users"

    invoke-static {v4, v5, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    .line 242
    :goto_1
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 243
    return-object v3

    .line 236
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    throw v1
.end method

.method private h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    const-string v0, "getOnlineFriends"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1}, Lcom/facebook/orca/presence/PresenceManager;->f()Ljava/util/Collection;

    move-result-object v1

    .line 267
    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 269
    return-object v1
.end method

.method private i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    const-string v0, "getMobileFriends"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1}, Lcom/facebook/orca/presence/PresenceManager;->g()Ljava/util/Collection;

    move-result-object v1

    .line 276
    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 277
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 278
    return-object v1
.end method

.method private j()V
    .locals 14

    .prologue
    const/16 v0, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->h:Ljava/util/List;

    .line 283
    iget-object v6, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->i:Ljava/util/List;

    .line 284
    iget-object v7, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->j:Ljava/util/List;

    .line 286
    if-nez v5, :cond_0

    .line 287
    const-string v0, "orca:FriendListPickerView"

    const-string v1, "Not updating list b/c friends aren\'t yet loaded."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->l:Z

    if-nez v1, :cond_1

    .line 291
    const-string v0, "orca:FriendListPickerView"

    const-string v1, "Not updating list b/c layout hasn\'t finished."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->f:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a()Landroid/graphics/Point;

    move-result-object v1

    .line 297
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 298
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 299
    if-lez v4, :cond_a

    if-lez v1, :cond_a

    .line 301
    new-instance v8, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;-><init>(Landroid/content/Context;)V

    .line 302
    const/high16 v9, 0x4000

    invoke-static {v9, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v4, v9}, Landroid/view/View;->measure(II)V

    .line 305
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 306
    div-int/2addr v1, v4

    .line 307
    add-int/lit8 v1, v1, -0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 310
    :goto_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v8

    .line 311
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v9

    .line 313
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->g:Z

    if-eqz v0, :cond_2

    .line 314
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-virtual {v8, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_2
    move v4, v2

    .line 317
    :goto_2
    if-ge v4, v1, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 318
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 319
    iget-object v10, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/users/UserKey;)Z

    move-result v10

    .line 320
    new-instance v11, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v12

    invoke-direct {v11, v0, v12}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 322
    new-instance v12, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    sget-object v13, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-direct {v12, v11, v13, v10}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;Z)V

    invoke-virtual {v8, v12}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 323
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 326
    :cond_3
    if-eqz v6, :cond_6

    .line 327
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->e:Lcom/facebook/orca/contacts/picker/FriendListPickerView$UserComparatorByName;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 329
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 330
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 331
    if-nez v1, :cond_5

    .line 334
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/facebook/orca/R$string;->contact_picker_more_online_friends_header:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v5, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-direct {v5, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move v1, v3

    .line 339
    :cond_5
    new-instance v5, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 341
    new-instance v6, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    sget-object v10, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-direct {v6, v5, v10, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;Z)V

    invoke-virtual {v8, v6}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 342
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 346
    :cond_6
    if-eqz v7, :cond_9

    .line 347
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->e:Lcom/facebook/orca/contacts/picker/FriendListPickerView$UserComparatorByName;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 350
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 351
    if-nez v1, :cond_8

    .line 354
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/facebook/orca/R$string;->contact_picker_more_mobile_friends_header:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    new-instance v5, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-direct {v5, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move v1, v3

    .line 359
    :cond_8
    new-instance v5, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 361
    new-instance v6, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    sget-object v7, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-direct {v6, v5, v7, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;Z)V

    invoke-virtual {v8, v6}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 362
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 366
    :cond_9
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->f:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/google/common/collect/ImmutableList;)V

    goto/16 :goto_0

    :cond_a
    move v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "orca:FriendListPickerView"

    const-string v1, "notifyFriendSyncProgress"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->e()V

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->f:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->onAttachedToWindow()V

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->m:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListPickerView$3;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView$3;-><init>(Lcom/facebook/orca/contacts/picker/FriendListPickerView;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->m:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->m:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;)V

    .line 156
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->onDetachedFromWindow()V

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->m:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->m:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->m:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    .line 165
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/orca/activity/CustomViewGroup;->onSizeChanged(IIII)V

    .line 132
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->l:Z

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->l:Z

    .line 136
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListPickerView$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView$2;-><init>(Lcom/facebook/orca/contacts/picker/FriendListPickerView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    .line 121
    return-void
.end method

.method public setEnableNewGroupItem(Z)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->g:Z

    .line 117
    return-void
.end method

.method public setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->f:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 126
    return-void
.end method

.method public setSearchBoxText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->f:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setSearchBoxText(Ljava/lang/String;)V

    .line 402
    return-void
.end method
