.class public abstract Lcom/facebook/orca/common/util/TypedKey;
.super Ljava/lang/Object;
.source "TypedKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/orca/common/util/TypedKey;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private c(Lcom/facebook/orca/common/util/TypedKey;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/common/util/TypedKey;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/util/TypedKey;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 34
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/facebook/orca/common/util/TypedKey;

    invoke-direct {p0, p1}, Lcom/facebook/orca/common/util/TypedKey;->c(Lcom/facebook/orca/common/util/TypedKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 42
    :cond_3
    check-cast p1, Lcom/facebook/orca/common/util/TypedKey;

    .line 44
    iget-object v2, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/facebook/orca/common/util/TypedKey;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/common/util/TypedKey;->a:Ljava/lang/String;

    return-object v0
.end method
