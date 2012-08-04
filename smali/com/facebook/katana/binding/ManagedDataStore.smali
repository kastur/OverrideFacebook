.class public Lcom/facebook/katana/binding/ManagedDataStore;
.super Ljava/lang/Object;
.source "ManagedDataStore.java"

# interfaces
.implements Lcom/facebook/katana/binding/NetworkRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/NetworkRequestCallback",
        "<TE;TK;TV;>;"
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:I

.field private static d:I


# instance fields
.field protected final a:Lcom/facebook/katana/binding/ManagedDataStore$Client;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/ManagedDataStore$Client",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/facebook/katana/binding/ManagedDataStore$InternalStore",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Long;

.field private j:Lcom/facebook/katana/util/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/binding/ManagedDataStore;->b:[Ljava/lang/String;

    .line 140
    const v0, 0xea60

    sput v0, Lcom/facebook/katana/binding/ManagedDataStore;->c:I

    .line 145
    sput v3, Lcom/facebook/katana/binding/ManagedDataStore;->d:I

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/katana/binding/ManagedDataStore$Client;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/ManagedDataStore$Client",
            "<TE;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->UNRESTRICTED:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/binding/ManagedDataStore;-><init>(Lcom/facebook/katana/binding/ManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/facebook/katana/binding/ManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/ManagedDataStore$Client",
            "<TE;TK;TV;>;",
            "Lcom/facebook/katana/binding/ManagedDataStore$Mode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    .line 177
    invoke-virtual {p0}, Lcom/facebook/katana/binding/ManagedDataStore;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->e:Ljava/util/Map;

    .line 178
    iput-object p2, p0, Lcom/facebook/katana/binding/ManagedDataStore;->g:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    .line 180
    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST_BY_KEY:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    if-ne p2, v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->h:Ljava/util/Map;

    .line 184
    :cond_0
    const-class v1, Lcom/facebook/katana/binding/ManagedDataStore;

    monitor-enter v1

    .line 185
    :try_start_0
    sget v0, Lcom/facebook/katana/binding/ManagedDataStore;->d:I

    iput v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->f:I

    .line 186
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    new-instance v0, Lcom/facebook/katana/util/TraceLogger;

    const/16 v1, 0x4000

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/TraceLogger;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    .line 189
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 491
    if-nez p0, :cond_0

    const-string v0, "(null)"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TK;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    invoke-interface {v1}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    invoke-interface {v1, p1, p2}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 461
    sget-object v0, Lcom/facebook/katana/provider/CacheProvider;->b:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 463
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 465
    if-eqz v2, :cond_0

    .line 466
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 467
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 469
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 470
    const-string v5, "value"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v5, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 472
    if-eqz v4, :cond_1

    .line 474
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    const-string v1, "name"

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    sget-object v1, Lcom/facebook/katana/provider/CacheProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 158
    const-class v1, Lcom/facebook/katana/binding/ManagedDataStore;

    monitor-enter v1

    .line 159
    :try_start_0
    sget v0, Lcom/facebook/katana/binding/ManagedDataStore;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/facebook/katana/binding/ManagedDataStore;->d:I

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    invoke-interface {v1}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TE;TK;)TV;"
        }
    .end annotation

    .prologue
    .line 213
    const/4 v7, 0x0

    .line 215
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;)V

    .line 217
    const-class v2, Lcom/facebook/katana/binding/ManagedDataStore;

    monitor-enter v2

    .line 218
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    iget v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->f:I

    sget v3, Lcom/facebook/katana/binding/ManagedDataStore;->d:I

    if-eq v1, v3, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/facebook/katana/binding/ManagedDataStore;->a()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->e:Ljava/util/Map;

    .line 221
    sget v1, Lcom/facebook/katana/binding/ManagedDataStore;->d:I

    iput v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->f:I

    .line 223
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    monitor-enter p0

    .line 228
    :try_start_3
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->e:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;

    .line 230
    if-eqz v1, :cond_3

    .line 231
    iget-object v2, v1, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;->a:Ljava/lang/Object;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;->b:J

    iget-object v7, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    const/4 v8, 0x0

    iget-object v1, v1, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;->a:Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-interface {v7, v8, v0, v1}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v7, v1

    add-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "successful read of key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from memory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;)V

    .line 236
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v2

    .line 348
    :cond_1
    :goto_0
    return-object v1

    .line 223
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 239
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v1, v3, v0, v2}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 241
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->e:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const/4 v7, 0x0

    .line 245
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 247
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 250
    sget-object v1, Lcom/facebook/katana/provider/CacheProvider;->b:Landroid/net/Uri;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/facebook/katana/binding/ManagedDataStore;->b:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 253
    if-eqz v3, :cond_11

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 254
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 257
    iget-object v6, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    const/4 v9, 0x0

    invoke-interface {v6, p1, v9, v1}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v6, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v6, v11, v0, v1}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v11, v6

    add-long/2addr v11, v4

    cmp-long v6, v9, v11

    if-gez v6, :cond_5

    .line 260
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 262
    :try_start_7
    iget-object v2, p0, Lcom/facebook/katana/binding/ManagedDataStore;->e:Ljava/util/Map;

    new-instance v6, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;

    invoke-direct {v6, v1, v4, v5}, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;-><init>(Ljava/lang/Object;J)V

    move-object/from16 v0, p3

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 264
    :try_start_8
    iget-object v2, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "successful read of key "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from disk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 276
    if-eqz v3, :cond_1

    .line 277
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 245
    :catchall_2
    move-exception v1

    monitor-exit p0

    throw v1

    .line 263
    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit p0

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 276
    :catchall_4
    move-exception v1

    if-eqz v3, :cond_4

    .line 277
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 269
    :cond_5
    :try_start_a
    iget-object v4, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-interface {v4, v5, v0, v1}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v2, v7

    .line 276
    :goto_2
    if-eqz v3, :cond_6

    .line 277
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_6
    const/4 v4, 0x0

    .line 283
    const/4 v3, 0x0

    .line 284
    sget-object v1, Lcom/facebook/katana/binding/ManagedDataStore$1;->a:[I

    iget-object v5, p0, Lcom/facebook/katana/binding/ManagedDataStore;->g:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-virtual {v5}, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    move v1, v3

    move v3, v4

    .line 327
    :goto_3
    if-eqz v3, :cond_7

    .line 328
    iget-object v3, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v3, p1, v4, v0, p0}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/katana/binding/NetworkRequestCallback;)Ljava/lang/String;

    .line 331
    :cond_7
    if-eqz v1, :cond_8

    .line 335
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    instance-of v1, v1, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;

    if-eqz v1, :cond_f

    .line 337
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    check-cast v1, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;

    .line 339
    iget-object v1, v1, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    :goto_4
    iget-object v3, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    invoke-virtual {v3}, Lcom/facebook/katana/util/TraceLogger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    invoke-virtual {v1}, Lcom/facebook/katana/util/TraceLogger;->a()V

    :cond_8
    move-object v1, v2

    .line 348
    goto/16 :goto_0

    :cond_9
    move-object v2, v1

    .line 272
    goto :goto_2

    .line 286
    :pswitch_0
    const/4 v1, 0x1

    move v13, v3

    move v3, v1

    move v1, v13

    .line 287
    goto :goto_3

    .line 290
    :pswitch_1
    iget-object v5, p0, Lcom/facebook/katana/binding/ManagedDataStore;->h:Ljava/util/Map;

    monitor-enter v5

    .line 291
    :try_start_b
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->h:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 292
    if-nez v1, :cond_b

    .line 293
    const/4 v4, 0x1

    move v1, v3

    move v3, v4

    .line 299
    :goto_5
    if-eqz v3, :cond_a

    .line 300
    iget-object v4, p0, Lcom/facebook/katana/binding/ManagedDataStore;->h:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_a
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    monitor-exit v5

    throw v1

    .line 294
    :cond_b
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget v1, Lcom/facebook/katana/binding/ManagedDataStore;->c:I

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_10

    .line 295
    const/4 v4, 0x1

    .line 296
    const/4 v3, 0x1

    move v1, v3

    move v3, v4

    goto :goto_5

    .line 303
    :pswitch_2
    monitor-enter p0

    .line 307
    :try_start_d
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->i:Ljava/lang/Long;

    if-nez v1, :cond_d

    .line 308
    const/4 v4, 0x1

    .line 309
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    const-string v5, "successfully acquired global lock (key: %s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p3}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    move v3, v4

    .line 319
    :goto_6
    if-eqz v3, :cond_c

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/binding/ManagedDataStore;->i:Ljava/lang/Long;

    .line 321
    iget-object v4, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    const-string v5, "mGlobalLock set to %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/katana/binding/ManagedDataStore;->i:Ljava/lang/Long;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto/16 :goto_3

    :catchall_6
    move-exception v1

    monitor-exit p0

    throw v1

    .line 311
    :cond_d
    :try_start_e
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget v1, Lcom/facebook/katana/binding/ManagedDataStore;->c:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_e

    .line 312
    const/4 v4, 0x1

    .line 313
    const/4 v3, 0x1

    .line 314
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    const-string v5, "lock had to be stolen (old lock timestamp: %d; key: %s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/katana/binding/ManagedDataStore;->i:Ljava/lang/Long;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_e
    move v1, v3

    move v3, v4

    goto :goto_6

    .line 341
    :cond_f
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_10
    move v1, v3

    move v3, v4

    goto/16 :goto_5

    :cond_11
    move-object v2, v7

    goto/16 :goto_2

    :cond_12
    move-object v7, v2

    goto/16 :goto_1

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Lcom/facebook/katana/binding/ManagedDataStore$InternalStore",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lcom/facebook/katana/binding/ManagedDataStore$ClearType;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_DISK:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_ALL:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    if-ne p2, v0, :cond_1

    .line 358
    :cond_0
    sget-object v0, Lcom/facebook/katana/provider/CacheProvider;->c:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/facebook/katana/binding/ManagedDataStore;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 363
    :cond_1
    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_MEMORY:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_ALL:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    if-ne p2, v0, :cond_3

    .line 364
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/katana/binding/ManagedDataStore;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->e:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_3
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lcom/facebook/katana/binding/ManagedDataStore$ClearType;J)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v4, 0x36ee80

    .line 376
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_DISK:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_ALL:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    if-ne p2, v0, :cond_1

    .line 377
    :cond_0
    sget-object v0, Lcom/facebook/katana/provider/CacheProvider;->d:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/facebook/katana/binding/ManagedDataStore;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    :cond_1
    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_MEMORY:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_ALL:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    if-ne p2, v0, :cond_4

    .line 385
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v1, v0, v4

    .line 386
    iget-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 387
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;

    .line 389
    iget-wide v4, v0, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;->b:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_3

    .line 390
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
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
            "ZTE;TK;",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got callback at MDS for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$1;->a:[I

    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->g:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 416
    :goto_0
    if-nez p2, :cond_1

    .line 436
    :cond_0
    :goto_1
    return-void

    .line 403
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/katana/binding/ManagedDataStore;->h:Ljava/util/Map;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->h:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 406
    :pswitch_1
    monitor-enter p0

    .line 410
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    const-string v1, "released global lock (key: %s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->i:Ljava/lang/Long;

    .line 412
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 420
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 423
    iget-object v2, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    invoke-interface {v2, p3, p4, p6}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2

    .line 424
    invoke-direct {p0, p3, p4}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 425
    iget-object v3, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Writing key "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to disk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;)V

    .line 426
    invoke-static {p1, v2, p5, v0, v1}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 430
    :cond_2
    iget-object v2, p0, Lcom/facebook/katana/binding/ManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    invoke-interface {v2, p3, p4, p6}, Lcom/facebook/katana/binding/ManagedDataStore$Client;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 431
    new-instance v2, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;

    invoke-direct {v2, p6, v0, v1}, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;-><init>(Ljava/lang/Object;J)V

    .line 432
    monitor-enter p0

    .line 433
    :try_start_2
    iget-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->e:Ljava/util/Map;

    invoke-interface {v0, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 401
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TE;TK;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 443
    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->e:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-direct {p0, v2, p3}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 448
    sget-object v1, Lcom/facebook/katana/provider/CacheProvider;->b:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 451
    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/facebook/katana/util/TraceLogger;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/facebook/katana/binding/ManagedDataStore;->j:Lcom/facebook/katana/util/TraceLogger;

    return-object v0
.end method
