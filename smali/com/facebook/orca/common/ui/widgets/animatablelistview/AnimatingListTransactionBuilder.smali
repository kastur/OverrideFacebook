.class public Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;
.super Ljava/lang/Object;
.source "AnimatingListTransactionBuilder.java"


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
.field private final a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    .line 33
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b:Lcom/google/common/collect/ImmutableList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->b:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    .line 35
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->e:Ljava/util/Set;

    .line 36
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->f:Ljava/util/Map;

    .line 37
    return-void
.end method

.method private a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 278
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->e:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-direct {v2, v0, v3}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public final a(IILcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    invoke-virtual {p3}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->toMutationType()Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    move-result-object v3

    invoke-direct {v2, v0, v3, p2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-direct {v1, p2, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-direct {v1, p1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v3, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-direct {v3, v1, v4}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 269
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 272
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    .line 273
    return-void
.end method

.method public final b(I)V
    .locals 4
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-direct {v2, v0, v3}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-direct {v1, p2, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 133
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-direct {v1, p1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public final c(I)V
    .locals 4
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-direct {v2, v0, v3}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REPLACE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-direct {v1, p2, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public final d(ILjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->d:Ljava/util/List;

    new-instance v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->MARKED_FOR_REPLACE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-direct {v2, p2, v3}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;-><init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListTransactionBuilder;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method
