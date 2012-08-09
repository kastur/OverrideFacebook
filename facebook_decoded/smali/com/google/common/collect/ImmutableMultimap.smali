.class public abstract Lcom/google/common/collect/ImmutableMultimap;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;
.implements Ljava/io/Serializable;


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
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Multimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final transient a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;+",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient b:I

.field private transient c:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;+",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap;->a:Lcom/google/common/collect/ImmutableMap;

    .line 308
    iput p2, p0, Lcom/google/common/collect/ImmutableMultimap;->b:I

    .line 309
    return-void
.end method

.method private e()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->a:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method private f()Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->d:Lcom/google/common/collect/ImmutableMultiset;

    .line 548
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap;->h()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->d:Lcom/google/common/collect/ImmutableMultiset;

    :cond_0
    return-object v0
.end method

.method private h()Lcom/google/common/collect/ImmutableMultiset;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->c()Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v1

    .line 554
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 555
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->a()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->d()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultimap;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap;->e()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 402
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->c:Lcom/google/common/collect/ImmutableCollection;

    .line 478
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;-><init>(Lcom/google/common/collect/ImmutableMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->c:Lcom/google/common/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public abstract c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/google/common/collect/ImmutableMultimap;->b:I

    return v0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 431
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_0

    .line 432
    check-cast p1, Lcom/google/common/collect/Multimap;

    .line 433
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic g()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap;->f()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
