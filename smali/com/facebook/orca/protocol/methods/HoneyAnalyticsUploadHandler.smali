.class public Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;
.super Ljava/lang/Object;
.source "HoneyAnalyticsUploadHandler.java"


# static fields
.field private static final a:J


# instance fields
.field private final b:Lcom/facebook/orca/config/OrcaConfig;

.field private final c:Lcom/facebook/orca/app/OrcaAppType;

.field private final d:Lcom/facebook/orca/analytics/AnalyticsStorage;

.field private final e:Landroid/telephony/TelephonyManager;

.field private final f:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

.field private final g:Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;

.field private final h:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

.field private final i:Lcom/facebook/orca/net/OrcaNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    const-wide/16 v0, 0x2

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/config/OrcaConfig;Lcom/facebook/orca/app/OrcaAppType;Lcom/facebook/orca/analytics/AnalyticsStorage;Landroid/telephony/TelephonyManager;Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/protocol/base/SingleMethodRunner;Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->b:Lcom/facebook/orca/config/OrcaConfig;

    .line 53
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->c:Lcom/facebook/orca/app/OrcaAppType;

    .line 54
    iput-object p3, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->d:Lcom/facebook/orca/analytics/AnalyticsStorage;

    .line 55
    iput-object p4, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->e:Landroid/telephony/TelephonyManager;

    .line 56
    iput-object p7, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->f:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 57
    iput-object p8, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->g:Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;

    .line 58
    iput-object p6, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->i:Lcom/facebook/orca/net/OrcaNetworkManager;

    .line 59
    iput-object p5, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->h:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    .line 60
    return-void
.end method

.method private a(Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->d:Lcom/facebook/orca/analytics/AnalyticsStorage;

    iget-object v1, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsStorage;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    .line 105
    :cond_0
    new-instance v2, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v2, v0}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 108
    const-string v0, "time"

    iget-wide v3, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->c:J

    invoke-virtual {v2, v0, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;J)V

    .line 109
    const-string v0, "app_id"

    iget-object v3, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->c:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v3}, Lcom/facebook/orca/app/OrcaAppType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "app_ver"

    iget-object v3, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->b:Lcom/facebook/orca/config/OrcaConfig;

    invoke-interface {v3}, Lcom/facebook/orca/config/OrcaConfig;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "device_id"

    iget-object v3, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->h:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {v3}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "session_id"

    iget-object v3, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "seq"

    iget-wide v3, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->d:J

    invoke-virtual {v2, v0, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;J)V

    .line 114
    iget-object v0, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "uid"

    iget-object v3, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    const-string v0, "n/a"

    .line 124
    :cond_2
    const-string v3, "carrier"

    invoke-virtual {v2, v3, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "os_ver"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "build_num"

    iget-object v3, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->b:Lcom/facebook/orca/config/OrcaConfig;

    invoke-interface {v3}, Lcom/facebook/orca/config/OrcaConfig;->f()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->i:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->c()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v3, "conn"

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v3, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler$RawJsonBlobNode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler$RawJsonBlobNode;-><init>(Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;Ljava/lang/String;)V

    .line 136
    const-string v1, "data"

    invoke-virtual {v2, v1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 137
    invoke-virtual {v2}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :cond_3
    const-string v0, "none"

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->i:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->d:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->b()Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;

    .line 150
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->a(Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;)Ljava/lang/String;

    move-result-object v1

    .line 152
    if-nez v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->d:Lcom/facebook/orca/analytics/AnalyticsStorage;

    iget-object v0, v0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->f:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    iget-object v6, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->g:Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;

    invoke-virtual {v5, v6, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->d:Lcom/facebook/orca/analytics/AnalyticsStorage;

    iget-object v0, v0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    sget-wide v5, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->a:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "HoneyAnalyticsUploadHandler"

    const-string v5, "error upload analytic logs"

    invoke-static {v1, v5, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
