.class public Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "MobileEventLogger.java"

# interfaces
.implements Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;


# instance fields
.field protected active:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "active"
    .end annotation
.end field

.field protected duration:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "duration"
    .end annotation
.end field

.field protected min_scoop_interval:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "min_scoop_interval"
    .end annotation
.end field

.field protected ratio:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "ratio"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 141
    const v0, 0x1499700

    iput v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->duration:I

    .line 144
    const/16 v0, 0x2710

    iput v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->ratio:I

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->active:Z

    .line 150
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->min_scoop_interval:J

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->active:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->duration:I

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;->min_scoop_interval:J

    return-wide v0
.end method
