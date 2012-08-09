.class public Lcom/facebook/orca/push/common/PushDeserialization;
.super Ljava/lang/Object;
.source "PushDeserialization.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static f:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/location/CoordinatesDeserializer;

.field private final c:Lcom/facebook/orca/protocol/methods/SourceDeserializer;

.field private final d:Lcom/facebook/orca/common/util/Clock;

.field private final e:Lcom/facebook/orca/sms/SmsContentResolverHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/orca/push/common/PushDeserialization;->f:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/location/CoordinatesDeserializer;Lcom/facebook/orca/protocol/methods/SourceDeserializer;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/sms/SmsContentResolverHandler;)V
    .locals 0
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
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/location/CoordinatesDeserializer;",
            "Lcom/facebook/orca/protocol/methods/SourceDeserializer;",
            "Lcom/facebook/orca/common/util/Clock;",
            "Lcom/facebook/orca/sms/SmsContentResolverHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/facebook/orca/push/common/PushDeserialization;->a:Ljavax/inject/Provider;

    .line 49
    iput-object p2, p0, Lcom/facebook/orca/push/common/PushDeserialization;->b:Lcom/facebook/orca/location/CoordinatesDeserializer;

    .line 50
    iput-object p3, p0, Lcom/facebook/orca/push/common/PushDeserialization;->c:Lcom/facebook/orca/protocol/methods/SourceDeserializer;

    .line 51
    iput-object p4, p0, Lcom/facebook/orca/push/common/PushDeserialization;->d:Lcom/facebook/orca/common/util/Clock;

    .line 52
    iput-object p5, p0, Lcom/facebook/orca/push/common/PushDeserialization;->e:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v13, 0x1

    const/4 v0, 0x0

    .line 56
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    const-string v2, ":"

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 63
    array-length v3, v2

    if-ne v3, v4, :cond_0

    .line 67
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 68
    aget-object v2, v2, v13

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string v4, "unified_tid"

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/threads/MessagingIdUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    const-string v5, "n"

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/threads/MessagingIdUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    new-instance v6, Lcom/facebook/orca/threads/ParticipantInfo;

    new-instance v7, Lcom/facebook/orca/users/UserKey;

    sget-object v8, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v7, v8, v1}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "@facebook.com"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v3, v1}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "o"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const-string v1, "o"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 94
    :cond_2
    :goto_1
    const-string v1, "s"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v7

    .line 95
    const-wide/32 v9, 0xf4240

    mul-long/2addr v9, v7

    sget-object v1, Lcom/facebook/orca/push/common/PushDeserialization;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 96
    new-instance v1, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v1, v5}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/facebook/orca/threads/MessageBuilder;->c(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/threads/Message$ChannelSource;->C2DM:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    goto/16 :goto_0

    .line 83
    :pswitch_0
    const-string v0, "web"

    goto :goto_1

    .line 86
    :pswitch_1
    const-string v0, "mobile"

    goto :goto_1

    .line 89
    :pswitch_2
    const-string v0, "messenger"

    goto :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/Message;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v1, p0, Lcom/facebook/orca/push/common/PushDeserialization;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v1

    .line 189
    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-wide p5, v1

    .line 192
    :cond_0
    const-wide/16 v3, -0x1

    cmp-long v3, p7, v3

    if-nez v3, :cond_1

    move-wide p7, v1

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/push/common/PushDeserialization;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/User;

    .line 197
    new-instance v2, Lcom/facebook/orca/threads/ParticipantInfo;

    new-instance v3, Lcom/facebook/orca/users/UserKey;

    sget-object v4, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "@facebook.com"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, p5

    sget-object v1, Lcom/facebook/orca/push/common/PushDeserialization;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "sent."

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v5, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v5}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v5, p1}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/facebook/orca/threads/MessageBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Lcom/facebook/orca/threads/MessageBuilder;->b(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/threads/MessageBuilder;->c(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/threads/Message$ChannelSource;->SEND:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    return-object v1
.end method

.method public final a(Landroid/telephony/SmsMessage;Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/facebook/orca/push/common/PushDeserialization;->e:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v2, p2}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/facebook/orca/push/common/PushDeserialization;->e:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 116
    invoke-static {v2}, Lcom/facebook/orca/threads/MessagingIdUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {p2}, Lcom/facebook/orca/threads/MessagingIdUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    .line 119
    const-wide/32 v6, 0xf4240

    mul-long/2addr v6, v4

    sget-object v8, Lcom/facebook/orca/push/common/PushDeserialization;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 120
    new-instance v8, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v8}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v8, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/facebook/orca/threads/MessageBuilder;->c(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->SMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;
    .locals 14
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 136
    const-string v1, "sender_fbid"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const-string v2, "body"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v3, "tid"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 144
    const-string v4, "mid"

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    .line 145
    const-string v5, "offline_threading_id"

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-static {v5}, Lcom/facebook/orca/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    const-string v6, "sender_name"

    invoke-virtual {p1, v6}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v6

    .line 149
    new-instance v7, Lcom/facebook/orca/threads/ParticipantInfo;

    new-instance v8, Lcom/facebook/orca/users/UserKey;

    sget-object v9, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v8, v9, v1}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "@facebook.com"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v6, v1}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "coordinates"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "coordinates"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "coordinates"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/push/common/PushDeserialization;->b:Lcom/facebook/orca/location/CoordinatesDeserializer;

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/location/CoordinatesDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/push/common/PushDeserialization;->c:Lcom/facebook/orca/protocol/methods/SourceDeserializer;

    const-string v1, "api_tags"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/protocol/methods/SourceDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v6, "timestamp"

    invoke-virtual {p1, v6}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v8

    .line 163
    const-wide/32 v10, 0xf4240

    mul-long/2addr v10, v8

    sget-object v6, Lcom/facebook/orca/push/common/PushDeserialization;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 164
    new-instance v6, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v6}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v6, v4}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/facebook/orca/threads/MessageBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lcom/facebook/orca/threads/MessageBuilder;->c(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->MQTT:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    goto/16 :goto_0
.end method
