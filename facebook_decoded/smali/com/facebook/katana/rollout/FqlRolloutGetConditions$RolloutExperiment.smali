.class Lcom/facebook/katana/rollout/FqlRolloutGetConditions$RolloutExperiment;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FqlRolloutGetConditions.java"


# instance fields
.field public final mCondition:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "condition"
    .end annotation
.end field

.field public final mExperimentName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "experiment"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 108
    iput-object v0, p0, Lcom/facebook/katana/rollout/FqlRolloutGetConditions$RolloutExperiment;->mExperimentName:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/facebook/katana/rollout/FqlRolloutGetConditions$RolloutExperiment;->mCondition:Ljava/lang/String;

    .line 110
    return-void
.end method
