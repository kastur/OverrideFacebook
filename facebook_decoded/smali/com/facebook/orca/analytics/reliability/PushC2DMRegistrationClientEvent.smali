.class public Lcom/facebook/orca/analytics/reliability/PushC2DMRegistrationClientEvent;
.super Ljava/lang/Object;
.source "PushC2DMRegistrationClientEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/orca/analytics/HoneyClientEvent;"
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "push_reg_c2dm"

    const-string v1, "registration_id"

    invoke-static {v0, p0, p2, v1, p1}, Lcom/facebook/orca/analytics/reliability/ReliabilityAnalyticsClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method
