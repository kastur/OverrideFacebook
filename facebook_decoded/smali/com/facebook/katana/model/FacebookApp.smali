.class public Lcom/facebook/katana/model/FacebookApp;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookApp.java"


# static fields
.field public static final INVALID_ID:I = -0x1


# instance fields
.field public final mAppId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "app_id"
    .end annotation
.end field

.field public final mImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "logo_url"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "display_name"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookApp;->mAppId:J

    .line 35
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookApp;->mName:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookApp;->mImageUrl:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/facebook/katana/model/FacebookApp;->mAppId:J

    .line 48
    iput-object p3, p0, Lcom/facebook/katana/model/FacebookApp;->mName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookApp;->mImageUrl:Ljava/lang/String;

    .line 50
    return-void
.end method
