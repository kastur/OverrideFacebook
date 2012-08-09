.class public Lcom/facebook/katana/util/logging/VaultLogger;
.super Lcom/facebook/katana/util/logging/InteractionLogger;
.source "VaultLogger.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private final k:Landroid/content/Context;

.field private final l:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

.field private final m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "device_setup"

    sput-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->a:Ljava/lang/String;

    .line 18
    const-string v0, "sync_start"

    sput-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->b:Ljava/lang/String;

    .line 20
    const-string v0, "sync_photo_start"

    sput-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->c:Ljava/lang/String;

    .line 21
    const-string v0, "sync_photo_success"

    sput-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->d:Ljava/lang/String;

    .line 22
    const-string v0, "sync_photo_failure"

    sput-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->e:Ljava/lang/String;

    .line 25
    const-string v0, "connectivity"

    sput-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->f:Ljava/lang/String;

    .line 26
    const-string v0, "image_observer"

    sput-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->g:Ljava/lang/String;

    .line 27
    const-string v0, "observer_startup"

    sput-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->h:Ljava/lang/String;

    .line 28
    const-string v0, "retry"

    sput-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->i:Ljava/lang/String;

    .line 29
    const-string v0, "setup"

    sput-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/facebook/katana/util/logging/VaultLogger;->k:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    iput-object v0, p0, Lcom/facebook/katana/util/logging/VaultLogger;->l:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    .line 40
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/VaultLogger;->m:J

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/VaultLogger;->m:J

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/facebook/katana/util/logging/VaultLogger;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 54
    const-string v0, "vault_logger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid uid for VaultLogger log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 58
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 6
    .parameter

    .prologue
    .line 142
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    invoke-direct {v0, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 144
    iget-object v1, p0, Lcom/facebook/katana/util/logging/VaultLogger;->k:Landroid/content/Context;

    const-string v2, "vault:device_oid"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    .line 146
    const-string v3, "vault_device_oid"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 148
    iget-object v1, p0, Lcom/facebook/katana/util/logging/VaultLogger;->l:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/katana/util/logging/VaultLogger;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 151
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 81
    const-string v1, "vault_logger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown sync reason: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 85
    return-void

    .line 66
    :pswitch_0
    const-string v1, "reason"

    sget-object v2, Lcom/facebook/katana/util/logging/VaultLogger;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    goto :goto_0

    .line 69
    :pswitch_1
    const-string v1, "reason"

    sget-object v2, Lcom/facebook/katana/util/logging/VaultLogger;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    goto :goto_0

    .line 72
    :pswitch_2
    const-string v1, "reason"

    sget-object v2, Lcom/facebook/katana/util/logging/VaultLogger;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    goto :goto_0

    .line 75
    :pswitch_3
    const-string v1, "reason"

    sget-object v2, Lcom/facebook/katana/util/logging/VaultLogger;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    goto :goto_0

    .line 78
    :pswitch_4
    const-string v1, "reason"

    sget-object v2, Lcom/facebook/katana/util/logging/VaultLogger;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(IIJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    sget-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 101
    const-string v1, "images_detected"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 102
    const-string v1, "images_to_sync"

    invoke-virtual {v0, v1, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 103
    const-string v1, "start_time"

    invoke-virtual {v0, v1, p3, p4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 105
    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 106
    return-void
.end method

.method public final a(JJII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 90
    const-string v1, "vault_device_oid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 91
    const-string v1, "last_sync_time"

    invoke-virtual {v0, v1, p3, p4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 92
    const-string v1, "rows_restored"

    invoke-virtual {v0, v1, p5}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 93
    const-string v1, "library_size"

    invoke-virtual {v0, v1, p6}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 95
    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 96
    return-void
.end method

.method public final a(Lcom/facebook/katana/provider/VaultImageProviderRow;)V
    .locals 4
    .parameter

    .prologue
    .line 110
    sget-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    .line 111
    const-string v0, "img_hash"

    iget-object v2, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 112
    const-string v0, "date_taken"

    iget-wide v2, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 113
    const-string v2, "resolution"

    iget v0, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v0, "low"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 116
    invoke-direct {p0, v1}, Lcom/facebook/katana/util/logging/VaultLogger;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 117
    return-void

    .line 113
    :cond_0
    const-string v0, "high"

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/provider/VaultImageProviderRow;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 132
    sget-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 133
    const-string v1, "img_hash"

    iget-object v2, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 134
    const-string v1, "date_taken"

    iget-wide v2, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 135
    const-string v1, "error_msg"

    invoke-virtual {v0, v1, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 137
    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 138
    return-void
.end method

.method public final b(Lcom/facebook/katana/provider/VaultImageProviderRow;)V
    .locals 4
    .parameter

    .prologue
    .line 121
    sget-object v0, Lcom/facebook/katana/util/logging/VaultLogger;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/VaultLogger;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    .line 122
    const-string v0, "img_hash"

    iget-object v2, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 123
    const-string v0, "date_taken"

    iget-wide v2, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 124
    const-string v2, "resolution"

    iget v0, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    if-nez v0, :cond_0

    const-string v0, "low"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 127
    invoke-direct {p0, v1}, Lcom/facebook/katana/util/logging/VaultLogger;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 128
    return-void

    .line 124
    :cond_0
    const-string v0, "high"

    goto :goto_0
.end method
