.class public Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;
.super Ljava/lang/Object;
.source "FacebookPhotoTagSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/facebook/katana/model/FacebookPhotoTag;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->b:Ljava/util/Set;

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 68
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->c()V

    .line 33
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->b:Ljava/util/Set;

    iget-object v1, p1, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/FacebookPhotoTag;)V
    .locals 4
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPhotoTag;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPhotoTag;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->c()V

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhotoTag;

    .line 27
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a(Lcom/facebook/katana/model/FacebookPhotoTag;)V

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final a(J)Z
    .locals 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/facebook/katana/model/FacebookPhotoTag;)V
    .locals 4
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPhotoTag;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPhotoTag;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FacebookPhotoTagSet;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
