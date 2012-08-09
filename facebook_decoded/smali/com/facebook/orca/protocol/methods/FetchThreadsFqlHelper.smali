.class public Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;
.super Ljava/lang/Object;
.source "FetchThreadsFqlHelper.java"


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

.field private final b:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

.field private final c:Lcom/facebook/orca/users/UserSerialization;

.field private final d:Lcom/facebook/orca/protocol/methods/MessageDeserializer;

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;Lcom/facebook/orca/protocol/methods/UserFqlHelper;Lcom/facebook/orca/users/UserSerialization;Lcom/facebook/orca/protocol/methods/MessageDeserializer;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;",
            "Lcom/facebook/orca/protocol/methods/UserFqlHelper;",
            "Lcom/facebook/orca/users/UserSerialization;",
            "Lcom/facebook/orca/protocol/methods/MessageDeserializer;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a:Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    .line 41
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    .line 42
    iput-object p3, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->c:Lcom/facebook/orca/users/UserSerialization;

    .line 43
    iput-object p4, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->d:Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    .line 44
    iput-object p5, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->e:Ljavax/inject/Provider;

    .line 45
    iput-object p6, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->f:Ljavax/inject/Provider;

    .line 46
    return-void
.end method

.method static a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    const-string v0, "user_settings"

    const-string v1, "SELECT setting, value FROM user_settings WHERE project=\'messaging\'"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method static a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Lcom/facebook/orca/threads/FolderName;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 148
    const-string v0, "folder_counts"

    const-string v1, "SELECT folder, unread_count, unseen_count, last_seen_time, total_threads, last_action_id FROM unified_message_count WHERE folder=\'%1$s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method static a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    const-string v0, "canonical_thread_profile"

    const-string v1, "SELECT id, name, type, pic_big, pic_square, pic_crop FROM profile WHERE id = %1$s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "canonical_thread_user"

    const-string v1, "SELECT uid, first_name, last_name FROM user WHERE uid = %1$s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method static b(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/threads/FolderName;
    .locals 3
    .parameter

    .prologue
    .line 322
    const-string v0, "folder_counts"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 323
    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing folder"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 327
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing folder"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 330
    const-string v1, "folder"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/FolderName;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/FolderName;

    move-result-object v0

    return-object v0
.end method

