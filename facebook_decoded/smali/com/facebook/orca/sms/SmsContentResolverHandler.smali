.class public Lcom/facebook/orca/sms/SmsContentResolverHandler;
.super Ljava/lang/Object;
.source "SmsContentResolverHandler.java"


# static fields
.field private static final a:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/users/PhoneUserIterator;

.field private final e:Lcom/facebook/orca/common/util/PhoneNumberFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/facebook/orca/users/PhoneUserIterator;Lcom/facebook/orca/common/util/PhoneNumberFormatter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/users/PhoneUserIterator;",
            "Lcom/facebook/orca/common/util/PhoneNumberFormatter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->c:Ljavax/inject/Provider;

    .line 74
    iput-object p3, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->d:Lcom/facebook/orca/users/PhoneUserIterator;

    .line 75
    iput-object p4, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->e:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    .line 76
    return-void
.end method

.method public static a()Lcom/facebook/orca/threads/FolderCounts;
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    .line 249
    new-instance v0, Lcom/facebook/orca/threads/FolderCounts;

    move v2, v1

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/threads/FolderCounts;-><init>(IIJJ)V

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)Lcom/facebook/orca/threads/Message;
    .locals 9
    .parameter

    .prologue
    .line 283
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 284
    sget-object v1, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v1}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->c()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 295
    :goto_0
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    const-string v2, "thread_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-static {v2}, Lcom/facebook/orca/threads/MessagingIdUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v3}, Lcom/facebook/orca/threads/MessagingIdUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    const-string v4, "date"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 301
    const-wide/32 v6, 0xf4240

    mul-long/2addr v6, v4

    .line 302
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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->SMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    :goto_1
    return-object v0

    .line 287
    :cond_0
    sget-object v1, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v1}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 288
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    const/4 v6, 0x0

    .line 156
    invoke-direct {p0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->c()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v7

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid_src/provider/Telephony$Sms;->a:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 160
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    const-string v0, "thread_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    const-string v0, "address"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    if-nez v1, :cond_0

    .line 164
    sget-object v0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v1, "orca:SmsContentResolverHandler"

    const-string v2, "Trying to create a ThreadSummary without a phone number to reference"

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    .line 171
    :cond_0
    :try_start_1
    const-string v0, "date"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 172
    const-wide/32 v8, 0xf4240

    mul-long/2addr v8, v5

    .line 173
    const-string v0, "body"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 174
    const-string v0, "read"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 175
    :goto_1
    invoke-virtual {p0, v1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    .line 176
    const-string v0, "type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 177
    const/4 v0, 0x0

    .line 178
    sget-object v12, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v12}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v12

    if-ne v12, v11, :cond_3

    move-object v0, v1

    .line 186
    :cond_1
    :goto_2
    new-instance v11, Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    invoke-direct {v11}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;-><init>()V

    invoke-static {v4}, Lcom/facebook/orca/threads/MessagingIdUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->f()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    .line 190
    new-instance v11, Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    invoke-direct {v11}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;-><init>()V

    invoke-static {v4}, Lcom/facebook/orca/threads/MessagingIdUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->f()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v7

    .line 194
    new-instance v11, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v11}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    invoke-static {v4}, Lcom/facebook/orca/threads/MessagingIdUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v4

    invoke-static {v1, v7}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->x()Lcom/facebook/orca/threads/ThreadSummary;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 212
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 180
    :cond_3
    :try_start_2
    sget-object v12, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v12}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    if-ne v12, v11, :cond_1

    move-object v0, v7

    .line 181
    goto/16 :goto_2

    .line 212
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    move-object v0, v6

    goto :goto_3
.end method

.method private b()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 114
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "thread_id"

    aput-object v1, v2, v0

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid_src/provider/Telephony$Sms$Conversations;->a:Landroid/net/Uri;

    const-string v5, "date ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 120
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "thread_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 124
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 126
    return-object v3

    .line 124
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private c()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 5

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 255
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_0

    .line 256
    new-instance v1, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "@facebook.com"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 261
    :goto_0
    return-object v0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_1

    .line 261
    new-instance v1, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 265
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid me user type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "read"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    .line 132
    const-string v1, "thread_id=? AND (type = ? OR type = ?)"

    .line 133
    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v3

    sget-object v3, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v3}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v3}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 137
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;[Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 83
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v6

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid_src/provider/Telephony$Sms$Conversations;->a:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move v0, v6

    .line 90
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ge v0, p1, :cond_1

    .line 91
    const-string v2, "thread_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {p0, v2}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v7, v2}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 107
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    :goto_1
    new-instance v2, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    return-object v2

    .line 100
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 346
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v1, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 348
    const-string v1, "body"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "type"

    invoke-virtual {p5}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    iget-object v1, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid_src/provider/Telephony$Sms;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILjava/lang/String;[Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 221
    new-instance v9, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v9}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 224
    const/4 v8, 0x0

    .line 225
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "thread_id"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "body"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid_src/provider/Telephony$Sms;->a:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v8

    move v2, v7

    .line 229
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ge v2, p1, :cond_0

    .line 230
    if-nez v2, :cond_2

    .line 231
    const-string v0, "thread_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_1
    invoke-direct {p0, v3}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Landroid/database/Cursor;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 235
    invoke-virtual {v9, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 236
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    .line 237
    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 242
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 244
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 245
    new-instance v3, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-direct {v3, v1, v2, v0}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    return-object v3

    .line 242
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v7

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "read"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    .line 143
    const-string v1, "address=? AND (type = ? OR type = ?)"

    .line 144
    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v3

    sget-object v3, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v3}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v3}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->getTypeValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 148
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 5
    .parameter

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->d(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 271
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->e:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/util/PhoneNumberFormatter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v2, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->e:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v2, p1}, Lcom/facebook/orca/common/util/PhoneNumberFormatter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    new-instance v1, Lcom/facebook/orca/threads/ParticipantInfo;

    new-instance v3, Lcom/facebook/orca/users/UserKey;

    sget-object v4, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v3, v4, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;)V

    return-object v1
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/orca/users/User;
    .locals 2
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->d:Lcom/facebook/orca/users/PhoneUserIterator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/lang/String;I)V

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->d:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->c()Lcom/facebook/orca/users/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->d:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v1}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    .line 324
    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->d:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v1}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    throw v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 328
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 329
    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string v1, "thread_id=?"

    .line 331
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 332
    iget-object v3, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid_src/provider/Telephony$Sms;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 356
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v1

    .line 357
    const-string v3, "_id=?"

    .line 358
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 359
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid_src/provider/Telephony$Sms;->a:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 362
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "thread_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 367
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    .line 365
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 372
    const-string v0, "thread_id=?"

    .line 373
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 374
    iget-object v2, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid_src/provider/Telephony$Sms;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 378
    const-string v0, "_id=?"

    .line 379
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 380
    iget-object v2, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid_src/provider/Telephony$Sms;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    return-void
.end method
