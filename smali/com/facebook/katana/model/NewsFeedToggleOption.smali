.class public Lcom/facebook/katana/model/NewsFeedToggleOption;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "NewsFeedToggleOption.java"


# instance fields
.field public final script:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "script"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "title"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/facebook/katana/model/NewsFeedToggleOption;->title:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/facebook/katana/model/NewsFeedToggleOption;->script:Ljava/lang/String;

    .line 18
    return-void
.end method
