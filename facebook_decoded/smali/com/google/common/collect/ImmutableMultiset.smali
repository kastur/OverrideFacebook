.class public Lcom/google/common/collect/ImmutableMultiset;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMultiset.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient c:I

.field private transient d:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
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
            "<TE;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    .line 259
    iput p2, p0, Lcom/google/common/collect/ImmutableMultiset;->c:I

    .line 260
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method private static a(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 205
    .line 206
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->j()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    .line 208
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->k_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 209
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v7

    .line 210
    if-lez v7, :cond_2

    .line 213
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 214
    int-to-long v7, v7

    add-long v0, v1, v7

    :goto_1
    move-wide v1, v0

    .line 216
    goto :goto_0

    .line 218
    :cond_0
    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 219
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->f()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    .line 221
    :goto_2
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap$Builder;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    long-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lcom/google/common/collect/ImmutableMultiset;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    goto :goto_2

    :cond_2
    move-wide v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 184
    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 186
    check-cast v0, Lcom/google/common/collect/ImmutableMultiset;

    .line 187
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    :goto_0
    return-object v0

    .line 192
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    .line 196
    :goto_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->a(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultiset;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    goto :goto_1
.end method

.method public static c()Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>()V

    return-object v0
.end method

.method private static f()Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/google/common/collect/EmptyImmutableMultiset;->a:Lcom/google/common/collect/EmptyImmutableMultiset;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 269
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->d()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/google/common/collect/ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultiset$1;-><init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 363
    :goto_0
    return v0

    .line 351
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_4

    .line 352
    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 353
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->size()I

    move-result v3

    if-eq v0, v3, :cond_1

    move v0, v2

    .line 354
    goto :goto_0

    .line 356
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->k_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 357
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ImmutableMultiset;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v0

    if-eq v4, v0, :cond_2

    move v0, v2

    .line 358
    goto :goto_0

    :cond_3
    move v0, v1

    .line 361
    goto :goto_0

    :cond_4
    move v0, v2

    .line 363
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final j_()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final k_()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->d:Lcom/google/common/collect/ImmutableSet;

    .line 385
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->d:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->k_()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
