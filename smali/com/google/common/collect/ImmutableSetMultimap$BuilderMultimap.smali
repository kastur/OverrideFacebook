.class Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMultimap;-><init>(Ljava/util/Map;)V

    .line 151
    return-void
.end method


# virtual methods
.method final c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/google/common/collect/Sets;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method
