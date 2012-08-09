.class public Lcom/facebook/katana/service/method/PagesSearch;
.super Lcom/facebook/katana/service/method/ServiceOperation;
.source "PagesSearch.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;
.implements Lcom/facebook/katana/service/method/ServiceOperationListener;


# static fields
.field private static a:J


# instance fields
.field private final b:J

.field private c:Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/facebook/katana/service/method/PagesSearch;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/katana/service/method/ServiceOperation;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/katana/service/method/PagesSearch;->a:J

    .line 83
    sget-wide v0, Lcom/facebook/katana/service/method/PagesSearch;->a:J

    iput-wide v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->b:J

    .line 85
    iput-object p4, p0, Lcom/facebook/katana/service/method/PagesSearch;->e:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/facebook/katana/service/method/PagesSearch;->f:Ljava/lang/String;

    .line 87
    iput p5, p0, Lcom/facebook/katana/service/method/PagesSearch;->g:I

    .line 88
    iput p6, p0, Lcom/facebook/katana/service/method/PagesSearch;->h:I

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->d:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/PagesSearch;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 48
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v8

    .line 49
    new-instance v0, Lcom/facebook/katana/service/method/PagesSearch;

    invoke-virtual {v8}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/PagesSearch;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 52
    const/16 v6, 0x3e9

    const/16 v7, 0x3fc

    move-object v3, v8

    move-object v4, p0

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/PagesSearch;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/PagesSearch;->a(Ljava/util/Map;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/Map;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->b:J

    sget-wide v2, Lcom/facebook/katana/service/method/PagesSearch;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 130
    iget v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->g:I

    if-nez v0, :cond_2

    .line 131
    sget-object v0, Lcom/facebook/katana/provider/PagesProvider;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v3, v1, [Landroid/content/ContentValues;

    .line 144
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPage;

    .line 145
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v3, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 149
    const-string v6, "page_id"

    iget-wide v7, v0, Lcom/facebook/katana/model/FacebookPage;->mPageId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string v6, "display_name"

    iget-object v7, v0, Lcom/facebook/katana/model/FacebookPage;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v6, "pic"

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPage;->mPicSmall:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_3
    :try_start_2
    sget-object v0, Lcom/facebook/katana/provider/PagesProvider;->a:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 162
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/service/method/PagesSearch;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;

    iget-object v1, p0, Lcom/facebook/katana/service/method/PagesSearch;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/PagesSearch;->p:Landroid/content/Intent;

    iget-object v4, p0, Lcom/facebook/katana/service/method/PagesSearch;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/katana/service/method/PagesSearch;->e:Ljava/lang/String;

    iget v6, p0, Lcom/facebook/katana/service/method/PagesSearch;->g:I

    iget v7, p0, Lcom/facebook/katana/service/method/PagesSearch;->h:I

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->c:Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;

    .line 101
    iget-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->c:Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;->a()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;-><init>(Lcom/facebook/katana/service/method/PagesSearch;B)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;->start()V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
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

    .line 62
    iget v2, p0, Lcom/facebook/katana/service/method/PagesSearch;->g:I

    invoke-virtual {v0, p4, p5, p6, p7}, Lcom/facebook/katana/binding/AppSessionListener;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    invoke-interface {v0, p0, p2, p3, p4}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 259
    return-void
.end method

.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch;->c:Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;->a(Z)V

    .line 265
    return-void
.end method

.method public final b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    instance-of v0, p1, Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 251
    check-cast p1, Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;

    invoke-virtual {p1}, Lcom/facebook/katana/service/method/PagesSearch$PagesSearchInternal;->h()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/service/method/PagesSearch;->a(Ljava/util/Map;)V

    .line 252
    return-void
.end method
