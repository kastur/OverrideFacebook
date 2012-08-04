.class public Lcom/facebook/katana/model/FacebookVideo;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookVideo.java"


# annotations
.annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$IgnoreUnexpectedJsonFields;
.end annotation


# instance fields
.field private mDisplayUrl:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "display_url"
    .end annotation
.end field

.field private mSourceType:Lcom/facebook/katana/model/FacebookVideo$VideoSource;

.field private mSourceType_internal:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "source_type"
    .end annotation
.end field

.field private mSourceUrl:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "source_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    const-string v0, "mSourceType_internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const-string v0, "raw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "mSourceType"

    sget-object v1, Lcom/facebook/katana/model/FacebookVideo$VideoSource;->SOURCE_RAW:Lcom/facebook/katana/model/FacebookVideo$VideoSource;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookVideo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "mSourceType"

    sget-object v1, Lcom/facebook/katana/model/FacebookVideo$VideoSource;->SOURCE_HTML:Lcom/facebook/katana/model/FacebookVideo$VideoSource;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookVideo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookVideo;->mDisplayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookVideo;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/facebook/katana/model/FacebookVideo$VideoSource;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookVideo;->mSourceType:Lcom/facebook/katana/model/FacebookVideo$VideoSource;

    return-object v0
.end method
