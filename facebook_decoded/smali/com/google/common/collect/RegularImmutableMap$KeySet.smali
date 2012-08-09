.class Lcom/google/common/collect/RegularImmutableMap$KeySet;
.super Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;TK;>;"
    }
.end annotation


# instance fields
.field private c:Lcom/google/common/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap;->a(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap;->b(Lcom/google/common/collect/RegularImmutableMap;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;-><init>([Ljava/lang/Object;I)V

    .line 230
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->c:Lcom/google/common/collect/RegularImmutableMap;

    .line 231
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
    .line 234
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 223
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap$KeySet;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->c:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
