.class final Lcom/google/common/base/CharMatcher$8;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$8;->val$match:C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 392
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final matches(C)Z
    .locals 1
    .parameter

    .prologue
    .line 394
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$8;->val$match:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .parameter

    .prologue
    .line 406
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$8;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    goto :goto_0
.end method

.method public final precomputed()Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 418
    return-object p0
.end method

.method final setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .locals 1
    .parameter

    .prologue
    .line 414
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$8;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher$LookupTable;->set(C)V

    .line 415
    return-void
.end method
