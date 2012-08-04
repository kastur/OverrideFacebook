.class public Lcom/facebook/orca/database/DbProperties;
.super Ljava/lang/Object;
.source "DbProperties.java"


# static fields
.field public static final a:Lcom/facebook/orca/database/DbThreadPropertyKey;

.field public static final b:Lcom/facebook/orca/database/DbUserPropertyKey;

.field public static final c:Lcom/facebook/orca/database/DbUserPropertyKey;

.field public static final d:Lcom/facebook/orca/database/DbUserPropertyKey;

.field public static final e:Lcom/facebook/orca/database/DbUserPropertyKey;

.field private static f:Lcom/facebook/orca/database/DbThreadPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-string v1, "/sync/"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->f:Lcom/facebook/orca/database/DbThreadPropertyKey;

    .line 26
    new-instance v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-string v1, "/sync/last_thread_fetch_action_id/"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->a:Lcom/facebook/orca/database/DbThreadPropertyKey;

    .line 32
    new-instance v0, Lcom/facebook/orca/database/DbUserPropertyKey;

    const-string v1, "/sync/last_sync_client_time_ms"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbUserPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->b:Lcom/facebook/orca/database/DbUserPropertyKey;

    .line 34
    new-instance v0, Lcom/facebook/orca/database/DbUserPropertyKey;

    const-string v1, "/sync/last_get_friends_client_time_ms"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbUserPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbUserPropertyKey;

    .line 36
    new-instance v0, Lcom/facebook/orca/database/DbUserPropertyKey;

    const-string v1, "/sync/friend_count"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbUserPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbUserPropertyKey;

    .line 38
    new-instance v0, Lcom/facebook/orca/database/DbUserPropertyKey;

    const-string v1, "/sync/last_merged_contacts_client_time_ms"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbUserPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;
    .locals 2
    .parameter

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/orca/database/DbProperties;->f:Lcom/facebook/orca/database/DbThreadPropertyKey;

    invoke-virtual {p0}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-string v1, "/last_get_threads_client_time_ms"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Lcom/facebook/orca/database/DbThreadPropertyKey;
    .locals 1
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/facebook/orca/database/DbProperties;->a:Lcom/facebook/orca/database/DbThreadPropertyKey;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/database/DbThreadPropertyKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    return-object v0
.end method

.method public static final b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;
    .locals 2
    .parameter

    .prologue
    .line 19
    sget-object v0, Lcom/facebook/orca/database/DbProperties;->f:Lcom/facebook/orca/database/DbThreadPropertyKey;

    invoke-virtual {p0}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-string v1, "/last_get_threads_action_id"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    return-object v0
.end method

.method public static final c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;
    .locals 2
    .parameter

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/orca/database/DbProperties;->f:Lcom/facebook/orca/database/DbThreadPropertyKey;

    invoke-virtual {p0}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-string v1, "/threads_table_out_of_date"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    return-object v0
.end method
