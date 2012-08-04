.class public Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;
.super Ljava/lang/Object;
.source "AnimatingItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:F

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->b:F

    .line 28
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->c:Ljava/util/Set;

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->a:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->b:F

    return v0
.end method

.method public final a(I)Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->d:Ljava/util/Map;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;

    .line 111
    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;-><init>(Ljava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1
    return-object v0
.end method

.method public final a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public setAnimationOffset(F)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 75
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->b:F

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;

    .line 77
    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;->a(F)V

    goto :goto_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method
