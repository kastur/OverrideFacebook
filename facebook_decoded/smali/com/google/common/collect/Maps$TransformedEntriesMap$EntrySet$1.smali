.class Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;

.field private synthetic b:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;->a:Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 929
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 930
    new-instance v1, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1$1;-><init>(Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 945
    return-void
.end method
