.class Lcom/google/common/collect/Collections2$FilteredCollection$1;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Collection;

.field private synthetic b:Lcom/google/common/collect/Collections2$FilteredCollection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Collections2$FilteredCollection;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/common/collect/Collections2$FilteredCollection$1;->b:Lcom/google/common/collect/Collections2$FilteredCollection;

    iput-object p2, p0, Lcom/google/common/collect/Collections2$FilteredCollection$1;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection$1;->b:Lcom/google/common/collect/Collections2$FilteredCollection;

    iget-object v0, v0, Lcom/google/common/collect/Collections2$FilteredCollection;->b:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection$1;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
