.class public Lcom/facebook/katana/service/method/BookmarksGet;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "BookmarksGet.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/method/BookmarksGet$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;

.field private static s:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final r:Lcom/facebook/katana/util/logging/PerformanceMarker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-class v0, Lcom/facebook/katana/service/method/BookmarksGet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->a:Ljava/lang/String;

    .line 46
    sput-boolean v1, Lcom/facebook/katana/service/method/BookmarksGet;->f:Z

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->g:Ljava/lang/String;

    .line 48
    sput-boolean v1, Lcom/facebook/katana/service/method/BookmarksGet;->h:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->i:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 68
    const-string v3, "GET"

    const-string v4, "bookmarks.get"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 71
    new-instance v0, Lcom/facebook/katana/util/logging/PerformanceMarker;

    sget-object v1, Lcom/facebook/katana/service/method/BookmarksGet;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/BookmarksGet;->r:Lcom/facebook/katana/util/logging/PerformanceMarker;

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/service/method/BookmarksGet;->r:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/katana/service/method/BookmarksGet;->e:Ljava/util/Map;

    const-string v1, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    if-eqz p3, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/katana/service/method/BookmarksGet;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/katana/service/method/BookmarksGet;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v5

    .line 94
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/facebook/katana/service/method/BookmarksGet;->c(Z)V

    .line 95
    new-instance v2, Lcom/facebook/katana/service/method/BookmarksGet;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-direct {v2, p0, v5, v1, v5}, Lcom/facebook/katana/service/method/BookmarksGet;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 97
    const/16 v3, 0x3e9

    const/16 v4, 0x3fc

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 201
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-static {}, Lcom/facebook/katana/service/method/BookmarksGet;->i()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->j:Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;

    invoke-static {v0}, Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;->a(Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;)Landroid/util/Pair;

    move-result-object v6

    .line 208
    if-eqz v6, :cond_0

    .line 214
    :try_start_0
    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move v4, v2

    .line 215
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/BookmarksGroup;

    invoke-virtual {v0}, Lcom/facebook/katana/model/BookmarksGroup;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/BookmarksGroup;

    invoke-virtual {v0}, Lcom/facebook/katana/model/BookmarksGroup;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 221
    if-eqz v0, :cond_2

    move v3, v2

    .line 222
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 226
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/Bookmark;

    iget-object v1, v1, Lcom/facebook/katana/model/Bookmark;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/Bookmark;

    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/facebook/katana/model/Bookmark;->count:J

    .line 225
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 215
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 234
    :cond_5
    new-instance v4, Lorg/json/JSONArray;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 235
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 236
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    const-string v6, "visible"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v6, "all"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 242
    if-eqz v0, :cond_6

    move v3, v2

    .line 243
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 247
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 248
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 249
    const-string v8, "count"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 235
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 255
    :cond_9
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-static {}, Lcom/facebook/katana/service/method/BookmarksGet;->i()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "bookmarks"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    sget-object v1, Lcom/facebook/katana/service/method/BookmarksGet;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/facebook/katana/service/method/BookmarksGet$Callback;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    sget-object v1, Lcom/facebook/katana/service/method/BookmarksGet;->i:Ljava/util/List;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->i:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 162
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/BookmarksGroup;

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/facebook/katana/model/BookmarksGroup;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    invoke-virtual {v0}, Lcom/facebook/katana/model/BookmarksGroup;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/Bookmark;

    .line 166
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 168
    :cond_2
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

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
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/facebook/katana/service/method/BookmarksGet;->i()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 106
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-static {p0}, Lcom/facebook/katana/model/BookmarksGroup;->a(Landroid/content/Context;)Lcom/facebook/katana/model/BookmarksGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {p0}, Lcom/facebook/katana/service/method/BookmarksGet;->c(Ljava/lang/String;)Ljava/util/List;

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
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 266
    const-class v1, Lcom/facebook/katana/model/BookmarksGroup;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 267
    return-object v0
.end method

.method private static c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 276
    sput-boolean p0, Lcom/facebook/katana/service/method/BookmarksGet;->f:Z

    .line 277
    return-void
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized i()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 191
    const-class v1, Lcom/facebook/katana/service/method/BookmarksGet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->s:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;

    invoke-direct {v0}, Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;-><init>()V

    sput-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->j:Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;

    .line 193
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    sget-object v2, Lcom/facebook/katana/service/method/BookmarksGet;->j:Lcom/facebook/katana/service/method/BookmarksGet$BookmarksManagedStoreClient;

    invoke-direct {v0, v2}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V

    sput-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->s:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 196
    :cond_0
    sget-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->s:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static j()Z
    .locals 1

    .prologue
    .line 271
    sget-boolean v0, Lcom/facebook/katana/service/method/BookmarksGet;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/katana/service/method/BookmarksGet;->c(Z)V

    .line 118
    const/16 v0, 0xc8

    if-ne p5, v0, :cond_2

    .line 119
    invoke-static {p2}, Lcom/facebook/katana/service/method/BookmarksGet;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 120
    sget-boolean v0, Lcom/facebook/katana/service/method/BookmarksGet;->h:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 122
    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSessionListener;->a()V

    goto :goto_0

    .line 126
    :cond_0
    sget-object v2, Lcom/facebook/katana/service/method/BookmarksGet;->i:Ljava/util/List;

    monitor-enter v2

    .line 127
    :try_start_0
    sget-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/BookmarksGet$Callback;

    .line 128
    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/BookmarksGet$Callback;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 130
    :cond_1
    :try_start_1
    sget-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/facebook/katana/service/method/BookmarksGet;->r:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/util/logging/PerformanceMarker;->b(Landroid/content/Context;)V

    .line 139
    :goto_2
    return-void

    .line 134
    :cond_2
    sget-object v1, Lcom/facebook/katana/service/method/BookmarksGet;->i:Ljava/util/List;

    monitor-enter v1

    .line 135
    :try_start_2
    sget-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/BookmarksGet$Callback;

    .line 136
    invoke-virtual {v0, p5}, Lcom/facebook/katana/service/method/BookmarksGet$Callback;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 139
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 138
    :cond_3
    :try_start_3
    sget-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 147
    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b()Ljava/lang/String;

    move-result-object v4

    .line 149
    sget-object v0, Lcom/facebook/katana/service/method/BookmarksGet;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/facebook/katana/service/method/BookmarksGet;->h:Z

    .line 150
    sput-object v4, Lcom/facebook/katana/service/method/BookmarksGet;->g:Ljava/lang/String;

    .line 151
    invoke-static {v4}, Lcom/facebook/katana/service/method/BookmarksGet;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 152
    invoke-static {v5}, Lcom/facebook/katana/service/method/BookmarksGet;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lcom/facebook/katana/service/method/BookmarksGet;->i()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/service/method/BookmarksGet;->o:Landroid/content/Context;

    const-string v3, "bookmarks"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_1
    const-string v0, "BOOKMARK_CORRUPTION"

    invoke-static {v0, v4}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    const-string v1, "Bogus bookmark"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v0
.end method
