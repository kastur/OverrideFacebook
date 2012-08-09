.class public Lcom/facebook/orca/sms/SmsSendMessageHandler;
.super Ljava/lang/Object;
.source "SmsSendMessageHandler.java"


# static fields
.field private static final a:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/protocol/methods/PickedUserUtils;

.field private final d:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private final e:Lcom/facebook/orca/sms/SmsContentResolverHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->a:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/protocol/methods/PickedUserUtils;Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/sms/SmsContentResolverHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->b:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->c:Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    .line 64
    iput-object p3, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->d:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 65
    iput-object p4, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->e:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    .line 66
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v6, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 124
    new-instance v7, Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;-><init>(B)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->b:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->b:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "SMS_DELIVERED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 130
    new-instance v9, Lcom/facebook/orca/sms/SmsSendMessageHandler$1;

    invoke-direct {v9, p0, v7, v6}, Lcom/facebook/orca/sms/SmsSendMessageHandler$1;-><init>(Lcom/facebook/orca/sms/SmsSendMessageHandler;Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;Ljava/util/concurrent/Semaphore;)V

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "SMS_SENT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    new-instance v10, Lcom/facebook/orca/sms/SmsSendMessageHandler$2;

    invoke-direct {v10, p0}, Lcom/facebook/orca/sms/SmsSendMessageHandler$2;-><init>(Lcom/facebook/orca/sms/SmsSendMessageHandler;)V

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "SMS_DELIVERED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 155
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 156
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 157
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 158
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_0

    .line 159
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 165
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x78

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Semaphore could not acquire requested permits"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/facebook/orca/sms/SmsSendMessageHandler;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v2, "orca:SmsSendMessageHandler"

    const-string v3, "Send message timed out"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    throw v0

    .line 170
    :cond_1
    invoke-static {v7}, Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;->a(Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 171
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SMS send failed with code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;->a(Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->b:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->b:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->e:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Ljava/lang/String;Ljava/lang/String;JLcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Lcom/facebook/orca/threads/MessagingIdUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    .line 180
    if-nez v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->e:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    if-nez v0, :cond_3

    .line 183
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Message that was sent doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_3
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_4
    new-instance v1, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v1, p2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    const-string v3, "sms"

    invoke-virtual {v1, v3}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    sget-object v3, Lcom/facebook/orca/threads/Message$ChannelSource;->SMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 197
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/server/CreateThreadParams;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/server/CreateThreadParams;->a()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/server/CreateThreadParams;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 72
    iget-object v2, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->c:Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    invoke-static {v0}, Lcom/facebook/orca/protocol/methods/PickedUserUtils;->a(Lcom/facebook/orca/users/PickedUser;)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->e()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/sms/SmsSendMessageHandler;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->e:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 80
    const-string v3, "thread_id = ? AND (type = ? OR type = ?)"

    .line 81
    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    sget-object v5, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v5}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    sget-object v5, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v5}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 85
    iget-object v1, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->e:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v1, v6, v3, v4}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b(ILjava/lang/String;[Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 90
    iget-object v1, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->e:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->d(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v5

    .line 91
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const-wide/16 v6, -0x1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/server/NewMessageResult;
    .locals 7
    .parameter

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->e:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->d:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/sms/SmsSendMessageHandler;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 109
    new-instance v0, Lcom/facebook/orca/server/NewMessageResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/NewMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;J)V

    return-object v0
.end method
