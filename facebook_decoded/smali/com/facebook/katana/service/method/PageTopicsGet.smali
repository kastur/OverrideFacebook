.class public Lcom/facebook/katana/service/method/PageTopicsGet;
.super Lcom/facebook/katana/service/method/FqlQuery;
.source "PageTopicsGet.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# static fields
.field private static a:Lcom/facebook/katana/service/method/PageTopicsGet$PageTopicsManagedStoreClient;

.field private static f:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/PageTopic;",
            ">;>;"
        }
    .end annotation
.end field

.field private static g:J

.field private static final h:[J

.field private static final i:[J

.field private static final j:[I

.field private static r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/PageTopic;",
            ">;"
        }
    .end annotation
.end field

.field private static s:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x9

    .line 49
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/katana/service/method/PageTopicsGet;->h:[J

    .line 61
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/katana/service/method/PageTopicsGet;->i:[J

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/katana/service/method/PageTopicsGet;->j:[I

    .line 66
    sput-object v2, Lcom/facebook/katana/service/method/PageTopicsGet;->r:Ljava/util/List;

    .line 68
    sput-object v2, Lcom/facebook/katana/service/method/PageTopicsGet;->s:[Ljava/lang/String;

    return-void

    .line 49
    nop

    :array_0
    .array-data 0x8
        0x39t 0x8ct 0xb0t 0x29t 0x5ct 0x79t 0x0t 0x0t
        0x8bt 0x9at 0xc9t 0x65t 0x96t 0xabt 0x0t 0x0t
        0x88t 0x2et 0x71t 0x54t 0xaft 0x96t 0x0t 0x0t
        0x64t 0xdat 0x71t 0x2bt 0x36t 0x42t 0x1t 0x0t
        0x74t 0xa1t 0xaet 0x29t 0x6t 0xf8t 0x0t 0x0t
        0xb2t 0x51t 0xadt 0xadt 0xd3t 0xa0t 0x0t 0x0t
        0xf2t 0x5et 0x80t 0xfet 0xaat 0xaet 0x0t 0x0t
        0x60t 0x29t 0xdat 0xe0t 0x71t 0xb6t 0x0t 0x0t
        0x82t 0x4et 0xact 0x8et 0xa0t 0x74t 0x0t 0x0t
    .end array-data

    .line 61
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v4, "SELECT id, parent_ids, name, count FROM place_topic WHERE topic_filter=\'all\'"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 81
    return-void
.end method

.method static synthetic a(J)J
    .locals 0
    .parameter

    .prologue
    .line 37
    sput-wide p0, Lcom/facebook/katana/service/method/PageTopicsGet;->g:J

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-object v5

    .line 97
    :cond_0
    new-instance v2, Lcom/facebook/katana/service/method/PageTopicsGet;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-direct {v2, p0, v5, v1, v5}, Lcom/facebook/katana/service/method/PageTopicsGet;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 99
    const/16 v3, 0x3e9

    const/16 v4, 0x3fc

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/PageTopic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/facebook/katana/service/method/PageTopicsGet;->m()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const-string v1, "page_topics"

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 110
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/facebook/katana/service/method/PageTopicsGet;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/facebook/katana/service/method/PageTopicsGet;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 114
    :cond_1
    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/facebook/katana/service/method/PageTopicsGet;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/PageTopic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 188
    const-class v1, Lcom/facebook/katana/model/PageTopic;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v1, "page_topic"

    const-string v2, "version"

    new-instance v3, Lcom/facebook/katana/service/method/PageTopicsGet$1;

    invoke-direct {v3}, Lcom/facebook/katana/service/method/PageTopicsGet$1;-><init>()V

    invoke-static {v0, p0, v1, v2, v3}, Lcom/facebook/katana/service/method/FqlGetUserServerSettings;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/facebook/katana/service/method/PageTopicsGet;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 264
    const-string v0, "page_topic_locale"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {p0}, Lcom/facebook/katana/UserAgent;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/PageTopic;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 272
    sget-object v1, Lcom/facebook/katana/service/method/PageTopicsGet;->s:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/katana/service/method/PageTopicsGet;->r:Ljava/util/List;

    if-nez v1, :cond_1

    .line 273
    :cond_0
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0b0484

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const v3, 0x7f0b0485

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0b048a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0b0486

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0b0487

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f0b0488

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x7f0b0489

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x7f0b048b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const v3, 0x7f0b048c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/facebook/katana/service/method/PageTopicsGet;->s:[Ljava/lang/String;

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/facebook/katana/service/method/PageTopicsGet;->r:Ljava/util/List;

    move v7, v0

    .line 286
    :goto_0
    sget-object v0, Lcom/facebook/katana/service/method/PageTopicsGet;->s:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 287
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 288
    sget-object v0, Lcom/facebook/katana/service/method/PageTopicsGet;->i:[J

    aget-wide v0, v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v8, Lcom/facebook/katana/service/method/PageTopicsGet;->r:Ljava/util/List;

    new-instance v0, Lcom/facebook/katana/model/PageTopic;

    sget-object v1, Lcom/facebook/katana/service/method/PageTopicsGet;->h:[J

    aget-wide v1, v1, v7

    sget-object v3, Lcom/facebook/katana/service/method/PageTopicsGet;->s:[Ljava/lang/String;

    aget-object v3, v3, v7

    const/4 v4, 0x0

    sget-object v6, Lcom/facebook/katana/service/method/PageTopicsGet;->j:[I

    aget v6, v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/model/PageTopic;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 294
    :cond_1
    sget-object v0, Lcom/facebook/katana/service/method/PageTopicsGet;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/facebook/katana/service/method/PageTopicsGet;->g:J

    return-wide v0
.end method

.method static synthetic i()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/facebook/katana/service/method/PageTopicsGet;->m()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized m()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/PageTopic;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 193
    const-class v1, Lcom/facebook/katana/service/method/PageTopicsGet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/service/method/PageTopicsGet;->f:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/facebook/katana/service/method/PageTopicsGet$PageTopicsManagedStoreClient;

    invoke-direct {v0}, Lcom/facebook/katana/service/method/PageTopicsGet$PageTopicsManagedStoreClient;-><init>()V

    sput-object v0, Lcom/facebook/katana/service/method/PageTopicsGet;->a:Lcom/facebook/katana/service/method/PageTopicsGet$PageTopicsManagedStoreClient;

    .line 195
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    sget-object v2, Lcom/facebook/katana/service/method/PageTopicsGet;->a:Lcom/facebook/katana/service/method/PageTopicsGet$PageTopicsManagedStoreClient;

    sget-object v3, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-direct {v0, v2, v3}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V

    sput-object v0, Lcom/facebook/katana/service/method/PageTopicsGet;->f:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 199
    :cond_0
    sget-object v0, Lcom/facebook/katana/service/method/PageTopicsGet;->f:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    const/16 v0, 0xc8

    if-ne p5, v0, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 160
    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSessionListener;->d()V

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 6
    .parameter

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-static {v4}, Lcom/facebook/katana/service/method/PageTopicsGet;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 171
    if-eqz v5, :cond_1

    .line 172
    invoke-static {}, Lcom/facebook/katana/service/method/PageTopicsGet;->m()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/service/method/PageTopicsGet;->o:Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, "page_topics"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    sget-wide v0, Lcom/facebook/katana/service/method/PageTopicsGet;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/facebook/katana/service/method/PageTopicsGet;->o:Landroid/content/Context;

    const-string v1, "page_topic_version"

    sget-wide v2, Lcom/facebook/katana/service/method/PageTopicsGet;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/service/method/PageTopicsGet;->o:Landroid/content/Context;

    const-string v1, "page_topic_locale"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PageTopicsGet;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/katana/UserAgent;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    :cond_0
    return-void

    .line 180
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    const-string v1, "Invalid Page Topics"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v0
.end method
