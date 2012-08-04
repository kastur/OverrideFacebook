.class public Lcom/facebook/orca/server/OrcaService;
.super Landroid/app/Service;
.source "OrcaService.java"


# instance fields
.field private a:Lcom/facebook/orca/inject/ContextScope;

.field private b:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

.field private c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

.field private d:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Lcom/facebook/orca/protocol/WebServiceHandler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Lcom/facebook/orca/cache/CacheServiceHandler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private g:Lcom/facebook/orca/location/LocationServiceHandler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Lcom/facebook/orca/server/PreProcessingServiceHandler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private i:Lcom/facebook/orca/images/ImageSearchHandler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private j:Lcom/facebook/orca/database/DbServiceHandler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private k:Lcom/facebook/orca/users/AddressBookServiceHandler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private l:Lcom/facebook/orca/merge/MergeServiceHandler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:Lcom/facebook/orca/dispatch/DispatchServiceHandler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/server/OrcaServiceQueue;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final p:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->p:Ljava/util/concurrent/atomic/AtomicLong;

    .line 376
    return-void
.end method

.method private declared-synchronized a()Lcom/facebook/orca/server/OrcaServiceQueue;
    .locals 14

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->i()V

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v1, "Threads"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 205
    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    const-string v3, "Threads"

    new-instance v4, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->h:Lcom/facebook/orca/server/PreProcessingServiceHandler;

    new-instance v5, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->f:Lcom/facebook/orca/cache/CacheServiceHandler;

    new-instance v7, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v8, p0, Lcom/facebook/orca/server/OrcaService;->l:Lcom/facebook/orca/merge/MergeServiceHandler;

    new-instance v9, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v10, p0, Lcom/facebook/orca/server/OrcaService;->j:Lcom/facebook/orca/database/DbServiceHandler;

    new-instance v11, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v12, p0, Lcom/facebook/orca/server/OrcaService;->m:Lcom/facebook/orca/dispatch/DispatchServiceHandler;

    new-instance v13, Lcom/facebook/orca/server/TerminatingHandler;

    invoke-direct {v13}, Lcom/facebook/orca/server/TerminatingHandler;-><init>()V

    invoke-direct {v11, v12, v13}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v9, v10, v11}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v7, v8, v9}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v5, v6, v7}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v4, v1, v5}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    iget-object v5, p0, Lcom/facebook/orca/server/OrcaService;->n:Ljava/util/Set;

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V

    .line 215
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v2, "Threads"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    monitor-exit p0

    return-object v0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaService;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaService;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    invoke-static {p0}, Lcom/facebook/orca/app/MessagesDataInitLockHelper;->a(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v2, Lcom/facebook/orca/server/Operation;

    invoke-direct {v2, v1, p1, p2}, Lcom/facebook/orca/server/Operation;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    const-string v0, "get_device_location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->e()Lcom/facebook/orca/server/OrcaServiceQueue;

    move-result-object v0

    .line 195
    :goto_0
    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/Operation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    :try_start_3
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 177
    :cond_1
    :try_start_4
    const-string v0, "sync_address_book"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->c()Lcom/facebook/orca/server/OrcaServiceQueue;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_2
    const-string v0, "fetch_all_contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->b()Lcom/facebook/orca/server/OrcaServiceQueue;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_3
    const-string v0, "register_push"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->f()Lcom/facebook/orca/server/OrcaServiceQueue;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_4
    const-string v0, "image_search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->g()Lcom/facebook/orca/server/OrcaServiceQueue;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_5
    const-string v0, "pushed_message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "queue_message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "save_draft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    :cond_6
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->d()Lcom/facebook/orca/server/OrcaServiceQueue;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_7
    const-string v0, "analytics_upload"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 190
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->h()Lcom/facebook/orca/server/OrcaServiceQueue;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_8
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->a()Lcom/facebook/orca/server/OrcaServiceQueue;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 198
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaService;Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaService;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 351
    const/4 v1, 0x0

    .line 352
    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 354
    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    .line 364
    if-eqz v0, :cond_1

    .line 365
    const/4 v0, 0x1

    .line 370
    :goto_1
    return v0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 370
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized b()Lcom/facebook/orca/server/OrcaServiceQueue;
    .locals 7

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->i()V

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v1, "Contacts"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 224
    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    const-string v3, "Contacts"

    new-instance v4, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->e:Lcom/facebook/orca/protocol/WebServiceHandler;

    new-instance v5, Lcom/facebook/orca/server/TerminatingHandler;

    invoke-direct {v5}, Lcom/facebook/orca/server/TerminatingHandler;-><init>()V

    invoke-direct {v4, v1, v5}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V

    .line 230
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v2, "Contacts"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    monitor-exit p0

    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Lcom/facebook/orca/server/OrcaServiceQueue;
    .locals 7

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->i()V

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v1, "AddressBook"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 239
    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    const-string v3, "AddressBook"

    iget-object v4, p0, Lcom/facebook/orca/server/OrcaService;->k:Lcom/facebook/orca/users/AddressBookServiceHandler;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V

    .line 244
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v2, "AddressBook"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    monitor-exit p0

    return-object v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Lcom/facebook/orca/server/OrcaServiceQueue;
    .locals 14

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->i()V

    .line 252
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v1, "PushQueue"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 253
    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    const-string v3, "PushQueue"

    new-instance v4, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->h:Lcom/facebook/orca/server/PreProcessingServiceHandler;

    new-instance v5, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->f:Lcom/facebook/orca/cache/CacheServiceHandler;

    new-instance v7, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v8, p0, Lcom/facebook/orca/server/OrcaService;->l:Lcom/facebook/orca/merge/MergeServiceHandler;

    new-instance v9, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v10, p0, Lcom/facebook/orca/server/OrcaService;->j:Lcom/facebook/orca/database/DbServiceHandler;

    new-instance v11, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v12, p0, Lcom/facebook/orca/server/OrcaService;->m:Lcom/facebook/orca/dispatch/DispatchServiceHandler;

    new-instance v13, Lcom/facebook/orca/server/TerminatingHandler;

    invoke-direct {v13}, Lcom/facebook/orca/server/TerminatingHandler;-><init>()V

    invoke-direct {v11, v12, v13}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v9, v10, v11}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v7, v8, v9}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v5, v6, v7}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v4, v1, v5}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    iget-object v5, p0, Lcom/facebook/orca/server/OrcaService;->n:Ljava/util/Set;

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V

    .line 263
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v2, "PushQueue"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_0
    monitor-exit p0

    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Lcom/facebook/orca/server/OrcaServiceQueue;
    .locals 7

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->i()V

    .line 271
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 272
    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    const-string v3, "Location"

    iget-object v4, p0, Lcom/facebook/orca/server/OrcaService;->g:Lcom/facebook/orca/location/LocationServiceHandler;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V

    .line 277
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v2, "Location"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_0
    monitor-exit p0

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Lcom/facebook/orca/server/OrcaServiceQueue;
    .locals 7

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->i()V

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v1, "Registration"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 286
    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    const-string v3, "Registration"

    new-instance v4, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->e:Lcom/facebook/orca/protocol/WebServiceHandler;

    new-instance v5, Lcom/facebook/orca/server/TerminatingHandler;

    invoke-direct {v5}, Lcom/facebook/orca/server/TerminatingHandler;-><init>()V

    invoke-direct {v4, v1, v5}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V

    .line 292
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v2, "Registration"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit p0

    return-object v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Lcom/facebook/orca/server/OrcaServiceQueue;
    .locals 7

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->i()V

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v1, "ImagesSearch"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 301
    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    const-string v3, "ImagesSearch"

    iget-object v4, p0, Lcom/facebook/orca/server/OrcaService;->i:Lcom/facebook/orca/images/ImageSearchHandler;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V

    .line 307
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v2, "ImagesSearch"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_0
    monitor-exit p0

    return-object v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Lcom/facebook/orca/server/OrcaServiceQueue;
    .locals 7

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->i()V

    .line 315
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v1, "Analytics"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 316
    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    const-string v3, "Analytics"

    new-instance v4, Lcom/facebook/orca/server/FilterChainLink;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->e:Lcom/facebook/orca/protocol/WebServiceHandler;

    new-instance v5, Lcom/facebook/orca/server/TerminatingHandler;

    invoke-direct {v5}, Lcom/facebook/orca/server/TerminatingHandler;-><init>()V

    invoke-direct {v4, v1, v5}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V

    .line 322
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    const-string v2, "Analytics"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_0
    monitor-exit p0

    return-object v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 2

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/server/OrcaService;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 333
    const-class v0, Lcom/facebook/orca/protocol/WebServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/WebServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->e:Lcom/facebook/orca/protocol/WebServiceHandler;

    .line 334
    const-class v0, Lcom/facebook/orca/cache/CacheServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/CacheServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->f:Lcom/facebook/orca/cache/CacheServiceHandler;

    .line 335
    const-class v0, Lcom/facebook/orca/location/LocationServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/LocationServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->g:Lcom/facebook/orca/location/LocationServiceHandler;

    .line 336
    const-class v0, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->h:Lcom/facebook/orca/server/PreProcessingServiceHandler;

    .line 337
    const-class v0, Lcom/facebook/orca/images/ImageSearchHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageSearchHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->i:Lcom/facebook/orca/images/ImageSearchHandler;

    .line 338
    const-class v0, Lcom/facebook/orca/database/DbServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->j:Lcom/facebook/orca/database/DbServiceHandler;

    .line 339
    const-class v0, Lcom/facebook/orca/users/AddressBookServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/AddressBookServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->k:Lcom/facebook/orca/users/AddressBookServiceHandler;

    .line 340
    const-class v0, Lcom/facebook/orca/merge/MergeServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/merge/MergeServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Lcom/facebook/orca/merge/MergeServiceHandler;

    .line 341
    const-class v0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->m:Lcom/facebook/orca/dispatch/DispatchServiceHandler;

    .line 342
    new-instance v0, Lcom/facebook/orca/server/OrcaService$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/OrcaService$1;-><init>(Lcom/facebook/orca/server/OrcaService;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->n:Ljava/util/Set;

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/server/OrcaService;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->b:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 102
    const-string v0, "orca:OrcaService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 105
    const-class v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/inject/ContextScope;

    .line 106
    new-instance v0, Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;-><init>(Lcom/facebook/orca/server/OrcaService;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->b:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    .line 107
    const-class v0, Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueueManager;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 113
    const-string v0, "orca:OrcaService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 117
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "Orca.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const-string v1, "Orca.STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p0, p3}, Lcom/facebook/orca/server/OrcaService;->stopSelf(I)V

    .line 143
    :cond_0
    :goto_0
    monitor-exit p0

    .line 144
    const/4 v0, 0x2

    return v0

    .line 136
    :cond_1
    const-string v1, "Orca.DRAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 139
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 155
    const/4 v0, 0x1

    return v0
.end method
