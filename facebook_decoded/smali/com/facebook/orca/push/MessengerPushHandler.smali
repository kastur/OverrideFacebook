.class public Lcom/facebook/orca/push/MessengerPushHandler;
.super Lcom/facebook/orca/push/AbstractPushHandler;
.source "MessengerPushHandler.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;

.field private final b:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/app/MessagesDataInitLock;

.field private final e:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/notify/OrcaNotificationManager;Ljavax/inject/Provider;Lcom/facebook/orca/app/MessagesDataInitLock;Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/orca/notify/OrcaNotificationManager;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;",
            "Lcom/facebook/orca/app/MessagesDataInitLock;",
            "Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/push/AbstractPushHandler;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/push/MessengerPushHandler;->a:Lcom/facebook/orca/cache/DataCache;

    .line 39
    iput-object p2, p0, Lcom/facebook/orca/push/MessengerPushHandler;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 40
    iput-object p3, p0, Lcom/facebook/orca/push/MessengerPushHandler;->c:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/facebook/orca/push/MessengerPushHandler;->d:Lcom/facebook/orca/app/MessagesDataInitLock;

    .line 42
    iput-object p5, p0, Lcom/facebook/orca/push/MessengerPushHandler;->e:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    .line 43
    return-void
.end method

.method private a()Lcom/facebook/orca/ops/OrcaServiceOperation;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/push/MessengerPushHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Z)V

    .line 79
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/push/MessengerPushHandler;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/push/MessengerPushHandler;->e:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from_viewer"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/MessengerPushHandler;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/push/MessengerPushHandler;->d:Lcom/facebook/orca/app/MessagesDataInitLock;

    invoke-virtual {v0}, Lcom/facebook/orca/app/MessagesDataInitLock;->b()V

    .line 51
    invoke-direct {p0}, Lcom/facebook/orca/push/MessengerPushHandler;->a()Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v2, "threadId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "message"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const-string v2, "pushed_message"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/orca/push/MessengerPushHandler;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    .line 60
    :cond_0
    return-void
.end method
