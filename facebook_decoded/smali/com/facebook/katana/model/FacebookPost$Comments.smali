.class public Lcom/facebook/katana/model/FacebookPost$Comments;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPost.java"


# instance fields
.field public final canPost:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "can_post"
    .end annotation
.end field

.field public final canRemove:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "can_remove"
    .end annotation
.end field

.field private final mComments:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/model/FacebookPost$Comment;
        }
        jsonFieldName = "comment_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPost$Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCount:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "count"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 542
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    .line 544
    iput-boolean v1, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->canRemove:Z

    .line 545
    iput-boolean v1, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->canPost:Z

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mTotalCount:I

    .line 547
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 616
    const-string v0, "mComments"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPost$Comments;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 618
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/FacebookPost$Comment;)V
    .locals 1
    .parameter

    .prologue
    .line 581
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    iget v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mTotalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mTotalCount:I

    .line 583
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Comment;

    .line 592
    iget-object v2, v0, Lcom/facebook/katana/model/FacebookPost$Comment;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 594
    iget v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mTotalCount:I

    if-lez v0, :cond_1

    .line 595
    iget v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mTotalCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mTotalCount:I

    .line 600
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPost$Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 557
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 558
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mTotalCount:I

    .line 559
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mTotalCount:I

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPost$Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost$Comments;->mComments:Ljava/util/List;

    return-object v0
.end method
