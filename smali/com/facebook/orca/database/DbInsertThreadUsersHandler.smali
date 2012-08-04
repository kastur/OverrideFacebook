.class public Lcom/facebook/orca/database/DbInsertThreadUsersHandler;
.super Ljava/lang/Object;
.source "DbInsertThreadUsersHandler.java"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/users/UserSerialization;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/users/UserSerialization;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    iput-object p2, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 31
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 36
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 38
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 39
    const-string v3, "user_key"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    const-string v4, "first_name"

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v4, "last_name"

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v4, "name"

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    const-string v3, "pic_big"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "pic_square"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 50
    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/PicCropInfo;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v3

    .line 51
    const-string v4, "pic_crop"

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->z()Lcom/facebook/orca/users/LastActive;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 55
    const-string v3, "last_active"

    iget-object v4, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->z()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/LastActive;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "thread_users"

    const-string v4, ""

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :try_start_1
    const-string v1, "orca:DbInsertUsersHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 62
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 68
    return-void
.end method
