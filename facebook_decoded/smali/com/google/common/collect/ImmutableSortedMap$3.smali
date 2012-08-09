.class Lcom/google/common/collect/ImmutableSortedMap$3;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedImmutableList",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 531
    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method private static a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 534
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 531
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedMap$3;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
