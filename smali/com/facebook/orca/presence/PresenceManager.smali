.class public Lcom/facebook/orca/presence/PresenceManager;
.super Ljava/lang/Object;
.source "PresenceManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final f:Lcom/facebook/orca/common/util/Clock;

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field

.field private final j:Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;

.field private final k:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/presence/PresenceManager$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:J

.field private volatile o:J

.field private p:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field

.field private q:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field

.field private final r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/common/util/Clock;Ljavax/inject/Provider;)V
    .locals 1
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
            "Lcom/facebook/orca/push/mqtt/MqttConnectionManager;",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Lcom/facebook/orca/common/util/Clock;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/facebook/orca/presence/PresenceManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/presence/PresenceManager$1;-><init>(Lcom/facebook/orca/presence/PresenceManager;)V

    iput-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->r:Ljava/lang/Runnable;

    .line 126
    invoke-interface {p5}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 127
    iput-object p1, p0, Lcom/facebook/orca/presence/PresenceManager;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 128
    iput-object p2, p0, Lcom/facebook/orca/presence/PresenceManager;->b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 129
    iput-object p3, p0, Lcom/facebook/orca/presence/PresenceManager;->c:Ljavax/inject/Provider;

    .line 130
    iput-object p4, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    .line 131
    iput-object p5, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 132
    iput-object p6, p0, Lcom/facebook/orca/presence/PresenceManager;->f:Lcom/facebook/orca/common/util/Clock;

    .line 133
    iput-object p7, p0, Lcom/facebook/orca/presence/PresenceManager;->g:Ljavax/inject/Provider;

    .line 134
    new-instance v0, Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;

    invoke-direct {v0, p0}, Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;-><init>(Lcom/facebook/orca/presence/PresenceManager;)V

    iput-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->j:Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;

    .line 135
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->k()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->h:Lcom/google/common/collect/Multimap;

    .line 136
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Ljava/util/Set;

    .line 137
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->n()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/threads/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/users/UserKey;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/users/UserKey;I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/presence/PresenceManager;Ljava/util/Map;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/presence/PresenceManager;->b(Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/presence/PresenceManager;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->q:Z

    return v0
.end method

.method private a(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 341
    new-instance v1, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v2, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 342
    const-string v2, "foreground"

    invoke-virtual {v1, v2, p1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 343
    iget-object v2, p0, Lcom/facebook/orca/presence/PresenceManager;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v3, "/foreground_state"

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;I)I

    move-result v1

    .line 344
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->j()V

    return-void
.end method

.method private b(Lcom/facebook/orca/threads/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 611
    const-string v0, "orca:PresenceManager"

    const-string v1, "Message received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 614
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 615
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->a:Z

    if-eqz v2, :cond_0

    .line 616
    iput-boolean v3, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->a:Z

    .line 617
    invoke-direct {p0, v1}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    .line 619
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/orca/users/UserKey;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 541
    const-string v2, "orca:PresenceManager"

    const-string v3, "User typing state changed: %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    invoke-direct {p0, p1}, Lcom/facebook/orca/presence/PresenceManager;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceManager$UserState;

    move-result-object v2

    .line 543
    if-ne p2, v0, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/facebook/orca/presence/PresenceManager$UserState;->a:Z

    .line 544
    invoke-direct {p0, p1}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    .line 545
    return-void

    :cond_0
    move v0, v1

    .line 543
    goto :goto_0
.end method

.method private b(Ljava/util/Map;Z)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 569
    const-string v0, "orca:PresenceManager"

    const-string v1, "Presence map received"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    if-eqz p2, :cond_0

    .line 571
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 572
    iput-boolean v2, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    goto :goto_0

    .line 575
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 576
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    invoke-direct {p0, v0}, Lcom/facebook/orca/presence/PresenceManager;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceManager$UserState;

    move-result-object v4

    .line 577
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v4, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    .line 578
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    invoke-direct {p0, v0}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 577
    goto :goto_2

    .line 581
    :cond_2
    if-eqz p2, :cond_3

    .line 582
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->h:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->g()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    .line 583
    invoke-direct {p0, v0}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_3

    .line 586
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    .line 587
    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;->a()V

    goto :goto_4

    .line 589
    :cond_4
    return-void
.end method

.method private c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceManager$UserState;
    .locals 2
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 412
    if-nez v0, :cond_0

    .line 413
    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$UserState;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/facebook/orca/presence/PresenceManager$UserState;-><init>(B)V

    .line 414
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 415
    if-nez v0, :cond_0

    move-object v0, v1

    .line 419
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->i()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->k()V

    return-void
.end method

.method private d(Lcom/facebook/orca/users/UserKey;)V
    .locals 3
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 431
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->h:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceState;

    move-result-object v1

    .line 433
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->h:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;

    .line 434
    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;->a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->p()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->q()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/orca/presence/PresenceManager;)Lcom/facebook/orca/common/util/AndroidThreadUtil;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->r()V

    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->m:Z

    .line 143
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->n()V

    .line 144
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 148
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->l()Z

    move-result v0

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/presence/PresenceManager;->m:Z

    .line 150
    iget-object v1, p0, Lcom/facebook/orca/presence/PresenceManager;->f:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/presence/PresenceManager;->n:J

    .line 151
    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.USER_BECAME_ACTIVE"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->n()V

    .line 155
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 159
    invoke-virtual {p0}, Lcom/facebook/orca/presence/PresenceManager;->a()Z

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/facebook/orca/presence/PresenceManager;->f:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/presence/PresenceManager;->o:J

    .line 161
    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.USER_BECAME_ACTIVE"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->n()V

    .line 165
    return-void
.end method

.method private l()Z
    .locals 4

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->f:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/presence/PresenceManager;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x2710

    const/4 v0, 0x1

    .line 200
    iget-object v1, p0, Lcom/facebook/orca/presence/PresenceManager;->f:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v1

    .line 201
    iget-wide v3, p0, Lcom/facebook/orca/presence/PresenceManager;->o:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v3, p0, Lcom/facebook/orca/presence/PresenceManager;->m:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/facebook/orca/presence/PresenceManager;->n:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 314
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iget-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->p:Z

    if-nez v0, :cond_0

    .line 316
    invoke-direct {p0, v4}, Lcom/facebook/orca/presence/PresenceManager;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iput-boolean v4, p0, Lcom/facebook/orca/presence/PresenceManager;->p:Z

    .line 320
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->q:Z

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    iget-object v1, p0, Lcom/facebook/orca/presence/PresenceManager;->r:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/lang/Runnable;J)V

    .line 322
    iput-boolean v4, p0, Lcom/facebook/orca/presence/PresenceManager;->q:Z

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 325
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->p:Z

    if-eqz v0, :cond_1

    .line 326
    invoke-direct {p0, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iput-boolean v1, p0, Lcom/facebook/orca/presence/PresenceManager;->p:Z

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 371
    iget-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->l:Z

    if-eqz v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->l:Z

    .line 375
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/presence/PresenceManager$2;-><init>(Lcom/facebook/orca/presence/PresenceManager;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 391
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    goto :goto_0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 395
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b()V

    .line 396
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 397
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->a()V

    .line 400
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->b()Lcom/facebook/orca/users/User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 402
    invoke-direct {p0, v2}, Lcom/facebook/orca/presence/PresenceManager;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceManager$UserState;

    move-result-object v2

    .line 403
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->u()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    sget-object v3, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v2, Lcom/facebook/orca/presence/PresenceManager$UserState;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    throw v1

    .line 403
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 406
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    .line 407
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 424
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    .line 425
    invoke-direct {p0, v0}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_0

    .line 427
    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 638
    const-string v0, "orca:PresenceManager"

    const-string v1, "MQTT disconnected"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 640
    iput-boolean v2, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    .line 641
    iput-boolean v2, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->a:Z

    goto :goto_0

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->h:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->g()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    .line 644
    invoke-direct {p0, v0}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_1

    .line 646
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 265
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->o()V

    .line 267
    return-void
.end method

.method public final a(Lcom/facebook/orca/threads/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/presence/PresenceManager$5;-><init>(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/threads/Message;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 603
    return-void
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/orca/presence/PresenceManager$3;-><init>(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/users/UserKey;I)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 532
    return-void
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 239
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->h:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->o()V

    .line 241
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 304
    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 306
    iget-object v1, p0, Lcom/facebook/orca/presence/PresenceManager;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v2, "/typing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;I)I

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/orca/presence/PresenceManager$4;-><init>(Lcom/facebook/orca/presence/PresenceManager;Ljava/util/Map;Z)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 560
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->f:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/presence/PresenceManager;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 453
    :goto_0
    return v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 450
    if-nez v0, :cond_1

    move v0, v1

    .line 451
    goto :goto_0

    .line 453
    :cond_1
    iget-boolean v0, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    goto :goto_0
.end method

.method public final b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceState;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 463
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lcom/facebook/orca/presence/PresenceState;

    sget-object v1, Lcom/facebook/orca/presence/Availability;->NONE:Lcom/facebook/orca/presence/Availability;

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/orca/presence/PresenceState;-><init>(Lcom/facebook/orca/presence/Availability;ZZ)V

    .line 477
    :goto_0
    return-object v0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 468
    if-nez v0, :cond_1

    .line 469
    new-instance v0, Lcom/facebook/orca/presence/PresenceState;

    sget-object v1, Lcom/facebook/orca/presence/Availability;->NONE:Lcom/facebook/orca/presence/Availability;

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/orca/presence/PresenceState;-><init>(Lcom/facebook/orca/presence/Availability;ZZ)V

    goto :goto_0

    .line 472
    :cond_1
    iget-boolean v1, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    if-eqz v1, :cond_2

    .line 473
    sget-object v1, Lcom/facebook/orca/presence/Availability;->AVAILABLE:Lcom/facebook/orca/presence/Availability;

    .line 477
    :goto_1
    new-instance v2, Lcom/facebook/orca/presence/PresenceState;

    iget-boolean v3, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->b:Z

    iget-boolean v0, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->a:Z

    invoke-direct {v2, v1, v3, v0}, Lcom/facebook/orca/presence/PresenceState;-><init>(Lcom/facebook/orca/presence/Availability;ZZ)V

    move-object v0, v2

    goto :goto_0

    .line 475
    :cond_2
    sget-object v1, Lcom/facebook/orca/presence/Availability;->NONE:Lcom/facebook/orca/presence/Availability;

    goto :goto_1
.end method

.method public final b(Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 277
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public final b(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->h:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->m:Z

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/facebook/orca/presence/PresenceManager;->o:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public final e()Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->j:Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;

    return-object v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 495
    :goto_0
    return-object v0

    .line 489
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 490
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 491
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/presence/PresenceManager$UserState;

    iget-boolean v1, v1, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    if-eqz v1, :cond_1

    .line 492
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 495
    goto :goto_0
.end method

.method public final g()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 510
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 511
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 512
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/presence/PresenceManager$UserState;

    iget-boolean v1, v1, Lcom/facebook/orca/presence/PresenceManager$UserState;->b:Z

    if-eqz v1, :cond_2

    .line 513
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 516
    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/presence/PresenceManager$6;-><init>(Lcom/facebook/orca/presence/PresenceManager;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 631
    return-void
.end method
