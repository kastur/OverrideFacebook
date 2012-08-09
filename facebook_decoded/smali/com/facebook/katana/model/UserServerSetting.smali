.class public Lcom/facebook/katana/model/UserServerSetting;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "UserServerSetting.java"


# instance fields
.field public final mProjectName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "project"
    .end annotation
.end field

.field public final mSettingName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "setting"
    .end annotation
.end field

.field public final mValue:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "value"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/facebook/katana/model/UserServerSetting;->mProjectName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/facebook/katana/model/UserServerSetting;->mSettingName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/facebook/katana/model/UserServerSetting;->mValue:Ljava/lang/String;

    .line 34
    return-void
.end method
