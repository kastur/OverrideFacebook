.class Lcom/google/common/collect/AbstractBiMap$ValueSet$1;
.super Ljava/lang/Object;
.source "AbstractBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private synthetic b:Ljava/util/Iterator;

.field private synthetic c:Lcom/google/common/collect/AbstractBiMap$ValueSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractBiMap$ValueSet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->c:Lcom/google/common/collect/AbstractBiMap$ValueSet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 251
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->c:Lcom/google/common/collect/AbstractBiMap$ValueSet;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->a:Lcom/google/common/collect/AbstractBiMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractBiMap;->b(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V

    .line 252
    return-void
.end method
