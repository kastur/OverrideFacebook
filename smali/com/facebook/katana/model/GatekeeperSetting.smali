.class public Lcom/facebook/katana/model/GatekeeperSetting;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "GatekeeperSetting.java"


# instance fields
.field public final mEnabled:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "result"
    .end annotation
.end field

.field public final mProjectName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "project_name"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/model/GatekeeperSetting;->mProjectName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/model/GatekeeperSetting;->mEnabled:Z

    .line 28
    return-void
.end method
