.class Lcom/google/common/collect/Ordering$ArbitraryOrdering;
.super Lcom/google/common/collect/Ordering;
.source "Ordering.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 209
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Platform;->a(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;-><init>(Lcom/google/common/collect/Ordering$ArbitraryOrdering;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 250
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 220
    if-ne p1, p2, :cond_1

    .line 221
    const/4 v0, 0x0

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->a(Ljava/lang/Object;)I

    move-result v0

    .line 224
    invoke-static {p2}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->a(Ljava/lang/Object;)I

    move-result v1

    .line 225
    if-eq v0, v1, :cond_3

    .line 226
    if-ge v0, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 231
    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const-string v0, "Ordering.arbitrary()"

    return-object v0
.end method
