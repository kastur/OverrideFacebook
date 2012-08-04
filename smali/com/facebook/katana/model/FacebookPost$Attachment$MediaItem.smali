.class public Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPost.java"


# annotations
.annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$IgnoreUnexpectedJsonFields;
.end annotation


# static fields
.field public static final TYPE_FLASH:Ljava/lang/String; = "flash"

.field public static final TYPE_LINK:Ljava/lang/String; = "link"

.field public static final TYPE_MP3:Ljava/lang/String; = "mp3"

.field public static final TYPE_PHOTO:Ljava/lang/String; = "photo"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"


# instance fields
.field public final href:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "href"
    .end annotation
.end field

.field private final mPhoto:Lcom/facebook/katana/model/FacebookPhoto;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "photo"
    .end annotation
.end field

.field private final mVideo:Lcom/facebook/katana/model/FacebookVideo;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "video"
    .end annotation
.end field

.field public final src:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "src"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 500
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 501
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->href:Ljava/lang/String;

    .line 502
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->type:Ljava/lang/String;

    .line 503
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->src:Ljava/lang/String;

    .line 504
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->mPhoto:Lcom/facebook/katana/model/FacebookPhoto;

    .line 505
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->mVideo:Lcom/facebook/katana/model/FacebookVideo;

    .line 506
    return-void
.end method


# virtual methods
.method public final b()Lcom/facebook/katana/model/FacebookPhoto;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->mPhoto:Lcom/facebook/katana/model/FacebookPhoto;

    return-object v0
.end method

.method public final c()Lcom/facebook/katana/model/FacebookVideo;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->mVideo:Lcom/facebook/katana/model/FacebookVideo;

    return-object v0
.end method
