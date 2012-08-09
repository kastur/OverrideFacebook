.class public Lcom/facebook/katana/model/FacebookPost$Likes;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPost.java"


# annotations
.annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$IgnoreUnexpectedJsonFields;
.end annotation


# instance fields
.field public final canLike:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "can_like"
    .end annotation
.end field

.field private mCount:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "count"
    .end annotation
.end field

.field private mFriendUserId:J

.field private mFriendUsers:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/util/jsonmirror/types/JMLong;
        }
        jsonFieldName = "friends"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleUserId:J

.field private mSampleUsers:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/util/jsonmirror/types/JMLong;
        }
        jsonFieldName = "sample"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUserLikes:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "user_likes"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 719
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 720
    iput-boolean v1, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mUserLikes:Z

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->canLike:Z

    .line 722
    iput v1, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mCount:I

    .line 723
    iput-wide v2, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mSampleUserId:J

    .line 724
    iput-wide v2, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mFriendUserId:J

    .line 725
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookPost$Likes;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 733
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mSampleUsers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mSampleUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mSampleUsers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mSampleUserId:J

    .line 736
    :cond_0
    iput-object v3, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mSampleUsers:Ljava/util/List;

    .line 737
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mFriendUsers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mFriendUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mFriendUsers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mFriendUserId:J

    .line 740
    :cond_1
    iput-object v3, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mFriendUsers:Ljava/util/List;

    .line 741
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mUserLikes:Z

    if-eq v0, p1, :cond_0

    .line 755
    if-eqz p1, :cond_1

    .line 756
    iget v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mCount:I

    .line 760
    :goto_0
    iput-boolean p1, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mUserLikes:Z

    .line 762
    :cond_0
    return-void

    .line 758
    :cond_1
    iget v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mCount:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mUserLikes:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mCount:I

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 775
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mSampleUserId:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 782
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPost$Likes;->mFriendUserId:J

    return-wide v0
.end method
