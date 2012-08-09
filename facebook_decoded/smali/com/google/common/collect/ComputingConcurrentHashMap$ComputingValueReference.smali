.class Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ComputingValueReference.this"
    .end annotation
.end field

.field private synthetic b:Lcom/google/common/collect/ComputingConcurrentHashMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ComputingConcurrentHashMap;)V
    .locals 1
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->b:Lcom/google/common/collect/ComputingConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->f()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ComputingConcurrentHashMap;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;-><init>(Lcom/google/common/collect/ComputingConcurrentHashMap;)V

    return-void
.end method

.method private a(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 343
    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap;->i:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    if-ne v0, v1, :cond_0

    .line 345
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 348
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    return-object p0
.end method

.method final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation

    .prologue
    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->b:Lcom/google/common/collect/ComputingConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/ComputingConcurrentHashMap;->a:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/common/collect/ComputationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 328
    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->b:Lcom/google/common/collect/ComputingConcurrentHashMap;

    iget-object v1, v1, Lcom/google/common/collect/ComputingConcurrentHashMap;->a:Lcom/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returned null for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 332
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;

    invoke-virtual {v0}, Lcom/google/common/collect/ComputationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 322
    throw v0

    .line 323
    :catch_1
    move-exception v0

    .line 324
    new-instance v1, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 325
    new-instance v1, Lcom/google/common/collect/ComputationException;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 336
    :cond_0
    new-instance v1, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 338
    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->b:Lcom/google/common/collect/ComputingConcurrentHashMap;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap;->a(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    .line 339
    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap;->i:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    if-ne v0, v1, :cond_1

    .line 292
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap;->i:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    if-ne v0, v1, :cond_0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 296
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 308
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method
