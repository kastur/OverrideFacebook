.class public Lcom/facebook/orca/push/mqtt/MqttConnectionManager;
.super Ljava/lang/Object;
.source "MqttConnectionManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/auth/UserTokenCredentials;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

.field private final e:Landroid/net/ConnectivityManager;

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/MqttConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/orca/mqtt/MqttSsl;

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/os/Handler;

.field private l:Lcom/facebook/orca/mqtt/MqttParameters;

.field private m:Lcom/facebook/orca/mqtt/MqttClient;

.field private n:Lcom/facebook/orca/push/mqtt/MqttPushService;

.field private o:J

.field private p:J

.field private q:J

.field private r:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private s:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private t:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field

.field private v:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;Ljavax/inject/Provider;Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;Landroid/net/ConnectivityManager;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/mqtt/MqttSsl;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
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
            "Landroid/content/Context;",
            "Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/auth/UserTokenCredentials;",
            ">;",
            "Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;",
            "Landroid/net/ConnectivityManager;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/MqttConfig;",
            ">;",
            "Lcom/facebook/orca/mqtt/MqttSsl;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->u:Ljava/util/Set;

    .line 89
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->k()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->v:Lcom/google/common/collect/Multimap;

    .line 103
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    .line 105
    iput-object p3, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c:Ljavax/inject/Provider;

    .line 106
    iput-object p4, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    .line 107
    iput-object p5, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Landroid/net/ConnectivityManager;

    .line 108
    iput-object p6, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Ljavax/inject/Provider;

    .line 109
    iput-object p7, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->g:Ljavax/inject/Provider;

    .line 110
    iput-object p8, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h:Lcom/facebook/orca/mqtt/MqttSsl;

    .line 111
    iput-object p9, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Ljavax/inject/Provider;

    .line 112
    iput-object p10, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Ljavax/inject/Provider;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/facebook/orca/mqtt/MqttClient;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/google/common/collect/Multimap;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->v:Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->u:Ljava/util/Set;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->r:Z

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    if-nez v0, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j()V

    .line 166
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->q:J

    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->t:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l()V

    .line 175
    :cond_1
    :goto_1
    return-void

    .line 157
    :cond_2
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->o:J

    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->s:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 159
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m()V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m()V

    goto :goto_0

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    if-eqz v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k()V

    goto :goto_1
.end method

.method private j()V
    .locals 11

    .prologue
    .line 181
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {v1}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->b()Ljava/lang/String;

    move-result-object v5

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/config/MqttConfig;

    move-object v4, v0

    .line 184
    if-nez v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/auth/UserTokenCredentials;

    move-object v7, v0

    .line 189
    if-eqz v7, :cond_0

    .line 193
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v10

    .line 194
    new-instance v1, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    const-string v2, "/orca_message_notifications"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    new-instance v1, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    const-string v2, "/orca_typing_notifications"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    const-string v2, "/orca_presence"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    new-instance v1, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    const-string v2, "/messaging_events"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    new-instance v1, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    const-string v2, "/push_notification"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v1, "orca:MqttConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connecting to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/facebook/orca/config/MqttConfig;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/orca/config/MqttConfig;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v4}, Lcom/facebook/orca/config/MqttConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/orca/config/MqttConfig;->b()I

    move-result v3

    invoke-virtual {v4}, Lcom/facebook/orca/config/MqttConfig;->c()Z

    move-result v4

    invoke-virtual {v7}, Lcom/facebook/orca/auth/UserTokenCredentials;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/facebook/orca/auth/UserTokenCredentials;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Lcom/facebook/orca/config/MqttConfig;->d()S

    const/16 v9, 0x12c

    invoke-direct/range {v1 .. v9}, Lcom/facebook/orca/mqtt/MqttParameters;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    iput-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l:Lcom/facebook/orca/mqtt/MqttParameters;

    .line 211
    new-instance v1, Lcom/facebook/orca/mqtt/MqttClient;

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h:Lcom/facebook/orca/mqtt/MqttSsl;

    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/mqtt/MqttClient;-><init>(Lcom/facebook/orca/mqtt/MqttSsl;Lcom/facebook/orca/mqtt/MqttParameters;)V

    iput-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    .line 212
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    new-instance v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/mqtt/MqttClient;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/MqttClientCallback;)V

    .line 213
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttClient;->a()V

    .line 214
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {v1, v10}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/util/List;)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->o:J
    :try_end_0
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 216
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 218
    const-string v3, "orca:MqttConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "MqttException: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    goto/16 :goto_0

    .line 218
    :cond_4
    const-string v1, "NULL"

    goto :goto_1
.end method

.method private k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    .line 229
    iput-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    .line 230
    invoke-virtual {v0, v1}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/MqttClientCallback;)V

    .line 231
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    .line 232
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->d()V

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->p:J

    .line 235
    :cond_0
    return-void
.end method

.method private l()V
    .locals 5

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    const-string v1, "/keepalive"

    const/4 v2, 0x0

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/lang/String;[BIZ)I

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->q:J
    :try_end_0
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 248
    const-string v2, "orca:MqttConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "MqttException: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->d()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    goto :goto_0

    .line 248
    :cond_1
    const-string v0, "NULL"

    goto :goto_1
.end method

.method private m()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "orca:MqttConnectionManager"

    const-string v1, "Reconnecting..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k()V

    .line 261
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j()V

    .line 264
    :cond_0
    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;I)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 287
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    .line 288
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 300
    :goto_0
    return v0

    .line 293
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->u:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :try_start_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->d(Ljava/lang/String;)[B

    move-result-object v3

    .line 295
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, p3, v4}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/lang/String;[BIZ)I

    move-result v0

    .line 296
    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->u:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_2 .. :try_end_2} :catch_0

    .line 300
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method final a()V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->r:Z

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->s:J

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->t:J

    .line 124
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i()V

    .line 125
    return-void
.end method

.method final a(Lcom/facebook/orca/push/mqtt/MqttPushService;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Lcom/facebook/orca/push/mqtt/MqttPushService;

    .line 118
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 322
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->v:Lcom/google/common/collect/Multimap;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->v:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;J)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v3, v1

    .line 307
    iget-object v5, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->u:Ljava/util/Set;

    monitor-enter v5

    .line 308
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;I)I

    move-result v6

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v3, v1

    .line 310
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 311
    iget-object v7, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->u:Ljava/util/Set;

    invoke-virtual {v7, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 312
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->u:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    monitor-exit v5

    .line 317
    :goto_1
    return v0

    .line 315
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v3, v1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->u:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 317
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method final b()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->r:Z

    .line 129
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i()V

    .line 130
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 328
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->v:Lcom/google/common/collect/Multimap;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->v:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 330
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->t:J

    .line 134
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i()V

    .line 135
    return-void
.end method

.method final d()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    const-string v1, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;->a(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a()V

    .line 140
    return-void
.end method

.method final e()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    const-string v1, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;->a(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    .line 146
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    .line 274
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Lcom/facebook/orca/mqtt/MqttClient;

    .line 279
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->p:J

    return-wide v0
.end method
