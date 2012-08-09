.class public Lcom/facebook/orca/analytics/AnalyticsDbProperties;
.super Ljava/lang/Object;
.source "AnalyticsDbProperties.java"


# static fields
.field public static final a:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

.field public static final b:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

.field public static final c:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

.field public static final d:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

.field public static final e:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

.field public static final f:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

.field public static final g:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-string v1, "/last_send_time"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->a:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    .line 13
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-string v1, "/last_ui_event_time"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->b:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    .line 16
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-string v1, "/session_id"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->c:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    .line 19
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-string v1, "/session_user_id"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->d:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    .line 22
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-string v1, "/session_batch_seq_id"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->e:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    .line 25
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-string v1, "/last_device_info_sent_time"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->f:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    .line 28
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-string v1, "/last_cleanup_time"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->g:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
