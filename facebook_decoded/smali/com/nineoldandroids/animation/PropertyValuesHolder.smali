.class public Lcom/nineoldandroids/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final h:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private static final i:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private static j:[Ljava/lang/Class;

.field private static k:[Ljava/lang/Class;

.field private static l:[Ljava/lang/Class;

.field private static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/nineoldandroids/util/Property;

.field b:Ljava/lang/reflect/Method;

.field c:Lcom/nineoldandroids/animation/KeyframeSet;

.field final d:[Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/Class;

.field private o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private p:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/IntEvaluator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->h:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 81
    new-instance v0, Lcom/nineoldandroids/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->i:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->j:[Ljava/lang/Class;

    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->k:[Ljava/lang/Class;

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->l:[Ljava/lang/Class;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->m:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->n:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/nineoldandroids/util/Property;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->b:Ljava/lang/reflect/Method;

    .line 65
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    .line 76
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->d:[Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/nineoldandroids/util/Property;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/util/Property;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->b:Ljava/lang/reflect/Method;

    .line 65
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    .line 76
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->d:[Ljava/lang/Object;

    .line 132
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Lcom/nineoldandroids/util/Property;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nineoldandroids/util/Property",
            "<*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;[F)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 176
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 725
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-object p0

    .line 729
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 730
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 381
    .line 382
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 384
    if-nez p3, :cond_0

    .line 386
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    const-string v2, "PropertyValuesHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t find no-arg method for property "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 390
    goto :goto_0

    .line 392
    :cond_0
    new-array v5, v6, [Ljava/lang/Class;

    .line 394
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->g:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->j:[Ljava/lang/Class;

    .line 404
    :goto_1
    array-length v6, v0

    move v2, v3

    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v7, v0, v2

    .line 405
    aput-object v7, v5, v3

    .line 407
    :try_start_1
    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 409
    iput-object v7, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->g:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 410
    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->g:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->k:[Ljava/lang/Class;

    goto :goto_1

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->g:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->l:[Ljava/lang/Class;

    goto :goto_1

    .line 401
    :cond_3
    new-array v0, v6, [Ljava/lang/Class;

    .line 402
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->g:Ljava/lang/Class;

    aput-object v2, v0, v3

    goto :goto_1

    .line 404
    :catch_1
    move-exception v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 416
    :cond_4
    const-string v0, "PropertyValuesHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t find setter/getter for property "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with value type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->g:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 438
    const/4 v1, 0x0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 444
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 445
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 448
    :cond_0
    if-nez v1, :cond_2

    .line 449
    invoke-direct {p0, p1, p3, p4}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 450
    if-nez v0, :cond_1

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 452
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_1
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object v0, v1

    .line 457
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 459
    return-object v0

    .line 457
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private b(Ljava/lang/Class;)V
    .locals 3
    .parameter

    .prologue
    .line 474
    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->n:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    .line 475
    return-void
.end method


# virtual methods
.method public a()Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 2

    .prologue
    .line 575
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    .line 576
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    .line 577
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    .line 578
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/KeyframeSet;->a()Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v1

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 579
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->p:Lcom/nineoldandroids/animation/TypeEvaluator;

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->p:Lcom/nineoldandroids/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(F)V
    .locals 1
    .parameter

    .prologue
    .line 651
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/KeyframeSet;->a(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->q:Ljava/lang/Object;

    .line 652
    return-void
.end method

.method public final a(Lcom/nineoldandroids/util/Property;)V
    .locals 0
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    .line 683
    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 3
    .parameter

    .prologue
    .line 467
    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->m:Ljava/util/HashMap;

    const-string v1, "set"

    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->g:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->b:Ljava/lang/reflect/Method;

    .line 468
    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 488
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/util/Property;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/KeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    .line 493
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v2, p1}, Lcom/nineoldandroids/util/Property;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/Keyframe;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    const-string v0, "PropertyValuesHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such property ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v2}, Lcom/nineoldandroids/util/Property;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") on target object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Trying reflection instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    .line 504
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 505
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 506
    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/Class;)V

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/KeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    .line 509
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 510
    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    if-nez v3, :cond_4

    .line 511
    invoke-direct {p0, v1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->b(Ljava/lang/Class;)V

    .line 514
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/Keyframe;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 515
    :catch_1
    move-exception v0

    .line 516
    const-string v3, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 517
    :catch_2
    move-exception v0

    .line 518
    const-string v3, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 522
    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public varargs a([F)V
    .locals 1
    .parameter

    .prologue
    .line 327
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->g:Ljava/lang/Class;

    .line 328
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->a([F)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 329
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->p:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->g:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->h:Lcom/nineoldandroids/animation/TypeEvaluator;

    :goto_0
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->p:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->p:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->p:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/KeyframeSet;->a(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 627
    :cond_1
    return-void

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->g:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->i:Lcom/nineoldandroids/animation/TypeEvaluator;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 595
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a:Lcom/nineoldandroids/util/Property;

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/Property;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->d()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 601
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->d:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 608
    :cond_1
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :catch_1
    move-exception v0

    .line 605
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a()Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/KeyframeSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
