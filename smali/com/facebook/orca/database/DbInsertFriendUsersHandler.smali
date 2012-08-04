.class public Lcom/facebook/orca/database/DbInsertFriendUsersHandler;
.super Ljava/lang/Object;
.source "DbInsertFriendUsersHandler.java"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/users/UserSerialization;

.field private final c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

.field private final d:Lcom/facebook/orca/common/names/NameSplitter;

.field private final e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/users/UserSerialization;Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;Lcom/facebook/orca/common/names/NameSplitter;Lcom/facebook/orca/database/DbUsersPropertyUtil;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/facebook/orca/users/UserSerialization;",
            "Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;",
            "Lcom/facebook/orca/common/names/NameSplitter;",
            "Lcom/facebook/orca/database/DbUsersPropertyUtil;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    iput-object p2, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 43
    iput-object p3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    .line 44
    iput-object p4, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->d:Lcom/facebook/orca/common/names/NameSplitter;

    .line 45
    iput-object p5, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 46
    iput-object p6, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->f:Ljavax/inject/Provider;

    .line 47
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 109
    const-string v0, "fbid"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    const-string v3, "first_name"

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "last_name"

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "name"

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    const-string v0, "pic_big"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "pic_square"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/PicCropInfo;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 121
    const-string v3, "pic_crop"

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    const-string v0, "email_addresses"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/google/common/collect/ImmutableList;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "phone_numbers"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/users/UserSerialization;->b(Lcom/google/common/collect/ImmutableList;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "rank"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->t()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 129
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->u()Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    sget-object v3, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    if-eq v0, v3, :cond_2

    .line 130
    const-string v3, "is_pushable"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->u()Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    sget-object v4, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v0, v4, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->w()Lcom/facebook/orca/users/Birthday;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 133
    const-string v0, "birthday_month"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->w()Lcom/facebook/orca/users/Birthday;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/Birthday;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v0, "birthday_day"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->w()Lcom/facebook/orca/users/Birthday;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/Birthday;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v0, "birthday_year"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->w()Lcom/facebook/orca/users/Birthday;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/Birthday;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "facebook_users"

    const-string v4, ""

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->d:Lcom/facebook/orca/common/names/NameSplitter;

    invoke-virtual {v4, v1}, Lcom/facebook/orca/common/names/NameSplitter;->a(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    return-void

    :cond_4
    move v0, v1

    .line 130
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "facebook_users"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "facebook_users_name_lookup"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    :try_start_1
    const-string v1, "orca:DbInsertFriendUsersHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(Lcom/facebook/orca/server/GetFriendsResult;)V
    .locals 5
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 66
    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetFriendsResult;->d()Z

    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetFriendsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 71
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/users/User;)V

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbUserPropertyKey;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v2

    .line 76
    int-to-long v0, v1

    add-long/2addr v0, v2

    .line 77
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v3, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 85
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_1
    const-string v1, "orca:DbInsertFriendUsersHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 92
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/users/User;)V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbUserPropertyKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v3, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbUserPropertyKey;

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 103
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    :try_start_1
    const-string v1, "orca:DbInsertFriendUsersHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
