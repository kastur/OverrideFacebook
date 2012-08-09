.class abstract Lcom/google/common/collect/AbstractMultimap;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

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
.field private transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient b:I

.field private transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 119
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 212
    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 363
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    .line 370
    :goto_0
    return-object v0

    .line 365
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 366
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSet;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap$WrappedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    .line 367
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 368
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_2
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {p1}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 639
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 376
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$RandomAccessWrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultimap$RandomAccessWrappedList;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultimap$WrappedList;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$KeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$KeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/common/collect/AbstractMultimap;)I
    .locals 2
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/common/collect/AbstractMultimap;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/common/collect/AbstractMultimap;)I
    .locals 2
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    return v0
.end method

.method static synthetic d(Lcom/google/common/collect/AbstractMultimap;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    return v0
.end method

.method private f(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1108
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    if-eqz v0, :cond_0

    .line 1117
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1118
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1119
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    :cond_0
    move v0, v1

    move v1, v0

    .line 1121
    :goto_0
    return v1

    .line 1112
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1110
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private j()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1254
    instance-of v0, p0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$EntrySet;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap;B)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$Entries;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$Entries;-><init>(Lcom/google/common/collect/AbstractMultimap;B)V

    goto :goto_0
.end method

.method private k()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 202
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 350
    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 353
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->f:Ljava/util/Map;

    .line 1362
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;->k()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->f:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
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
    .line 192
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 193
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

.method abstract c()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method

.method c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 222
    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    .line 226
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 227
    if-eqz v1, :cond_1

    .line 228
    iget v2, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    .line 229
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    .line 233
    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    return v0
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 334
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->b:I

    .line 338
    return-void
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 182
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1540
    if-ne p1, p0, :cond_0

    .line 1541
    const/4 v0, 0x1

    .line 1547
    :goto_0
    return v0

    .line 1543
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_1

    .line 1544
    check-cast p1, Lcom/google/common/collect/Multimap;

    .line 1545
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1547
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->c:Ljava/util/Set;

    .line 866
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public g()Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->d:Lcom/google/common/collect/Multiset;

    .line 997
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$MultisetView;-><init>(Lcom/google/common/collect/AbstractMultimap;B)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->d:Lcom/google/common/collect/Multiset;

    :cond_0
    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->e:Ljava/util/Collection;

    .line 1249
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;->j()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->e:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method i()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1298
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
