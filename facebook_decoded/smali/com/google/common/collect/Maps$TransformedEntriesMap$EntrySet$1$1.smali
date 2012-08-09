.class Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV2;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Map$Entry;

.field private synthetic b:Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 930
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1$1;->b:Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1$1;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV2;"
        }
    .end annotation

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1$1;->b:Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;->a:Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;->a:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->b:Lcom/google/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Maps$EntryTransformer;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
