.class public Lcom/facebook/katana/util/logging/reliability/PushC2DMUnregistrationClientEvent;
.super Ljava/lang/Object;
.source "PushC2DMUnregistrationClientEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    const-string v1, "push_unreg_c2dm"

    const/4 v3, 0x0

    const-string v4, "registration_id"

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
