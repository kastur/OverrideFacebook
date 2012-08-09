.class public Lcom/facebook/katana/model/MinorStatusModel;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "MinorStatusModel.java"


# instance fields
.field public final isMinor:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "is_minor"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/model/MinorStatusModel;->isMinor:Z

    .line 13
    return-void
.end method
