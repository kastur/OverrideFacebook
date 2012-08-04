.class public Lcom/facebook/orca/cache/ThreadDisplayCache;
.super Ljava/lang/Object;
.source "ThreadDisplayCache.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;

.field private final b:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private final c:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/attachments/AttachmentDataFactory;Lcom/facebook/orca/threads/ThreadParticipantUtils;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    .line 87
    iput-object p2, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->b:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 88
    iput-object p3, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 89
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->c(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->h()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 94
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->e:Ljava/util/Map;

    .line 95
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->f:Ljava/util/Map;

    .line 96
    return-void
.end method

.method public static c(Lcom/facebook/orca/threads/ThreadSummary;)I
    .locals 1
    .parameter

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method private d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;
    .locals 7
    .parameter

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 138
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 139
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 140
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v6}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 149
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 151
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 158
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 160
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 162
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 163
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 164
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 175
    :cond_4
    new-instance v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;-><init>(JLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0

    .line 166
    :cond_5
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 167
    iget-object v4, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v4

    .line 168
    if-eqz v4, :cond_6

    .line 169
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 170
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/ThreadSummary;Z)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->b:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/net/Uri;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_0

    .line 224
    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/Long;
    .locals 2
    .parameter

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    .line 110
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->a(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->b(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 100
    return-void
.end method

.method public final a(Lcom/facebook/orca/threads/Message;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    move-result-object v5

    .line 261
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    .line 262
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v6

    cmp-long v4, v6, v10

    if-eqz v4, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 267
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-nez v4, :cond_3

    :cond_1
    move v4, v2

    .line 271
    :goto_0
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->c()J

    move-result-wide v8

    cmp-long v0, v8, v0

    if-gez v0, :cond_4

    move v0, v2

    .line 274
    :goto_1
    if-eqz v0, :cond_5

    .line 275
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;-><init>(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;J)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;)V

    .line 290
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v4, v3

    .line 267
    goto :goto_0

    :cond_4
    move v0, v3

    .line 271
    goto :goto_1

    .line 281
    :cond_5
    if-eqz v5, :cond_2

    .line 283
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    invoke-virtual {v5}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->b()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;-><init>(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;J)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;)V

    goto :goto_2
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 300
    if-nez p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 304
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    return-object v0
.end method

.method public final b(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    .line 125
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->a(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->c(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
