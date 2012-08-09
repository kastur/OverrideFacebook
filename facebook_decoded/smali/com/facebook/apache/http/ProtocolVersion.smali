.class public Lcom/facebook/apache/http/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field protected final c:I

.field protected final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    if-gez p2, :cond_1

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol major version number must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    if-gez p3, :cond_2

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol minor version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    iput-object p1, p0, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    .line 81
    iput p2, p0, Lcom/facebook/apache/http/ProtocolVersion;->c:I

    .line 82
    iput p3, p0, Lcom/facebook/apache/http/ProtocolVersion;->d:I

    .line 83
    return-void
.end method

.method private b(Lcom/facebook/apache/http/ProtocolVersion;)Z
    .locals 2
    .parameter

    .prologue
    .line 188
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/facebook/apache/http/ProtocolVersion;)I
    .locals 3
    .parameter

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol version must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Versions for different protocols cannot be compared. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/apache/http/ProtocolVersion;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/apache/http/ProtocolVersion;->b()I

    move-result v1

    sub-int/2addr v0, v1

    .line 220
    if-nez v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/facebook/apache/http/ProtocolVersion;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/apache/http/ProtocolVersion;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 223
    :cond_2
    return v0
.end method


# virtual methods
.method public a(II)Lcom/facebook/apache/http/ProtocolVersion;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/facebook/apache/http/ProtocolVersion;->c:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/apache/http/ProtocolVersion;->d:I

    if-ne p2, v0, :cond_0

    .line 135
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/facebook/apache/http/ProtocolVersion;

    iget-object v1, p0, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/ProtocolVersion;)Z
    .locals 1
    .parameter

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/ProtocolVersion;->b(Lcom/facebook/apache/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/apache/http/ProtocolVersion;->c(Lcom/facebook/apache/http/ProtocolVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/facebook/apache/http/ProtocolVersion;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/facebook/apache/http/ProtocolVersion;->d:I

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    if-ne p0, p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    instance-of v2, p1, Lcom/facebook/apache/http/ProtocolVersion;

    if-nez v2, :cond_2

    move v0, v1

    .line 167
    goto :goto_0

    .line 169
    :cond_2
    check-cast p1, Lcom/facebook/apache/http/ProtocolVersion;

    .line 171
    iget-object v2, p0, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/facebook/apache/http/ProtocolVersion;->c:I

    iget v3, p1, Lcom/facebook/apache/http/ProtocolVersion;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/facebook/apache/http/ProtocolVersion;->d:I

    iget v3, p1, Lcom/facebook/apache/http/ProtocolVersion;->d:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/facebook/apache/http/ProtocolVersion;->c:I

    const v2, 0x186a0

    mul-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/apache/http/ProtocolVersion;->d:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 264
    iget-object v1, p0, Lcom/facebook/apache/http/ProtocolVersion;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 265
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 266
    iget v1, p0, Lcom/facebook/apache/http/ProtocolVersion;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 267
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 268
    iget v1, p0, Lcom/facebook/apache/http/ProtocolVersion;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
