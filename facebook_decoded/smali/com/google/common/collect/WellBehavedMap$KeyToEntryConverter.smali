.class Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;
.super Lcom/google/common/collect/Sets$InvertibleFunction;
.source "WellBehavedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$InvertibleFunction",
        "<TK;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/common/collect/Sets$InvertibleFunction;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;->a:Ljava/util/Map;

    .line 70
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
    .line 87
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;-><init>(Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 64
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
