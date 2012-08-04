.class final Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;
.super Ljava/lang/ref/WeakReference;
.source "WeakHashtable.java"


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 471
    iput-object p3, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;->a:Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 472
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;)V

    return-void
.end method

.method private a()Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;->a:Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;
    .locals 1
    .parameter

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$WeakKey;->a()Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    move-result-object v0

    return-object v0
.end method
