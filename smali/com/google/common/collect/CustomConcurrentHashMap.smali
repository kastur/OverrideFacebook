.class Lcom/google/common/collect/CustomConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final i:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient a:I

.field final transient b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:J

.field final f:J

.field final g:Ljava/util/concurrent/Executor;

.field final h:Lcom/google/common/base/Ticker;

.field private transient j:I

.field private k:I

.field private l:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field private m:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field private n:I

.field private o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private p:Lcom/google/common/collect/MapEvictionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapEvictionListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field private transient q:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field private s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 614
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->i:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 803
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$2;

    invoke-direct {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->r:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 200
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 201
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->d()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->k:I

    .line 203
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->l:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 204
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->i()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->m:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 206
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    .line 207
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:Lcom/google/common/base/Equivalence;

    .line 209
    iget v0, p1, Lcom/google/common/collect/MapMaker;->b:I

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->n:I

    .line 210
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->e:J

    .line 211
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->f:J

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->l:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->c()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->getFactory(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;ZZ)Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->q:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 215
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->g:Ljava/util/concurrent/Executor;

    .line 216
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->m()Lcom/google/common/base/Ticker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->h:Lcom/google/common/base/Ticker;

    .line 218
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->n()Lcom/google/common/collect/MapEvictionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->p:Lcom/google/common/collect/MapEvictionListener;

    .line 219
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->p:Lcom/google/common/collect/MapEvictionListener;

    sget-object v1, Lcom/google/common/collect/MapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/MapMaker$NullListener;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->o:Ljava/util/Queue;

    .line 223
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->c()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 225
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v2

    move v3, v4

    .line 235
    :goto_1
    iget v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->k:I

    if-ge v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    shl-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->n:I

    if-gt v5, v6, :cond_3

    .line 236
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 237
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 239
    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->j:I

    .line 240
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->a:I

    .line 242
    invoke-static {v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 244
    div-int v3, v0, v1

    .line 245
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_8

    .line 246
    add-int/lit8 v0, v3, 0x1

    .line 250
    :goto_2
    if-ge v2, v0, :cond_4

    .line 251
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 254
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->n:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 257
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->n:I

    rem-int v1, v3, v1

    .line 258
    :goto_3
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v3, v3

    if-ge v4, v3, :cond_7

    .line 259
    if-ne v4, v1, :cond_5

    .line 260
    add-int/lit8 v0, v0, -0x1

    .line 262
    :cond_5
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v5

    aput-object v5, v3, v4

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 265
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v0, v0

    if-ge v4, v0, :cond_7

    .line 266
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    aput-object v1, v0, v4

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 270
    :cond_7
    return-void

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method private static a(I)I
    .locals 3
    .parameter

    .prologue
    .line 1704
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1705
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1706
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1707
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1708
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1709
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method private a()Z
    .locals 4

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1778
    invoke-interface {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1801
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->i:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1809
    invoke-interface {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1810
    invoke-interface {p1, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1811
    return-void
.end method

.method static c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1852
    invoke-interface {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1853
    invoke-interface {p1, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1854
    return-void
.end method

.method static c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1786
    invoke-interface {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1793
    :cond_0
    :goto_0
    return v0

    .line 1789
    :cond_1
    invoke-interface {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    .line 1790
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 1791
    goto :goto_0

    .line 1793
    :cond_2
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static c(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 1870
    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    return-object v0
.end method

.method static e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1815
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->g()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1816
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1817
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1818
    return-void
.end method

.method static f()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 645
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->i:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    return-object v0
.end method

.method static f(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1858
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->g()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1859
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1860
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1861
    return-void
.end method

.method static g()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 800
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;

    return-object v0
.end method

.method static h()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 837
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->r:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1735
    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(I)I

    move-result v0

    return v0
.end method

.method final a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1721
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 1722
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->q:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->copyEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 1724
    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 1725
    return-object v1
.end method

.method final a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->q:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->newEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method a(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 1887
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;II)V

    return-object v0
.end method

.method final a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->m:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->referenceValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1749
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1750
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 1751
    return-void
.end method

.method final a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1740
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1741
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    .line 1742
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z

    .line 1743
    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1744
    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    .line 1746
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->o:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap;->r:Ljava/util/Queue;

    if-ne v0, v1, :cond_0

    .line 1831
    :goto_0
    return-void

    .line 1828
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1829
    invoke-interface {p3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 1830
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->o:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->j:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->a:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method final b()Z
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->h:Lcom/google/common/base/Ticker;

    invoke-interface {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)Z

    move-result v0

    return v0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 3397
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3398
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d()V

    .line 3397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3400
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3323
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3324
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3329
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3331
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move v0, v1

    .line 3332
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 3335
    aget-object v3, v2, v0

    iget v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    .line 3336
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3337
    const/4 v1, 0x1

    .line 3340
    :cond_0
    return v1

    .line 3332
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final d()Z
    .locals 4

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1797
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z

    move-result v0

    return v0
.end method

.method final e()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->g:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/common/collect/MapMaker;->a:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3419
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->u:Ljava/util/Set;

    .line 3420
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->u:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3309
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3310
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final i()V
    .locals 3

    .prologue
    .line 1842
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 1843
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->p:Lcom/google/common/collect/MapEvictionListener;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/common/collect/MapEvictionListener;->onEviction(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1846
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3266
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 3276
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 3278
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 3279
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    if-eqz v5, :cond_1

    .line 3296
    :cond_0
    :goto_1
    return v1

    .line 3282
    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    aput v5, v4, v0

    add-int/2addr v2, v5

    .line 3278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3288
    :cond_2
    if-eqz v2, :cond_3

    move v0, v1

    .line 3289
    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_3

    .line 3290
    aget-object v2, v3, v0

    iget v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    if-nez v2, :cond_0

    aget v2, v4, v0

    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    if-ne v2, v5, :cond_0

    .line 3289
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3296
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3405
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->s:Ljava/util/Set;

    .line 3406
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->s:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3344
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3345
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3354
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3355
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3357
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3349
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3350
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3360
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3361
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3370
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3371
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3392
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3393
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 3380
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3381
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 3300
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 3301
    const-wide/16 v1, 0x0

    .line 3302
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 3303
    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3305
    :cond_0
    long-to-int v0, v1

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3412
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->t:Ljava/util/Collection;

    .line 3413
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Values;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->t:Ljava/util/Collection;

    goto :goto_0
.end method
