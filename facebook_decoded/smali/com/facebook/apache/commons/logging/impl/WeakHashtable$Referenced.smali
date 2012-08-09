.class final Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;
.super Ljava/lang/Object;
.source "WeakHashtable.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->a:Ljava/lang/ref/WeakReference;

    .line 403
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->b:I

    .line 404
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;B)V

    iput-object v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->a:Ljava/lang/ref/WeakReference;

    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->b:I

    .line 416
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 427
    .line 428
    instance-of v2, p1, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    if-eqz v2, :cond_4

    .line 429
    check-cast p1, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 430
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->a()Ljava/lang/Object;

    move-result-object v2

    .line 431
    invoke-direct {p1}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->a()Ljava/lang/Object;

    move-result-object v3

    .line 432
    if-nez v2, :cond_2

    .line 433
    if-nez v3, :cond_0

    move v2, v0

    .line 441
    :goto_0
    if-ne v2, v0, :cond_3

    .line 442
    invoke-virtual {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 454
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 433
    goto :goto_0

    :cond_1
    move v0, v1

    .line 442
    goto :goto_1

    .line 451
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->b:I

    return v0
.end method
