.class public Lcom/facebook/orca/database/DbCache;
.super Ljava/lang/Object;
.source "DbCache.java"


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "action_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_visible_action_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbCache;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbThreadsPropertyUtil;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/orca/database/DbCache;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    iput-object p2, p0, Lcom/facebook/orca/database/DbCache;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/database/DbCache;->c:Z

    .line 170
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/facebook/orca/database/DbCache;->c:Z

    return v0
.end method

.method public final a(Lcom/facebook/orca/threads/FolderName;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-object v1, p0, Lcom/facebook/orca/database/DbCache;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {p1}, Lcom/facebook/orca/database/DbProperties;->c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/facebook/orca/threads/FolderName;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/FolderName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v9

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/database/DbCache;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "threads"

    sget-object v2, Lcom/facebook/orca/database/DbCache;->d:[Ljava/lang/String;

    const-string v3, "folder=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp_ms DESC"

    const/16 v8, 0x19

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 109
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 113
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 114
    new-instance v0, Lcom/facebook/orca/database/DbCache$OutOfDateThread;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/database/DbCache$OutOfDateThread;-><init>(Ljava/lang/String;JJ)V

    .line 115
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "thread_id"

    aput-object v1, v2, v0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action_id IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v3, Lcom/facebook/orca/database/DbCache$1;

    invoke-direct {v3, p0}, Lcom/facebook/orca/database/DbCache$1;-><init>(Lcom/facebook/orca/database/DbCache;)V

    invoke-static {v1, v3}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/SqlUtil;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/database/DbCache;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 140
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 145
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 150
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 151
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    iget-object v3, p0, Lcom/facebook/orca/database/DbCache;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/database/DbProperties;->a(Ljava/lang/String;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v1

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v3

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbCache$OutOfDateThread;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbCache$OutOfDateThread;->a()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 161
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
