.class Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/users/AddressBookServiceHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2021
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2021
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/users/AddressBookServiceHandler;
    .locals 8

    .prologue
    .line 2025
    new-instance v0, Lcom/facebook/orca/users/AddressBookServiceHandler;

    const-class v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    const-class v3, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    const-class v4, Lcom/facebook/orca/users/MergeAddressBookHandler;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/users/MergeAddressBookHandler;

    const-class v5, Landroid/database/sqlite/SQLiteDatabase;

    const-class v6, Lcom/facebook/orca/annotations/UsersDb;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    const-class v6, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    const-class v7, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/users/AddressBookServiceHandler;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/protocol/methods/GetFriendsMethod;Lcom/facebook/orca/database/DbInsertFriendUsersHandler;Lcom/facebook/orca/users/MergeAddressBookHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/app/OrcaActivityBroadcaster;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2021
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b()Lcom/facebook/orca/users/AddressBookServiceHandler;

    move-result-object v0

    return-object v0
.end method
