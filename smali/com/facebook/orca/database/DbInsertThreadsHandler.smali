.class public Lcom/facebook/orca/database/DbInsertThreadsHandler;
.super Ljava/lang/Object;
.source "DbInsertThreadsHandler.java"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

.field private final c:Lcom/facebook/orca/database/DbFetchThreadHandler;

.field private final d:Lcom/facebook/orca/database/DbParticipantsSerialization;

.field private final e:Lcom/facebook/orca/database/DbAttachmentSerialization;

.field private final f:Lcom/facebook/orca/database/DbSharesSerialization;

.field private final g:Lcom/facebook/orca/database/DbCoordinatesSerialization;

.field private final h:Lcom/facebook/orca/database/DbMediaResourceSerialization;

.field private final i:Lcom/facebook/orca/database/DbDraftSerialization;

.field private final j:Lcom/facebook/orca/threads/MessagesCollectionMerger;

.field private final k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/facebook/orca/threads/ThreadSummaryStitching;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/DbFetchThreadHandler;Lcom/facebook/orca/database/DbParticipantsSerialization;Lcom/facebook/orca/database/DbAttachmentSerialization;Lcom/facebook/orca/database/DbSharesSerialization;Lcom/facebook/orca/database/DbCoordinatesSerialization;Lcom/facebook/orca/database/DbMediaResourceSerialization;Lcom/facebook/orca/database/DbDraftSerialization;Lcom/facebook/orca/threads/MessagesCollectionMerger;Ljavax/inject/Provider;Lcom/facebook/orca/threads/ThreadSummaryStitching;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/facebook/orca/database/DbThreadsPropertyUtil;",
            "Lcom/facebook/orca/database/DbFetchThreadHandler;",
            "Lcom/facebook/orca/database/DbParticipantsSerialization;",
            "Lcom/facebook/orca/database/DbAttachmentSerialization;",
            "Lcom/facebook/orca/database/DbSharesSerialization;",
            "Lcom/facebook/orca/database/DbCoordinatesSerialization;",
            "Lcom/facebook/orca/database/DbMediaResourceSerialization;",
            "Lcom/facebook/orca/database/DbDraftSerialization;",
            "Lcom/facebook/orca/threads/MessagesCollectionMerger;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/threads/ThreadSummaryStitching;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    iput-object p2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    .line 90
    iput-object p3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    .line 91
    iput-object p4, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    .line 92
    iput-object p5, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e:Lcom/facebook/orca/database/DbAttachmentSerialization;

    .line 93
    iput-object p6, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->f:Lcom/facebook/orca/database/DbSharesSerialization;

    .line 94
    iput-object p7, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->g:Lcom/facebook/orca/database/DbCoordinatesSerialization;

    .line 95
    iput-object p8, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->h:Lcom/facebook/orca/database/DbMediaResourceSerialization;

    .line 96
    iput-object p9, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->i:Lcom/facebook/orca/database/DbDraftSerialization;

    .line 97
    iput-object p10, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->j:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    .line 98
    iput-object p11, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->k:Ljavax/inject/Provider;

    .line 99
    iput-object p12, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->l:Lcom/facebook/orca/threads/ThreadSummaryStitching;

    .line 100
    return-void
.end method

.method private static a(Lcom/facebook/orca/threads/ThreadParticipant;ZJLjava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    new-instance v0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;-><init>()V

    .line 547
    invoke-virtual {v0, p0}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Lcom/facebook/orca/threads/ThreadParticipant;)V

    .line 548
    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(J)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    .line 553
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->f()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    return-object v0

    .line 551
    :cond_0
    invoke-virtual {v0, p4}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    goto :goto_0
.end method

.method private static a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 768
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->y()Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v0

    .line 769
    if-nez v0, :cond_0

    .line 775
    :goto_0
    return-object p0

    .line 772
    :cond_0
    new-instance v1, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v1

    .line 774
    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/compose/MessageDraft;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 775
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->x()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object p0

    goto :goto_0
.end method

