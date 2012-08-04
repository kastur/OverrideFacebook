.class public Lcom/facebook/orca/push/sms/SmsReceiver;
.super Landroid/app/IntentService;
.source "SmsReceiver.java"


# static fields
.field private static final a:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private b:Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

.field private c:Lcom/facebook/orca/push/common/PushDeserialization;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PushHandler;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private f:Lcom/facebook/orca/sms/SmsContentResolverHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/push/sms/SmsReceiver;->a:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "SmsReceiver"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    .line 65
    iget-object v0, v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a()V

    .line 67
    const-class v0, Lcom/facebook/orca/push/sms/SmsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    .line 89
    const-string v0, "orca:SMSReceiver"

    const-string v1, "Received onMessage"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->m:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 95
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 104
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 105
    array-length v0, v6

    new-array v8, v0, [Landroid/telephony/SmsMessage;

    .line 106
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_1

    .line 107
    aget-object v0, v6, v7

    check-cast v0, [B

    invoke-static {v0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    aput-object v0, v8, v7

    .line 108
    aget-object v0, v8, v7

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->f:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    aget-object v2, v8, v7

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v8, v7

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    sget-object v5, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Ljava/lang/String;Ljava/lang/String;JLcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->c:Lcom/facebook/orca/push/common/PushDeserialization;

    aget-object v2, v8, v7

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Landroid/telephony/SmsMessage;Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v8, v7

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushHandler;

    .line 119
    sget-object v5, Lcom/facebook/orca/push/PushSource;->SMS:Lcom/facebook/orca/push/PushSource;

    invoke-interface {v0, v3, v2, v1, v5}, Lcom/facebook/orca/push/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    sget-object v1, Lcom/facebook/orca/push/sms/SmsReceiver;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v2, "orca:SMSReceiver"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 48
    invoke-static {p0}, Lcom/facebook/orca/app/MessagesDataInitLockHelper;->a(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/facebook/orca/push/sms/SmsReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 50
    new-instance v0, Lcom/facebook/orca/push/sms/SmsReceiver$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/sms/SmsReceiver$1;-><init>(Lcom/facebook/orca/push/sms/SmsReceiver;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->d:Ljava/util/Set;

    .line 51
    const-class v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->b:Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    .line 52
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/common/PushDeserialization;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->c:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 53
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 54
    const-class v0, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->f:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    .line 55
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/push/sms/SmsReceiver;->getApplicationContext()Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/sms/SmsReceiver;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->b:Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    iget-object v0, v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->b:Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    iget-object v1, v1, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v1}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    throw v0
.end method
