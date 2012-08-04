.class public final Lcom/google/common/collect/Constraints;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 308
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 309
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 310
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 311
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/Set;Lcom/google/common/collect/Constraint;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 313
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/List;Lcom/google/common/collect/Constraint;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_2
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->c(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/google/common/collect/Constraint;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 209
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedRandomAccessList;-><init>(Ljava/util/List;Lcom/google/common/collect/Constraint;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedList;-><init>(Ljava/util/List;Lcom/google/common/collect/Constraint;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)Ljava/util/ListIterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->b(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Set;Lcom/google/common/collect/Constraint;)Ljava/util/Set;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedSet;-><init>(Ljava/util/Set;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method public static a(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method static synthetic b(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->d(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)Ljava/util/ListIterator;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedListIterator;-><init>(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method private static c(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedCollection;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method private static d(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {p0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 377
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 378
    invoke-interface {p1, v2}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 380
    :cond_0
    return-object v0
.end method
