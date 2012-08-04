.class public final Lcom/facebook/katana/util/logging/reliability/PushRegistrationInitialStatusClientEvent;
.super Ljava/lang/Object;
.source "PushRegistrationInitialStatusClientEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static a()Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;
    .locals 6

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    const-string v1, "push_reg_initial_status"

    const-string v2, "not_applicable"

    const/4 v3, 0x0

    const-string v4, "registration_id"

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;Ljava/lang/String;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    const-string v1, "push_reg_initial_status"

    invoke-static {p0}, Lcom/facebook/katana/util/logging/reliability/PushRegistrationInitialStatusClientEvent;->a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "registration_id"

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const-string v0, "not_applicable"

    .line 32
    :goto_0
    return-object v0

    .line 25
    :cond_0
    sget-object v0, Lcom/facebook/katana/util/logging/reliability/PushRegistrationInitialStatusClientEvent$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    const-string v0, "none"

    goto :goto_0

    .line 27
    :pswitch_0
    const-string v0, "current"

    goto :goto_0

    .line 29
    :pswitch_1
    const-string v0, "expired"

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
