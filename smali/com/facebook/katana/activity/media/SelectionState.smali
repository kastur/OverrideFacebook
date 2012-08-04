.class public Lcom/facebook/katana/activity/media/SelectionState;
.super Ljava/lang/Object;
.source "SelectionState.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
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
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->a:Ljava/util/List;

    .line 31
    invoke-static {}, Lcom/google/common/collect/Sets;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    .line 37
    return-void
.end method

.method public constructor <init>([J)V
    .locals 5
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->a:Ljava/util/List;

    .line 31
    invoke-static {}, Lcom/google/common/collect/Sets;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    .line 45
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    .line 46
    iget-object v4, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method private a(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;

    .line 103
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;->a(JZ)V

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/MediaItem;)V
    .locals 5
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 55
    iget-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/katana/activity/media/SelectionState;->a(JZ)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/katana/model/MediaItem;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Lcom/facebook/katana/model/MediaItem;->a()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/activity/media/SelectionState;->a(JZ)V

    .line 61
    return-void
.end method

.method public final b(Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public final b(Lcom/facebook/katana/model/MediaItem;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/katana/model/MediaItem;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1}, Lcom/facebook/katana/model/MediaItem;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/activity/media/SelectionState;->a(JZ)V

    .line 67
    return-void
.end method

.method public final b()[J
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 92
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 94
    aput-wide v4, v2, v1

    .line 95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_0
    return-object v2
.end method

.method public final c(Lcom/facebook/katana/model/MediaItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/katana/activity/media/SelectionState;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/katana/model/MediaItem;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
