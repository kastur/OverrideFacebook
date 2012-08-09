.class Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Collection;

.field private synthetic b:Lcom/google/common/collect/Maps$ImprovedAbstractMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->b:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    iput-object p2, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->a:Ljava/util/Collection;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->a:Ljava/util/Collection;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->b()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->b:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method
