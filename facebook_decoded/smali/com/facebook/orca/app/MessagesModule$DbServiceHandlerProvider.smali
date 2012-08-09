.class Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbServiceHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/database/DbServiceHandler;
    .locals 12

    .prologue
    .line 1181
    new-instance v0, Lcom/facebook/orca/database/DbServiceHandler;

    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/DataCache;

    const-class v2, Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/database/DbFetchThreadsHandler;

    const-class v3, Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/database/DbFetchThreadHandler;

    const-class v4, Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/database/DbInsertThreadsHandler;

    const-class v5, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    const-class v6, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    const-class v7, Landroid/database/sqlite/SQLiteDatabase;

    const-class v8, Lcom/facebook/orca/annotations/ThreadsDb;

    invoke-virtual {p0, v7, v8}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteDatabase;

    const-class v8, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v9, Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-virtual {p0, v9}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/appconfig/AppConfigSerialization;

    const-class v10, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {p0, v10}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    const-class v11, Lcom/facebook/orca/database/DbCache;

    invoke-virtual {p0, v11}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/orca/database/DbCache;

    invoke-direct/range {v0 .. v11}, Lcom/facebook/orca/database/DbServiceHandler;-><init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/database/DbFetchThreadsHandler;Lcom/facebook/orca/database/DbFetchThreadHandler;Lcom/facebook/orca/database/DbInsertThreadsHandler;Lcom/facebook/orca/database/DbInsertThreadUsersHandler;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/appconfig/AppConfigSerialization;Lcom/facebook/orca/threads/MessagesCollectionMerger;Lcom/facebook/orca/database/DbCache;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;->b()Lcom/facebook/orca/database/DbServiceHandler;

    move-result-object v0

    return-object v0
.end method
