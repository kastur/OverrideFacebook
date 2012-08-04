.class Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->b:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 890
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->b:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->a:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;->a:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 886
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