.method static b(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    const-string v0, "messages"

    const-string v1, "SELECT thread_id, message_id, action_id, body, sender, unread, recipients, timestamp, attachment_map, share_map, coordinates, log_message, offline_threading_id, tags FROM unified_message WHERE %1$s ORDER BY %2$s LIMIT %3$d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static c(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/threads/FolderCounts;
    .locals 7
    .parameter

    .prologue
    .line 334
    const-string v0, "folder_counts"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 335
    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing folder counts"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 339
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing folder counts"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    .line 342
    new-instance v0, Lcom/facebook/orca/threads/FolderCounts;

    const-string v1, "unread_count"

    invoke-virtual {v5, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    const-string v2, "unseen_count"

    invoke-virtual {v5, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v2

    const-string v3, "last_seen_time"

    invoke-virtual {v5, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v3

    const-string v6, "last_action_id"

    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/threads/FolderCounts;-><init>(IIJJ)V

    return-object v0
.end method

.method private static c(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    const-string v0, "actions"

    const-string v1, "SELECT thread_id, action_id, type, actor, users, timestamp, body FROM unified_thread_action WHERE %1$s ORDER BY %2$s LIMIT %3$d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method static d(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/notify/NotificationSetting;
    .locals 5
    .parameter

    .prologue
    .line 350
    const-string v0, "user_settings"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 351
    if-nez v1, :cond_0

    .line 352
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing user settings"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 355
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 356
    const-string v3, "mute_until"

    const-string v4, "setting"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    const-string v0, "value"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->b(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 360
    :goto_1
    return-object v0

    .line 354
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method final a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;I)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 272
    if-nez p2, :cond_0

    .line 273
    new-instance v0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;-><init>(Lcom/google/common/collect/ImmutableList;I)V

    .line 275
    :cond_0
    const-string v0, "messages"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 276
    if-nez v0, :cond_1

    .line 277
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing messages"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    const-string v1, "actions"

    invoke-virtual {p1, v1}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 280
    if-nez v1, :cond_2

    .line 281
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing actions"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->d:Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    invoke-virtual {v2, v0, v1, p2}, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 285
    new-instance v3, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v0

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v3, v2, v0}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;-><init>(Lcom/google/common/collect/ImmutableList;I)V

    return-object v3
.end method

.method final a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;ZI)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    const-string v1, "threads"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    .line 193
    if-nez v6, :cond_0

    .line 194
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid api response - missing threads"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_0
    const-string v1, "users"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    .line 197
    const-string v1, "participant_profiles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v9

    .line 198
    const-string v1, "object_participant_profiles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    .line 199
    if-nez v5, :cond_1

    .line 200
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid api response - missing users"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_1
    if-nez v9, :cond_2

    .line 203
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid api response - missing participant_profiles"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_2
    if-nez v10, :cond_3

    .line 206
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid api response - missing object_participant_profiles"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 210
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v11

    .line 211
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v12

    .line 212
    const-wide/16 v7, -0x1

    .line 213
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v1

    if-ge v3, v1, :cond_7

    move/from16 v0, p3

    if-ge v3, v0, :cond_7

    .line 214
    invoke-virtual {v6, v3}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 215
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a:Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    move-object v1, v2

    check-cast v1, Lorg/codehaus/jackson/node/ObjectNode;

    invoke-static {v1, v10}, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a(Lorg/codehaus/jackson/node/ObjectNode;Lorg/codehaus/jackson/JsonNode;)V

    .line 217
    const-string v1, "action_id"

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v13

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 218
    if-eqz p2, :cond_6

    .line 219
    const-string v1, "sync_change_type"

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string v13, "deleted"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 221
    const-string v1, "archived"

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->p()Z

    move-result v1

    .line 222
    const-string v13, "thread_id"

    invoke-virtual {v2, v13}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 223
    if-eqz v1, :cond_4

    .line 224
    invoke-virtual {v12, v2}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 213
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 226
    :cond_4
    invoke-virtual {v11, v2}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 229
    :cond_5
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a:Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 230
    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 233
    :cond_6
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a:Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 234
    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 237
    :cond_7
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 238
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 239
    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 242
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/codehaus/jackson/JsonNode;

    const/4 v11, 0x0

    aput-object v9, v1, v11

    const/4 v9, 0x1

    aput-object v10, v1, v9

    invoke-static {v1}, Lcom/facebook/orca/protocol/methods/UserFqlHelper;->a([Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 244
    iget-object v9, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    invoke-virtual {v9, v5, v1}, Lcom/facebook/orca/protocol/methods/UserFqlHelper;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 245
    iget-object v5, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->c:Lcom/facebook/orca/users/UserSerialization;

    sget-object v9, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v5, v9, v1}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 247
    new-instance v1, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v6

    invoke-direct/range {v1 .. v8}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;IJ)V

    return-object v1
.end method

.method final a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/users/User;
    .locals 3
    .parameter

    .prologue
    .line 302
    const-string v0, "canonical_thread_user"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 303
    const-string v1, "canonical_thread_profile"

    invoke-virtual {p1, v1}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 304
    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing users"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    if-nez v1, :cond_1

    .line 308
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing participant_profiles"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/UserFqlHelper;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->c:Lcom/facebook/orca/users/UserSerialization;

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 314
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response -- multiple users"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 316
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to find user"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    return-object v0
.end method

.method final a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->c(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method final a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 55
    return-void
.end method

.method final a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    if-eqz p5, :cond_0

    const-string v0, "unified_thread_sync"

    move-object v1, v0

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p6, :cond_1

    if-nez p5, :cond_1

    move v0, v2

    .line 67
    :goto_1
    const-string v4, "threads"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT thread_id, senders, participants, former_participants, object_participants, single_recipient, snippet, unread, action_id, last_visible_add_action_id, timestamp, name, pic_hash, mute, can_reply, snippet_sender, is_subscribed, admin_snippet, archived, folder"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v0, ", read_receipts"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p5, :cond_3

    const-string v0, ", sync_change_type "

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " FROM %1$s WHERE %2$s ORDER BY %3$s LIMIT %4$d"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object p2, v5, v2

    const/4 v1, 0x2

    aput-object p3, v5, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "participant_profiles"

    const-string v1, "SELECT id, name, type, pic_big, pic_square, pic_crop FROM profile WHERE id in (SELECT participants.user_id FROM #threads)"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "object_participant_profiles"

    const-string v1, "SELECT id, name, type, pic_big, pic_square, pic_crop FROM profile WHERE id in (SELECT object_participants.id FROM #threads)"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "users"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "SELECT uid, first_name, last_name"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " , last_active"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " FROM user WHERE uid IN (SELECT participants.user_id FROM #threads)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 64
    :cond_0
    const-string v0, "unified_thread"

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 65
    goto :goto_1

    .line 67
    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    .line 85
    :cond_4
    const-string v0, ""

    goto :goto_4
.end method

.method final b(Lcom/facebook/orca/protocol/methods/FqlResultHelper;I)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 291
    const-string v0, "messages"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 292
    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing messages"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->d:Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    invoke-static {}, Lorg/codehaus/jackson/node/NullNode;->B()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 297
    new-instance v2, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v0

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;-><init>(Lcom/google/common/collect/ImmutableList;I)V

    return-object v2
.end method
