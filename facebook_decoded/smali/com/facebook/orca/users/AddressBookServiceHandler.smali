.class public Lcom/facebook/orca/users/AddressBookServiceHandler;
.super Ljava/lang/Object;
.source "AddressBookServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

.field private final c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

.field private final d:Lcom/facebook/orca/users/MergeAddressBookHandler;

.field private final e:Landroid/database/sqlite/SQLiteDatabase;

.field private final f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

.field private final g:Lcom/facebook/orca/app/OrcaActivityBroadcaster;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/protocol/methods/GetFriendsMethod;Lcom/facebook/orca/database/DbInsertFriendUsersHandler;Lcom/facebook/orca/users/MergeAddressBookHandler;Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/app/OrcaActivityBroadcaster;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;",
            "Lcom/facebook/orca/protocol/methods/GetFriendsMethod;",
            "Lcom/facebook/orca/database/DbInsertFriendUsersHandler;",
            "Lcom/facebook/orca/users/MergeAddressBookHandler;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/facebook/orca/database/DbUsersPropertyUtil;",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->a:Ljavax/inject/Provider;

    .line 57
    iput-object p2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->b:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    .line 58
    iput-object p3, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    .line 59
    iput-object p4, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->d:Lcom/facebook/orca/users/MergeAddressBookHandler;

    .line 60
    iput-object p5, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    iput-object p6, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 62
    iput-object p7, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->g:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 63
    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 158
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    .line 160
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->d:Lcom/facebook/orca/users/MergeAddressBookHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/users/MergeAddressBookHandler;->a()V

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    goto :goto_0
.end method

.method private a()Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v0, v1, v6, v7}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xa4cb80

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 86
    :cond_0
    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 88
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/users/AddressBookServiceHandler;->a(J)Z
    :try_end_0
    .catch Lcom/facebook/orca/protocol/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/ApiException;->b()Lcom/facebook/orca/protocol/base/ApiErrorResult;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/ApiErrorResult;->a()I

    move-result v1

    const/16 v2, 0xc1

    if-ne v1, v2, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->b()Z

    move-result v0

    goto :goto_1

    .line 95
    :cond_1
    throw v0

    .line 97
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->b()Z

    move-result v0

    goto :goto_1
.end method

.method private a(J)Z
    .locals 4
    .parameter

    .prologue
    .line 140
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 143
    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/orca/server/GetFriendsParams;->a(J)Lcom/facebook/orca/server/GetFriendsParams;

    move-result-object v1

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 145
    iget-object v2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->b:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetFriendsResult;

    .line 146
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b()V

    .line 147
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/server/GetFriendsResult;)V

    .line 148
    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 149
    const-string v1, "orca:AddressBookServiceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " incremental sync results."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 154
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 152
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    .line 108
    const/4 v0, 0x0

    move v3, v2

    move-object v4, v0

    move v5, v1

    .line 111
    :goto_0
    if-nez v3, :cond_1

    const/16 v0, 0x14

    .line 113
    :goto_1
    invoke-static {v0, v4}, Lcom/facebook/orca/server/GetFriendsParams;->a(ILjava/lang/String;)Lcom/facebook/orca/server/GetFriendsParams;

    move-result-object v4

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 115
    iget-object v6, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->b:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    invoke-virtual {v0, v6, v4}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetFriendsResult;

    .line 117
    iget-object v4, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 119
    if-eqz v5, :cond_0

    .line 120
    :try_start_0
    iget-object v4, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v4}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a()V

    .line 121
    iget-object v4, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v4}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b()V

    move v5, v2

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/server/GetFriendsResult;)V

    .line 126
    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->f()Ljava/lang/String;

    move-result-object v4

    .line 127
    const-string v6, "orca:AddressBookServiceHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Got "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " friends in batch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/2addr v0, v3

    .line 129
    iget-object v3, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v3, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    iget-object v3, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->g:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v6, "com.facebook.orca.ACTION_FRIEND_SYNC_PROGRESS"

    invoke-virtual {v3, v6}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V

    .line 134
    if-nez v4, :cond_3

    .line 135
    const-string v3, "orca:AddressBookServiceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " friends."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    return v0

    .line 111
    :cond_1
    const/16 v0, 0x32

    goto/16 :goto_1

    .line 131
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_2
    move v0, v2

    .line 136
    goto :goto_2

    :cond_3
    move v3, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "sync_address_book"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->a()Z

    move-result v0

    .line 70
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->a(Z)V

    .line 71
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown operation type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
