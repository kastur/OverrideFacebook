.class Lcom/google/common/collect/RegularImmutableMap$EntrySet;
.super Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private transient a:Lcom/google/common/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap;->a(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 203
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->a:Lcom/google/common/collect/RegularImmutableMap;

    .line 204
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 207
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 208
    check-cast p1, Ljava/util/Map$Entry;

    .line 209
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->a:Lcom/google/common/collect/RegularImmutableMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 212
    :cond_0
    return v0
.end method
