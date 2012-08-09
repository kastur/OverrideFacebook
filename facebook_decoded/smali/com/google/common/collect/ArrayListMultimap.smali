.class public final Lcom/google/common/collect/ArrayListMultimap;
.super Lcom/google/common/collect/AbstractListMultimap;
.source "ArrayListMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient a:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractListMultimap;-><init>(Ljava/util/Map;)V

    .line 104
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/common/collect/ArrayListMultimap;->a:I

    .line 105
    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/common/collect/ArrayListMultimap;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractListMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractListMultimap;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayListMultimap;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractListMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic d()I
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->d()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic e()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->e()V

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->g()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->h()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
