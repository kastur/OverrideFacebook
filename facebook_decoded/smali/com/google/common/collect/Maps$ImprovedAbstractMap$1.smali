.class Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;
.super Lcom/google/common/collect/ForwardingSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Set;

.field private synthetic b:Lcom/google/common/collect/Maps$ImprovedAbstractMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->b:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    iput-object p2, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->a:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->b:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1454
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->b:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    const/4 v0, 0x1

    .line 1458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
