.class abstract enum Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
.super Ljava/lang/Enum;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory; = null

.field static final EVICTABLE_MASK:I = 0x2

.field static final EXPIRABLE_MASK:I = 0x1

.field public static final enum SOFT:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum SOFT_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum SOFT_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum SOFT_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum STRONG_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum STRONG_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum STRONG_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum WEAK:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum WEAK_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum WEAK_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field public static final enum WEAK_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field static final factories:[[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 347
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 354
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$2;

    const-string v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 368
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$3;

    const-string v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 382
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$4;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 398
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$5;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 405
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$6;

    const-string v1, "SOFT_EXPIRABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 419
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$7;

    const-string v1, "SOFT_EVICTABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 433
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$8;

    const-string v1, "SOFT_EXPIRABLE_EVICTABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 449
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$9;

    const-string v1, "WEAK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 456
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$10;

    const-string v1, "WEAK_EXPIRABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 470
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$11;

    const-string v1, "WEAK_EVICTABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 484
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$12;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 346
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->$VALUES:[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 510
    new-array v0, v6, [[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    new-array v1, v7, [Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v7, [Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->SOFT_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK_EXPIRABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->WEAK_EXPIRABLE_EVICTABLE:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->factories:[[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/CustomConcurrentHashMap$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getFactory(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;ZZ)Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 518
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 520
    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->factories:[[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    move v1, v0

    .line 518
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
    .locals 1
    .parameter

    .prologue
    .line 346
    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->$VALUES:[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    invoke-virtual {v0}, [Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    return-object v0
.end method


# virtual methods
.method copyEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;",
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
    .line 545
    invoke-interface {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->newEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method copyEvictableEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
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
    .line 566
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 567
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 569
    invoke-static {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->f(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 570
    return-void
.end method

.method copyExpirableEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
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
    .line 553
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setExpirationTime(J)V

    .line 555
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 556
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 558
    invoke-static {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 559
    return-void
.end method

.method abstract newEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method
