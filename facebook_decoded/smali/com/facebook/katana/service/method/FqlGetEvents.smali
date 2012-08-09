.class public Lcom/facebook/katana/service/method/FqlGetEvents;
.super Lcom/facebook/katana/service/method/FqlMultiQuery;
.source "FqlGetEvents.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookEventFull;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-static {p1, v2, p3, p5, p6}, Lcom/facebook/katana/service/method/FqlGetEvents;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Ljava/util/LinkedHashMap;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 64
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Ljava/util/LinkedHashMap;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/FqlQuery;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 68
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    const-string v7, "event_info"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetEventInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetEventInfo;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J)V

    invoke-virtual {v8, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v9, "rsvp_status"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetEventRsvpStatus;

    const-string v7, "event_info"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetEventRsvpStatus;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JLjava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v6, "creator_info"

    new-instance v0, Lcom/facebook/katana/service/method/FqlGetProfile;

    const-string v5, "id IN (SELECT creator FROM #event_info)"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-object v8
.end method

.method private declared-synchronized i()V
    .locals 6

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetEvents;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 158
    sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetEvents;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetEvents;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Landroid/content/ContentValues;

    .line 167
    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetEvents;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookEventFull;

    .line 168
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v3, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 171
    invoke-virtual {v0, v5}, Lcom/facebook/katana/model/FacebookEventFull;->a(Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :cond_1
    :try_start_2
    sget-object v0, Lcom/facebook/katana/provider/EventsProvider;->a:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 9
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/facebook/katana/service/method/FqlMultiQuery;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 95
    const-string v0, "event_info"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetEvents;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetEventInfo;

    .line 96
    const-string v1, "rsvp_status"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/service/method/FqlGetEvents;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetEventRsvpStatus;

    .line 98
    const-string v2, "creator_info"

    invoke-virtual {p0, v2}, Lcom/facebook/katana/service/method/FqlGetEvents;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/method/FqlGetProfile;

    .line 100
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetEventInfo;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetEvents;->a:Ljava/util/List;

    .line 103
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 106
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetEvents;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookEventFull;

    .line 107
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookEventFull;->b()J

    move-result-wide v6

    .line 110
    invoke-virtual {v1, v6, v7}, Lcom/facebook/katana/service/method/FqlGetEvents$FqlGetEventRsvpStatus;->a(J)Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/katana/model/FacebookEventFull;->b(Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;)V

    .line 113
    new-instance v6, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookEventFull;->f()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 115
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 116
    if-nez v3, :cond_0

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/katana/service/method/FqlGetProfile;->h()Ljava/util/Map;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 130
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 132
    if-eqz v0, :cond_2

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/facebook/katana/model/FacebookEventFull;

    .line 134
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/model/FacebookEventFull;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_1

    .line 139
    :cond_3
    invoke-direct {p0}, Lcom/facebook/katana/service/method/FqlGetEvents;->i()V

    .line 140
    return-void
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookEventFull;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetEvents;->a:Ljava/util/List;

    return-object v0
.end method
