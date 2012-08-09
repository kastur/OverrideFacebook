.class final Lcom/google/common/base/CharMatcher$12;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic val$endInclusive:C

.field final synthetic val$startInclusive:C


# direct methods
.method constructor <init>(CC)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 510
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$12;->val$startInclusive:C

    iput-char p2, p0, Lcom/google/common/base/CharMatcher$12;->val$endInclusive:C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 510
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final matches(C)Z
    .locals 1
    .parameter

    .prologue
    .line 512
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$startInclusive:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$endInclusive:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final precomputed()Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 526
    return-object p0
.end method

.method final setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .locals 3
    .parameter

    .prologue
    .line 516
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$startInclusive:C

    .line 518
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher$LookupTable;->set(C)V

    .line 519
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    iget-char v2, p0, Lcom/google/common/base/CharMatcher$12;->val$endInclusive:C

    if-ne v0, v2, :cond_0

    .line 520
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
