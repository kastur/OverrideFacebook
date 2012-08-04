.class Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbFetchThreadsHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1103
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/database/DbFetchThreadsHandler;
    .locals 7

    .prologue
    .line 1107
    new-instance v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;

    const-class v1, Landroid/database/sqlite/SQLiteDatabase;

    const-class v2, Lcom/facebook/orca/annotations/ThreadsDb;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-class v2, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    const-class v3, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    const-class v4, Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/database/DbParticipantsSerialization;

    const-class v5, Lcom/facebook/orca/database/DbDraftSerialization;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/database/DbDraftSerialization;

    const-class v6, Lcom/facebook/orca/database/DbClock;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/database/DbClock;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadsHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbFetchThreadUsersHandler;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/DbParticipantsSerialization;Lcom/facebook/orca/database/DbDraftSerialization;Lcom/facebook/orca/database/DbClock;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;->b()Lcom/facebook/orca/database/DbFetchThreadsHandler;

    move-result-object v0

    return-object v0
.end method
