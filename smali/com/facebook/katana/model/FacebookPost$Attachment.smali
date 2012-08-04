.class public Lcom/facebook/katana/model/FacebookPost$Attachment;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPost.java"


# annotations
.annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$IgnoreUnexpectedJsonFields;
.end annotation


# instance fields
.field public final caption:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "caption"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "description"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledStrippedString;
    .end annotation
.end field

.field public final href:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "href"
    .end annotation
.end field

.field public final mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "fb_checkin"
    .end annotation
.end field

.field private final mMediaItems:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;
        }
        jsonFieldName = "media"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "name"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 455
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->name:Ljava/lang/String;

    .line 456
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->caption:Ljava/lang/String;

    .line 457
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->description:Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->href:Ljava/lang/String;

    .line 459
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mMediaItems:Ljava/util/List;

    .line 460
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    .line 461
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/katana/model/FacebookCheckinDetails;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 442
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->name:Ljava/lang/String;

    .line 443
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->caption:Ljava/lang/String;

    .line 444
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->description:Ljava/lang/String;

    .line 445
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->href:Ljava/lang/String;

    .line 446
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mMediaItems:Ljava/util/List;

    .line 447
    iput-object p2, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    .line 448
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mMediaItems:Ljava/util/List;

    return-object v0
.end method
