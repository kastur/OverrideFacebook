.class public Lcom/facebook/orca/database/DbFetchThreadUsersHandler;
.super Ljava/lang/Object;
.source "DbFetchThreadUsersHandler.java"


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/users/UserSerialization;

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "first_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pic_big"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pic_square"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pic_crop"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "last_active"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljavax/inject/Provider;Lcom/facebook/orca/users/UserSerialization;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;",
            "Lcom/facebook/orca/users/UserSerialization;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    iput-object p3, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 44
    iput-object p2, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->c:Ljavax/inject/Provider;

    .line 45
    return-void
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 118
    invoke-virtual {v0, p1}, Lcom/facebook/orca/users/FacebookUserIterator;->a(Ljava/util/Collection;)V

    .line 121
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->b()Lcom/facebook/orca/users/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    .line 128
    return-object v1
.end method


# virtual methods
.method final a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 63
    const-string v0, "DbFetchThreadUsersHandler.doThreadUsersQuery"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v8

    .line 64
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v9

    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v10

    .line 69
    if-eqz p1, :cond_4

    .line 70
    invoke-static {p1}, Lcom/facebook/orca/users/UserKey;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user_key IN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "thread_users"

    sget-object v2, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->d:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 75
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    .line 77
    new-instance v6, Lcom/facebook/orca/users/Name;

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v1, v2}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 82
    const/4 v0, 0x6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    move-object v2, v0

    .line 87
    :goto_2
    const/4 v0, 0x7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    const/4 v0, 0x7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-static {v0}, Lcom/facebook/orca/users/UserSerialization;->d(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    move-object v1, v0

    .line 93
    :goto_3
    invoke-interface {v10, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 97
    :goto_4
    new-instance v7, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v7}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v11

    invoke-virtual {v5}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/orca/users/UserBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/orca/users/UserBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/LastActive;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 106
    invoke-interface {v9, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 110
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 111
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0

    .line 108
    :cond_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 110
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 111
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    return-object v0

    :cond_1
    move-object v0, v4

    goto :goto_4

    :cond_2
    move-object v1, v4

    goto :goto_3

    :cond_3
    move-object v2, v4

    goto :goto_2

    :cond_4
    move-object v3, v4

    goto/16 :goto_0
.end method
