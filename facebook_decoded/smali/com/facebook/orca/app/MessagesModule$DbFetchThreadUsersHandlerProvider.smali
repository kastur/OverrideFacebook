.class Lcom/facebook/orca/app/MessagesModule$DbFetchThreadUsersHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbFetchThreadUsersHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1091
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadUsersHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/database/DbFetchThreadUsersHandler;
    .locals 4

    .prologue
    .line 1095
    new-instance v2, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    const-class v1, Lcom/facebook/orca/annotations/ThreadsDb;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadUsersHandlerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-class v1, Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadUsersHandlerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v1, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadUsersHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserSerialization;

    invoke-direct {v2, v0, v3, v1}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljavax/inject/Provider;Lcom/facebook/orca/users/UserSerialization;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadUsersHandlerProvider;->b()Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    move-result-object v0

    return-object v0
.end method
