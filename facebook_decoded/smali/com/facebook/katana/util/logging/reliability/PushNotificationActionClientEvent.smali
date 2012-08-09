.class public final Lcom/facebook/katana/util/logging/reliability/PushNotificationActionClientEvent;
.super Ljava/lang/Object;
.source "PushNotificationActionClientEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "messaging_push_notif_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-static {v2, p1}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    const-string v4, "message_id"

    move-object v2, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
