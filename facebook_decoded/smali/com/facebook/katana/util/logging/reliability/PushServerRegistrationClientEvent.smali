.class public Lcom/facebook/katana/util/logging/reliability/PushServerRegistrationClientEvent;
.super Ljava/lang/Object;
.source "PushServerRegistrationClientEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;
    .locals 6
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
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    const-string v1, "push_reg_server"

    const-string v4, "registration_id"

    move-object v2, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
