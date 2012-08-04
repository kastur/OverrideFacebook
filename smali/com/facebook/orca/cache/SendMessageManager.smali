.class public Lcom/facebook/orca/cache/SendMessageManager;
.super Ljava/lang/Object;
.source "SendMessageManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:J

.field private static final b:J


# instance fields
.field private final c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private final f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final g:Lcom/facebook/orca/cache/ThreadsCache;

.field private final h:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private final i:Lcom/facebook/orca/common/util/Clock;

.field private final j:Lcom/facebook/orca/common/util/Clock;

.field private final k:Lcom/google/common/collect/LinkedHashMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field

.field private final l:Lcom/google/common/collect/LinkedHashMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field

.field private final m:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/ops/ServiceException;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/cache/SendMessageManager;->a:J

    .line 85
    const-wide/16 v0, 0xa

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/cache/SendMessageManager;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Lcom/facebook/orca/notify/OrcaNotificationManager;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/common/util/Clock;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;",
            "Lcom/facebook/orca/notify/OrcaNotificationManager;",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Lcom/facebook/orca/cache/ThreadsCache;",
            "Lcom/facebook/orca/analytics/AnalyticsLogger;",
            "Lcom/facebook/orca/common/util/Clock;",
            "Lcom/facebook/orca/common/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/facebook/orca/cache/SendMessageManager;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 125
    iput-object p2, p0, Lcom/facebook/orca/cache/SendMessageManager;->d:Ljavax/inject/Provider;

    .line 126
    iput-object p3, p0, Lcom/facebook/orca/cache/SendMessageManager;->e:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 127
    iput-object p4, p0, Lcom/facebook/orca/cache/SendMessageManager;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 128
    iput-object p5, p0, Lcom/facebook/orca/cache/SendMessageManager;->g:Lcom/facebook/orca/cache/ThreadsCache;

    .line 129
    iput-object p6, p0, Lcom/facebook/orca/cache/SendMessageManager;->h:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 130
    iput-object p7, p0, Lcom/facebook/orca/cache/SendMessageManager;->i:Lcom/facebook/orca/common/util/Clock;

    .line 131
    iput-object p8, p0, Lcom/facebook/orca/cache/SendMessageManager;->j:Lcom/facebook/orca/common/util/Clock;

    .line 132
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultimap;->k()Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->k:Lcom/google/common/collect/LinkedHashMultimap;

    .line 133
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultimap;->k()Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->l:Lcom/google/common/collect/LinkedHashMultimap;

    .line 134
    invoke-static {}, Lcom/google/common/collect/Sets;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->m:Ljava/util/LinkedHashSet;

    .line 135
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const-wide/16 v1, 0x12c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/MapMaker;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->n:Ljava/util/Map;

    .line 136
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const-wide/16 v1, 0x258

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/MapMaker;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->o:Ljava/util/Map;

    .line 137
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->p:Ljava/util/Set;

    .line 138
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;Z)Lcom/facebook/orca/threads/Message;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->p:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 172
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/SendMessageManager;->d(Lcom/facebook/orca/threads/Message;)V

    .line 176
    if-nez p2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->k:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 178
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 182
    new-instance v2, Lcom/facebook/orca/cache/SendMessageManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/orca/cache/SendMessageManager$1;-><init>(Lcom/facebook/orca/cache/SendMessageManager;Lcom/facebook/orca/threads/Message;Z)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 193
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Z)V

    .line 195
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 196
    const-string v3, "outgoingMessage"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 197
    const-string v3, "queue_message"

    invoke-virtual {v0, v3, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->n:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/cache/SendMessageManager;->j:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v3}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 202
    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/cache/SendMessageManager;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->p:Ljava/util/Set;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 252
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 253
    iget-boolean v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->q:Z

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/cache/SendMessageManager;->b()Ljava/lang/String;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 266
    new-instance v2, Lcom/facebook/orca/cache/SendMessageManager$2;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/cache/SendMessageManager$2;-><init>(Lcom/facebook/orca/cache/SendMessageManager;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 277
    invoke-virtual {v0, v4}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Z)V

    .line 280
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 281
    const-string v3, "threadId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "send"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 283
    iput-boolean v4, p0, Lcom/facebook/orca/cache/SendMessageManager;->q:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/cache/SendMessageManager;Lcom/facebook/orca/ops/ServiceException;Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/facebook/orca/cache/SendMessageManager;->c(Lcom/facebook/orca/threads/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/cache/SendMessageManager;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/cache/SendMessageManager;Lcom/facebook/orca/server/OperationResult;Lcom/facebook/orca/threads/Message;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/cache/SendMessageManager;->b(Lcom/facebook/orca/threads/Message;Z)V

    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->q:Z

    .line 305
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    const-string v1, "hasMoreQueuedMessages"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->m:Ljava/util/LinkedHashSet;

    const-string v2, "threadId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/cache/SendMessageManager;->a()V

    .line 310
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/cache/SendMessageManager;)Lcom/facebook/orca/cache/ThreadsCache;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->g:Lcom/facebook/orca/cache/ThreadsCache;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 288
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-object v0

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/Message;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 232
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->k:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 234
    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->l:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/cache/SendMessageManager;->a()V

    .line 239
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/cache/SendMessageManager;)Lcom/facebook/orca/notify/OrcaNotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->e:Lcom/facebook/orca/notify/OrcaNotificationManager;

    return-object v0
.end method

.method private c(Lcom/facebook/orca/threads/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 246
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->k:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private d(Lcom/facebook/orca/threads/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->l:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 406
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 407
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 409
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "orca:SendMessageManager"

    const-string v2, "Clearing out equivalent sent message %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 415
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->l:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    :cond_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->l:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 448
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 449
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->j:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v3

    .line 450
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 452
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->n:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 453
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    sget-wide v7, Lcom/facebook/orca/cache/SendMessageManager;->a:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    .line 454
    :cond_3
    const-string v1, "orca:SendMessageManager"

    const-string v5, "Clearing out expired recently sent message %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v1, v5, v6}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;
    .locals 1
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/threads/Message;Z)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 216
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/SendMessageManager;->d(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->l:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->k:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/LinkedHashMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 5
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->q:Z

    .line 317
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-direct {p0}, Lcom/facebook/orca/cache/SendMessageManager;->a()V

    .line 321
    const/4 v1, 0x0

    .line 322
    invoke-virtual {p2}, Lcom/facebook/orca/ops/ServiceException;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_3

    .line 325
    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 326
    instance-of v2, v0, Lcom/facebook/orca/threads/Message;

    if-eqz v2, :cond_3

    .line 327
    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 333
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->e:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Ljava/lang/String;)V

    .line 385
    :cond_1
    :goto_1
    return-void

    .line 343
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->p:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 345
    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->f:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v2, Lcom/facebook/orca/cache/SendMessageManager$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/orca/cache/SendMessageManager$3;-><init>(Lcom/facebook/orca/cache/SendMessageManager;Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v3, Lcom/facebook/orca/cache/SendMessageManager;->b:J

    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->l:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 427
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 429
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "orca:SendMessageManager"

    const-string v2, "Clearing out sent message with offlineThreadId %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 435
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/ops/ServiceException;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/ServiceException;

    return-object v0
.end method

.method public final b(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;
    .locals 4
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->i:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    .line 159
    new-instance v2, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->b(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 165
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/threads/Message;Z)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 393
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "spurious_send_failure"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 394
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 395
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->h:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 396
    return-void
.end method
