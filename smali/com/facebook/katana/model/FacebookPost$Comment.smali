.class public Lcom/facebook/katana/model/FacebookPost$Comment;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPost.java"


# instance fields
.field public final fromId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "fromid"
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "id"
    .end annotation
.end field

.field private mProfile:Lcom/facebook/katana/model/FacebookProfile;

.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "text"
    .end annotation
.end field

.field public final time:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "time"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 656
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 657
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comment;->id:Ljava/lang/String;

    .line 658
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPost$Comment;->fromId:J

    .line 659
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPost$Comment;->time:J

    .line 660
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comment;->text:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 645
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPost$Comment;->id:Ljava/lang/String;

    .line 646
    iput-wide p2, p0, Lcom/facebook/katana/model/FacebookPost$Comment;->fromId:J

    .line 647
    iput-wide p4, p0, Lcom/facebook/katana/model/FacebookPost$Comment;->time:J

    .line 648
    iput-object p6, p0, Lcom/facebook/katana/model/FacebookPost$Comment;->text:Ljava/lang/String;

    .line 649
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPost$Comment;->mProfile:Lcom/facebook/katana/model/FacebookProfile;

    .line 682
    return-void
.end method

.method public final b()Lcom/facebook/katana/model/FacebookProfile;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comment;->mProfile:Lcom/facebook/katana/model/FacebookProfile;

    return-object v0
.end method
