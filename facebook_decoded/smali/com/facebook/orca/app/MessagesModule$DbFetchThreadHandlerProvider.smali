.class Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbFetchThreadHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1071
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/database/DbFetchThreadHandler;
    .locals 12

    .prologue
    .line 1075
    new-instance v0, Lcom/facebook/orca/database/DbFetchThreadHandler;

    const-class v1, Landroid/database/sqlite/SQLiteDatabase;

    const-class v2, Lcom/facebook/orca/annotations/ThreadsDb;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-class v2, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    const-class v3, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    const-class v4, Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/database/DbParticipantsSerialization;

    const-class v5, Lcom/facebook/orca/database/DbAttachmentSerialization;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/database/DbAttachmentSerialization;

    const-class v6, Lcom/facebook/orca/database/DbSharesSerialization;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/database/DbSharesSerialization;

    const-class v7, Lcom/facebook/orca/database/DbCoordinatesSerialization;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/database/DbCoordinatesSerialization;

    const-class v8, Lcom/facebook/orca/database/DbMediaResourceSerialization;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/database/DbMediaResourceSerialization;

    const-class v9, Lcom/facebook/orca/database/DbDraftSerialization;

    invoke-virtual {p0, v9}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/database/DbDraftSerialization;

    const-class v10, Lcom/facebook/orca/database/DbMessageCache;

    invoke-virtual {p0, v10}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/orca/database/DbMessageCache;

    const-class v11, Lcom/facebook/orca/database/DbClock;

    invoke-virtual {p0, v11}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/orca/database/DbClock;

    invoke-direct/range {v0 .. v11}, Lcom/facebook/orca/database/DbFetchThreadHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/DbFetchThreadUsersHandler;Lcom/facebook/orca/database/DbParticipantsSerialization;Lcom/facebook/orca/database/DbAttachmentSerialization;Lcom/facebook/orca/database/DbSharesSerialization;Lcom/facebook/orca/database/DbCoordinatesSerialization;Lcom/facebook/orca/database/DbMediaResourceSerialization;Lcom/facebook/orca/database/DbDraftSerialization;Lcom/facebook/orca/database/DbMessageCache;Lcom/facebook/orca/database/DbClock;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;->b()Lcom/facebook/orca/database/DbFetchThreadHandler;

    move-result-object v0

    return-object v0
.end method
