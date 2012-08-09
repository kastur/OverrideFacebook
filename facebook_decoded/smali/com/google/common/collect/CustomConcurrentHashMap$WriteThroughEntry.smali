.class final Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private synthetic c:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 3554
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 3555
    iput-object p2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->a:Ljava/lang/Object;

    .line 3556
    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->b:Ljava/lang/Object;

    .line 3557
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 3569
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 3570
    check-cast p1, Ljava/util/Map$Entry;

    .line 3571
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3574
    :cond_0
    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3560
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3564
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 3579
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3583
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3584
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->b:Ljava/lang/Object;

    .line 3585
    return-object v0
.end method
