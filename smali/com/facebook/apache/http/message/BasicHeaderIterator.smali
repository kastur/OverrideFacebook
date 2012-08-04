.class public Lcom/facebook/apache/http/message/BasicHeaderIterator;
.super Ljava/lang/Object;
.source "BasicHeaderIterator.java"

# interfaces
.implements Lcom/facebook/apache/http/HeaderIterator;


# instance fields
.field private a:[Lcom/facebook/apache/http/Header;

.field private b:I


# direct methods
.method private a(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 95
    if-ge p1, v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicHeaderIterator;->a:[Lcom/facebook/apache/http/Header;

    array-length v1, v1

    add-int/lit8 v3, v1, -0x1

    .line 99
    const/4 v1, 0x0

    move v2, v1

    move v1, p1

    .line 100
    :goto_1
    if-nez v2, :cond_2

    if-ge v1, v3, :cond_2

    .line 101
    add-int/lit8 p1, v1, 0x1

    .line 102
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/message/BasicHeaderIterator;->b(I)Z

    move-result v1

    move v2, v1

    move v1, p1

    goto :goto_1

    .line 104
    :cond_2
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/Header;
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/facebook/apache/http/message/BasicHeaderIterator;->b:I

    .line 139
    if-gez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/message/BasicHeaderIterator;->a(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/apache/http/message/BasicHeaderIterator;->b:I

    .line 145
    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicHeaderIterator;->a:[Lcom/facebook/apache/http/Header;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/facebook/apache/http/message/BasicHeaderIterator;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/facebook/apache/http/message/BasicHeaderIterator;->a()Lcom/facebook/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing headers is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