.method private a(Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg_id IN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 622
    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/FolderName;)V
    .locals 6
    .parameter

    .prologue
    .line 576
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folders"

    const-string v2, "folder=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->a:Lcom/facebook/orca/database/DbThreadPropertyKey;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->c(Lcom/facebook/orca/common/util/TypedKey;)V

    .line 580
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 586
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    :try_start_1
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/FolderCounts;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 459
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 460
    const-string v1, "folder"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v1, "unread_count"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/FolderCounts;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    const-string v1, "unseen_count"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/FolderCounts;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    const-string v1, "last_seen_time"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/FolderCounts;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    const-string v1, "last_action_id"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/FolderCounts;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 465
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folder_counts"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 466
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 684
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 685
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 686
    const-string v3, "folder"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v3, "thread_id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v3, "timestamp_ms"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 689
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "folders"

    const-string v4, ""

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 692
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 694
    const-string v1, "folder"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v1, "thread_id"

    invoke-static {p1}, Lcom/facebook/orca/database/DbFolders;->a(Lcom/facebook/orca/threads/FolderName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v1, "timestamp_ms"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folders"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 699
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/FolderName;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 590
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folders"

    const-string v2, "folder=? AND thread_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 595
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 823
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;Z)V

    .line 825
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 1
    .parameter

    .prologue
    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;Z)V

    .line 829
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;Z)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 833
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 835
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v2

    .line 836
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v3

    .line 837
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v4

    .line 838
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v5

    .line 839
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 840
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 841
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 844
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-direct {p0, v1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c(Lcom/facebook/orca/threads/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 846
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 923
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 848
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c(Lcom/facebook/orca/threads/Message;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 849
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 854
    :cond_3
    invoke-direct {p0, v4}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v6

    .line 858
    invoke-direct {p0, v4}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 862
    invoke-direct {p0, v5}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v5

    .line 866
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "offline_threading_id IN "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    const-string v3, "orca:DbInsertThreadsHandler"

    const-string v7, "Deleting messsages WHERE %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v3, v7, v8}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "messages"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 874
    :cond_4
    invoke-direct {p0, v2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 876
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/threads/Message;

    move-object v2, v0

    .line 878
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    .line 881
    :try_start_2
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->h:Lcom/facebook/orca/database/DbMediaResourceSerialization;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/database/DbMediaResourceSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    .line 883
    new-instance v8, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v8}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v8, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    move-object v1, v2

    .line 892
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 894
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 899
    new-instance v2, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/facebook/orca/threads/MessageBuilder;->b(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 904
    :cond_6
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 906
    new-instance v2, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/MessageBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 911
    :cond_7
    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Lcom/facebook/orca/threads/Message;Z)V

    goto/16 :goto_1

    .line 888
    :catch_0
    move-exception v1

    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v8, "Preserving of the prior pendingSetnAttachment failed"

    invoke-static {v1, v8}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object v1, v2

    goto :goto_2

    .line 913
    :cond_9
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 914
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 915
    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Lcom/facebook/orca/threads/Message;Z)V

    .line 921
    :cond_a
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 923
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 924
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 7
    .parameter

    .prologue
    .line 702
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 703
    const-string v1, "folder"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->x()Lcom/facebook/orca/threads/FolderName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v1, "timestamp_ms"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 705
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folders"

    const-string v3, "thread_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 706
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 711
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 713
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 714
    const-string v0, "thread_id"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v0, "action_id"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 716
    const-string v0, "refetch_action_id"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 717
    const-string v0, "last_visible_action_id"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 718
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    const-string v0, "name"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    const-string v0, "pic_hash"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    const-string v0, "pic"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->r()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_2
    const-string v0, "participants"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v0, "former_participants"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->z()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v0, "object_participants"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "senders"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v3, "single_recipient_thread"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    const-string v0, "single_recipient_user_key"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->h()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v0, "snippet"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v0, "snippet_sender"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->o()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "admin_snippet"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "timestamp_ms"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 744
    const-string v0, "last_fetch_time_ms"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 745
    const-string v0, "unread"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->t()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 746
    const-string v0, "can_reply_to"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 747
    const-string v0, "is_subscribed"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 748
    const-string v0, "folder"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->x()Lcom/facebook/orca/threads/FolderName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "draft"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->i:Lcom/facebook/orca/database/DbDraftSerialization;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->y()Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/database/DbDraftSerialization;->a(Lcom/facebook/orca/compose/MessageDraft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "threads"

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 751
    return-void

    .line 736
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x1

    .line 626
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 628
    :try_start_0
    invoke-static {}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a()Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v4

    .line 629
    const-string v0, "thread_id"

    invoke-static {v0, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 630
    const-string v0, "msg_type"

    const/16 v1, 0x384

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 633
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 634
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "msg_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "timestamp_ms"

    aput-object v5, v2, v3

    invoke-virtual {v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->b()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp_ms"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 638
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 641
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 644
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 664
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 644
    :cond_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 647
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 648
    add-long v0, p2, v10

    .line 649
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 652
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-gez v1, :cond_1

    .line 653
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 654
    const-string v5, "timestamp_ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 655
    iget-object v5, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "messages"

    const-string v7, "msg_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v8, v9

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    add-long v0, v2, v10

    move-wide v2, v0

    .line 657
    goto :goto_1

    .line 658
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v10

    move-wide v2, v0

    goto :goto_1

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 664
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 665
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/users/UserKey;ZJLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 514
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v0, p1, v5}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v1, v2, :cond_0

    .line 538
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 520
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 523
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    invoke-static {v0, p3, p4, p5, p6}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadParticipant;ZJLjava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 530
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 534
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 535
    const-string v2, "participants"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "threads"

    const-string v3, "thread_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 3
    .parameter

    .prologue
    .line 754
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v1, v2, :cond_0

    .line 763
    :goto_0
    return-object p1

    .line 760
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 761
    invoke-static {p1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 762
    invoke-static {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object p1

    goto :goto_0
.end method

.method private static b(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 780
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v2

    .line 783
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 784
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 787
    :cond_0
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v3

    .line 789
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 791
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 792
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 794
    if-nez v1, :cond_1

    .line 795
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 797
    :cond_1
    new-instance v6, Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    invoke-direct {v6}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;-><init>()V

    .line 798
    invoke-virtual {v6, v0}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Lcom/facebook/orca/threads/ThreadParticipant;)V

    .line 801
    invoke-virtual {v6}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->d()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_2

    .line 803
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(J)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    .line 806
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    .line 808
    invoke-virtual {v6}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->f()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 812
    :cond_3
    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 813
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->x()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 814
    return-object v0
.end method

.method private b(Ljava/util/Set;)Ljava/util/Map;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 935
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->i()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 936
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 937
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v8

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg_id IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 940
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "msg_id"

    aput-object v5, v2, v7

    const-string v5, "offline_threading_id"

    aput-object v5, v2, v6

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 950
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 956
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 959
    :cond_2
    return-object v0
.end method

.method private b(Lcom/facebook/orca/threads/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 818
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 820
    return-void
.end method

.method private b(Lcom/facebook/orca/threads/Message;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1063
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1064
    const-string v1, "msg_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v1, "thread_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v1, "action_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1067
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1068
    const-string v1, "text"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_0
    const-string v1, "sender"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string v1, "timestamp_ms"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1073
    const-string v1, "msg_type"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1074
    const-string v1, "affected_users"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->q()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v1, "attachments"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e:Lcom/facebook/orca/database/DbAttachmentSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/database/DbAttachmentSerialization;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v1, "shares"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->f:Lcom/facebook/orca/database/DbSharesSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v1, "coordinates"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->g:Lcom/facebook/orca/database/DbCoordinatesSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->j()Lcom/facebook/orca/location/Coordinates;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/database/DbCoordinatesSerialization;->a(Lcom/facebook/orca/location/Coordinates;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string v1, "offline_threading_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v1, "source"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    if-eqz p2, :cond_3

    .line 1084
    const-string v1, "is_non_authoritative"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1088
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1089
    const-string v1, "pending_send_media_attachment"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->h:Lcom/facebook/orca/database/DbMediaResourceSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/database/DbMediaResourceSerialization;->a(Lcom/facebook/orca/attachments/MediaResource;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 1094
    const-string v1, "timestamp_sent_ms"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1097
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1098
    const-string v0, "orca:DbInsertThreadsHandler"

    const-string v1, "Inserted message: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    return-void

    .line 1086
    :cond_3
    const-string v1, "is_non_authoritative"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folders"

    const-string v2, "thread_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "threads"

    const-string v2, "thread_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const-string v2, "thread_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {p1}, Lcom/facebook/orca/database/DbProperties;->a(Ljava/lang/String;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;)V

    .line 604
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 610
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    :try_start_1
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private c(Ljava/util/Set;)Ljava/util/Map;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 971
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->i()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 972
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    :goto_0
    return-object v0

    .line 975
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v8

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "offline_threading_id IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 978
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "offline_threading_id"

    aput-object v5, v2, v7

    const-string v5, "timestamp_sent_ms"

    aput-object v5, v2, v6

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 987
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 988
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 989
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 993
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 995
    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 614
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const-string v2, "thread_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 615
    return-void
.end method

.method private c(Lcom/facebook/orca/threads/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 1111
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    .line 1112
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 1113
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/util/Set;)Ljava/util/Map;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1006
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->i()Lcom/google/common/collect/ImmutableMap;

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pending_send_media_attachment NOT NULL AND offline_threading_id IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "offline_threading_id"

    aput-object v5, v2, v6

    const-string v5, "pending_send_media_attachment"

    aput-object v5, v2, v7

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1018
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 1019
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1023
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1025
    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 669
    invoke-static {}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a()Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v0

    .line 670
    const-string v1, "msg_type"

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 672
    if-eqz p1, :cond_0

    .line 673
    const-string v1, "thread_id"

    invoke-static {v1, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 676
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 677
    const-string v2, "msg_type"

    const/16 v3, 0x385

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages"

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 680
    return-void
.end method

.method private static e(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    .locals 3
    .parameter

    .prologue
    .line 1102
    new-instance v0, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/util/Set;)Ljava/util/Set;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1035
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1036
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    :goto_0
    return-object v0

    .line 1039
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v8

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg_id IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1041
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "msg_id"

    aput-object v5, v2, v6

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1050
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1055
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 1057
    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/facebook/orca/server/NewMessageResult;)Lcom/facebook/orca/server/NewMessageResult;
    .locals 9
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 272
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 274
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/NewMessageResult;->c()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p1}, Lcom/facebook/orca/server/NewMessageResult;->d()Lcom/facebook/orca/threads/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 277
    if-nez v2, :cond_0

    .line 372
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    return-object p1

    .line 282
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 283
    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/database/DbFetchThreadHandler;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 291
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 294
    new-instance v4, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v4}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v4, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/orca/threads/MessageBuilder;->b(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v2

    move-object v7, v2

    .line 300
    :goto_1
    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->v()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v2

    sget-object v4, Lcom/facebook/orca/threads/Message$ChannelSource;->C2DM:Lcom/facebook/orca/threads/Message$ChannelSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v4, :cond_2

    if-eqz v3, :cond_2

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    goto :goto_0

    .line 317
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 330
    :cond_3
    :goto_2
    if-eqz v0, :cond_7

    .line 332
    invoke-virtual {p1}, Lcom/facebook/orca/server/NewMessageResult;->e()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 346
    :cond_4
    :goto_3
    invoke-direct {p0, v7}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;J)V

    .line 354
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const/16 v6, 0x64

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v6

    .line 359
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v5

    .line 361
    new-instance v2, Lcom/facebook/orca/server/NewMessageResult;

    invoke-virtual {p1}, Lcom/facebook/orca/server/NewMessageResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/orca/server/NewMessageResult;->b()J

    move-result-wide v7

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/orca/server/NewMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;J)V

    move-object p1, v2

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 319
    :cond_6
    :try_start_3
    invoke-virtual {p1}, Lcom/facebook/orca/server/NewMessageResult;->e()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 324
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 325
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->j:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {p1}, Lcom/facebook/orca/server/NewMessageResult;->e()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->c(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v0

    goto :goto_2

    .line 334
    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/Message;Z)V

    .line 335
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 337
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->l:Lcom/facebook/orca/threads/ThreadSummaryStitching;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/facebook/orca/threads/ThreadSummaryStitching;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 341
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 342
    invoke-virtual {p1}, Lcom/facebook/orca/server/NewMessageResult;->b()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 372
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_8
    move-object v7, v2

    goto/16 :goto_1
.end method

.method final a(Lcom/facebook/orca/server/DeleteMessagesParams;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/server/DeleteMessagesParams;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p1}, Lcom/facebook/orca/server/DeleteMessagesParams;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method final a(Lcom/facebook/orca/server/DeleteThreadParams;)V
    .locals 1
    .parameter

    .prologue
    .line 557
    invoke-virtual {p1}, Lcom/facebook/orca/server/DeleteThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method final a(Lcom/facebook/orca/server/DeliveredReceiptParams;)V
    .locals 7
    .parameter

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/facebook/orca/server/DeliveredReceiptParams;->b()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {p1}, Lcom/facebook/orca/server/DeliveredReceiptParams;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 497
    invoke-virtual {p1}, Lcom/facebook/orca/server/DeliveredReceiptParams;->a()Ljava/lang/String;

    move-result-object v6

    .line 499
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;Lcom/facebook/orca/users/UserKey;ZJLjava/lang/String;)V

    .line 505
    return-void
.end method

.method final a(Lcom/facebook/orca/server/FetchMoreMessagesResult;Lcom/facebook/orca/server/FetchMoreMessagesResult;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 428
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->j:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->c(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const-string v0, "orca:DbInsertThreadsHandler"

    const-string v1, "Performance warning - can\'t add more messages"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 447
    :goto_0
    return-void

    .line 440
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 441
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    :try_start_2
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method final a(Lcom/facebook/orca/server/FetchMoreThreadsResult;)V
    .locals 5
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 178
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()J

    move-result-wide v1

    .line 179
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->c()Lcom/facebook/orca/threads/FolderName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;)V

    .line 183
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 184
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :try_start_1
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 186
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    return-void
.end method

.method final a(Lcom/facebook/orca/server/FetchThreadListResult;)V
    .locals 9
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 111
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->b()J

    move-result-wide v1

    .line 112
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->c()Lcom/facebook/orca/threads/FolderName;

    move-result-object v3

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {v3}, Lcom/facebook/orca/database/DbProperties;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {v3}, Lcom/facebook/orca/database/DbProperties;->b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->k()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {v3}, Lcom/facebook/orca/database/DbProperties;->c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;Z)V

    .line 126
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    :try_start_1
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 132
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-direct {p0, v3, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/FolderName;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_1
    invoke-direct {p0, v3}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/FolderName;)V

    .line 140
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/FolderCounts;)V

    .line 141
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;)V

    .line 144
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 147
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 149
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 150
    iget-object v4, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v4

    .line 152
    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v5

    sget-object v6, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v5, v6, :cond_3

    .line 153
    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v4

    .line 154
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->c()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/facebook/orca/threads/ThreadSummary;->c()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-lez v4, :cond_3

    .line 155
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 167
    return-void
.end method

.method final a(Lcom/facebook/orca/server/FetchThreadResult;)V
    .locals 3
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v1, v2, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 263
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 264
    return-void
.end method

.method final a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchMoreMessagesResult;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->j:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->c(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-string v0, "orca:DbInsertThreadsHandler"

    const-string v1, "Performance warning - can\'t add more messages"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 414
    :goto_0
    return-void

    .line 407
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 408
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 413
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    :try_start_2
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method final a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchThreadResult;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 205
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 207
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v4

    .line 208
    invoke-virtual {v4}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v5

    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->j:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->c(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const-string v0, "orca:DbInsertThreadsHandler"

    const-string v1, "Performance warning - deleting old messages to avoid hole"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const-string v6, "thread_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v0, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 225
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 226
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 229
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 230
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c(Lcom/facebook/orca/threads/Message;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    .line 236
    :goto_0
    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 237
    invoke-direct {p0, v5, v0, v1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;J)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {v5}, Lcom/facebook/orca/database/DbProperties;->a(Ljava/lang/String;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v1

    invoke-virtual {v4}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 249
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    :try_start_1
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method final a(Lcom/facebook/orca/server/MarkThreadParams;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 469
    invoke-virtual {p1}, Lcom/facebook/orca/server/MarkThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-virtual {p1}, Lcom/facebook/orca/server/MarkThreadParams;->b()Lcom/facebook/orca/server/MarkThreadParams$Mark;

    move-result-object v1

    .line 471
    sget-object v2, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/server/MarkThreadParams;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 473
    const-string v2, "unread"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "threads"

    const-string v4, "thread_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    sget-object v2, Lcom/facebook/orca/server/MarkThreadParams$Mark;->ARCHIVED:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/server/MarkThreadParams;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/FolderName;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/facebook/orca/server/ReadReceiptParams;)V
    .locals 7
    .parameter

    .prologue
    .line 482
    invoke-virtual {p1}, Lcom/facebook/orca/server/ReadReceiptParams;->b()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {p1}, Lcom/facebook/orca/server/ReadReceiptParams;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 484
    invoke-virtual {p1}, Lcom/facebook/orca/server/ReadReceiptParams;->a()J

    move-result-wide v4

    .line 486
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;Lcom/facebook/orca/users/UserKey;ZJLjava/lang/String;)V

    .line 492
    return-void
.end method

.method final a(Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Lcom/facebook/orca/threads/Message;)V

    .line 378
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method final a(Ljava/lang/String;Lcom/facebook/orca/compose/MessageDraft;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 381
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 382
    const-string v1, "draft"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->i:Lcom/facebook/orca/database/DbDraftSerialization;

    invoke-virtual {v2, p2}, Lcom/facebook/orca/database/DbDraftSerialization;->a(Lcom/facebook/orca/compose/MessageDraft;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "threads"

    const-string v3, "thread_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    return-void
.end method
