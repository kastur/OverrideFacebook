.class Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "WellBehavedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;


# direct methods
.method constructor <init>(Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;->b:Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;

    iput-object p2, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;->a:Ljava/lang/Object;

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
    .line 75
    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;->b:Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;

    iget-object v0, v0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;->b:Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;

    iget-object v0, v0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
