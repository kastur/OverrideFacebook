.class final Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;
.super Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CustomConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 3532
    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3535
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;->a()Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
