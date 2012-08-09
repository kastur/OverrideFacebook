.class public Lcom/facebook/orca/protocol/methods/MessageDeserializer;
.super Ljava/lang/Object;
.source "MessageDeserializer.java"


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

.field private final b:Lcom/facebook/orca/protocol/methods/ShareDeserializer;

.field private final c:Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;

.field private final d:Lcom/facebook/orca/location/CoordinatesDeserializer;

.field private final e:Lcom/facebook/orca/protocol/methods/SourceDeserializer;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;Lcom/facebook/orca/protocol/methods/ShareDeserializer;Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;Lcom/facebook/orca/location/CoordinatesDeserializer;Lcom/facebook/orca/protocol/methods/SourceDeserializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->b:Lcom/facebook/orca/protocol/methods/ShareDeserializer;

    .line 39
    iput-object p3, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->c:Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;

    .line 40
    iput-object p4, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->d:Lcom/facebook/orca/location/CoordinatesDeserializer;

    .line 41
    iput-object p5, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->e:Lcom/facebook/orca/protocol/methods/SourceDeserializer;

    .line 42
    return-void
.end method

.method private a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 97
    new-instance v1, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    .line 98
    const-string v2, "message_id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 99
    const-string v2, "thread_id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 100
    const-string v2, "body"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 101
    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    .line 102
    const-string v2, "action_id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->c(J)Lcom/facebook/orca/threads/MessageBuilder;

    .line 106
    const-string v2, "log_message"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "log_message"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "log_message"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 108
    const-string v3, "threadPic"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    const-string v3, "threadPic"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 110
    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    const/4 v0, 0x7

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    .line 128
    const-string v0, "sender"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    invoke-static {v0}, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 133
    const-string v0, "attachment_map"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "attachment_map"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->c:Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;

    const-string v0, "attachment_map"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 138
    :cond_1
    const-string v0, "share_map"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "share_map"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->b:Lcom/facebook/orca/protocol/methods/ShareDeserializer;

    const-string v2, "share_map"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/methods/ShareDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 142
    :cond_2
    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->d:Lcom/facebook/orca/location/CoordinatesDeserializer;

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/location/CoordinatesDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 147
    :cond_3
    const-string v0, "offline_threading_id"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->e:Lcom/facebook/orca/protocol/methods/SourceDeserializer;

    const-string v0, "tags"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/protocol/methods/SourceDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 150
    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    return-object v0

    .line 113
    :cond_4
    const/4 v0, 0x4

    .line 115
    goto/16 :goto_0

    :cond_5
    const-string v3, "threadName"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 116
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 117
    :cond_6
    const-string v3, "videoCallLog"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    const-string v0, "videoCallLog"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 119
    const-string v2, "answered"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 122
    :cond_7
    const/4 v0, 0x6

    goto/16 :goto_0
.end method

.method private b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 154
    new-instance v0, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    .line 157
    const-string v1, "action_id"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v1

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "a_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 159
    const-string v3, "thread_id"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->c(J)Lcom/facebook/orca/threads/MessageBuilder;

    .line 162
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    .line 163
    if-ne v1, v5, :cond_0

    .line 164
    invoke-virtual {v0, v5}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    .line 170
    :goto_0
    const-string v1, "actor"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 171
    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    .line 172
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    invoke-static {v1}, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 173
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    const-string v2, "users"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 174
    const-string v1, "body"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    .line 176
    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    if-ne v1, v6, :cond_1

    .line 166
    invoke-virtual {v0, v6}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    goto :goto_0

    .line 168
    :cond_1
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;I)Lcom/google/common/collect/ImmutableList;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            "Lorg/codehaus/jackson/JsonNode;",
            "I)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    move v0, v1

    .line 51
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    .line 53
    invoke-direct {p0, v4}, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    move v0, v1

    .line 58
    :goto_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 59
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    .line 60
    invoke-direct {p0, v5}, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->g(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v5

    .line 65
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->g(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v4

    .line 67
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v6

    .line 68
    :cond_2
    :goto_2
    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    if-ge v1, p3, :cond_9

    .line 69
    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    move-object v2, v0

    .line 70
    :goto_3
    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 71
    :goto_4
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 72
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    .line 73
    invoke-virtual {v6, v2}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 74
    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 69
    goto :goto_3

    :cond_5
    move-object v0, v3

    .line 70
    goto :goto_4

    .line 77
    :cond_6
    invoke-virtual {v6, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 78
    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 81
    :cond_7
    if-eqz v2, :cond_8

    .line 82
    invoke-virtual {v6, v2}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 83
    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_8
    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v6, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 88
    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    :cond_9
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
