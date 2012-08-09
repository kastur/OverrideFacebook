.class final Lcom/google/common/collect/Iterators$15;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Iterator;


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/common/collect/Iterators$15;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/google/common/collect/Iterators$15;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
