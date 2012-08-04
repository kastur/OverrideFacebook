.class public Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPushRegistration.java"


# instance fields
.field public final previouslyDisabled:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "previously_disabled"
    .end annotation
.end field

.field public final success:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "success"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;->success:Z

    .line 55
    iput-boolean v0, p0, Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;->previouslyDisabled:Z

    .line 56
    return-void
.end method
