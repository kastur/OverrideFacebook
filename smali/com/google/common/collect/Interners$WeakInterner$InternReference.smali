.class Lcom/google/common/collect/Interners$WeakInterner$InternReference;
.super Lcom/google/common/base/FinalizableWeakReference;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/FinalizableWeakReference",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Lcom/google/common/collect/Interners$WeakInterner;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Interners$WeakInterner;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->b:Lcom/google/common/collect/Interners$WeakInterner;

    .line 133
    invoke-static {}, Lcom/google/common/collect/Interners$WeakInterner;->a()Lcom/google/common/base/FinalizableReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 134
    iput p3, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->a:I

    .line 135
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    if-ne p1, p0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    instance-of v2, p1, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    if-eqz v2, :cond_4

    .line 168
    check-cast p1, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    .line 170
    iget v2, p1, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->a:I

    iget v3, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->a:I

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 171
    goto :goto_0

    .line 173
    :cond_2
    invoke-super {p0}, Lcom/google/common/base/FinalizableWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 174
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->b:Lcom/google/common/collect/Interners$WeakInterner;

    invoke-static {v0}, Lcom/google/common/collect/Interners$WeakInterner;->a(Lcom/google/common/collect/Interners$WeakInterner;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-super {p0}, Lcom/google/common/base/FinalizableWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->finalizeReferent()V

    .line 145
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->a:I

    return v0
.end method
