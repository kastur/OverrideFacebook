.class Lcom/google/common/collect/Interners$WeakInterner;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/collect/Interner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Interner",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/common/base/FinalizableReferenceQueue;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/common/collect/Interners$WeakInterner",
            "<TE;>.InternReference;",
            "Lcom/google/common/collect/Interners$WeakInterner",
            "<TE;>.InternReference;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {v0}, Lcom/google/common/base/FinalizableReferenceQueue;-><init>()V

    sput-object v0, Lcom/google/common/collect/Interners$WeakInterner;->b:Lcom/google/common/base/FinalizableReferenceQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 129
    return-void
.end method

.method static synthetic a()Lcom/google/common/base/FinalizableReferenceQueue;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/common/collect/Interners$WeakInterner;->b:Lcom/google/common/base/FinalizableReferenceQueue;

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/Interners$WeakInterner;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 79
    new-instance v0, Lcom/google/common/collect/Interners$WeakInterner$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/collect/Interners$WeakInterner$1;-><init>(Lcom/google/common/collect/Interners$WeakInterner;ILjava/lang/Object;)V

    .line 104
    iget-object v2, p0, Lcom/google/common/collect/Interners$WeakInterner;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 120
    :cond_0
    :goto_0
    return-object p1

    .line 112
    :cond_1
    new-instance v2, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;-><init>(Lcom/google/common/collect/Interners$WeakInterner;Ljava/lang/Object;I)V

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    .line 115
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_2

    move-object p1, v0

    .line 120
    goto :goto_0
.end method
