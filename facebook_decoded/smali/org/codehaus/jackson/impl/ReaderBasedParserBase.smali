.class public abstract Lorg/codehaus/jackson/impl/ReaderBasedParserBase;
.super Lorg/codehaus/jackson/impl/JsonNumericParserBase;
.source "ReaderBasedParserBase.java"


# instance fields
.field protected r:[C

.field private s:Ljava/io/Reader;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V

    .line 54
    iput-object p3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->s:Ljava/io/Reader;

    .line 55
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->f()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->r:[C

    .line 56
    return-void
.end method


# virtual methods
.method protected final B()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->f:J

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->e:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->f:J

    .line 92
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->h:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->h:I

    .line 94
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->s:Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->s:Ljava/io/Reader;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->r:[C

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->r:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 96
    if-lez v1, :cond_1

    .line 97
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    .line 98
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->e:I

    .line 99
    const/4 v0, 0x1

    .line 108
    :cond_0
    return v0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->C()V

    .line 104
    if-nez v1, :cond_0

    .line 105
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final C()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->s:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->s:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 136
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->s:Ljava/io/Reader;

    .line 138
    :cond_2
    return-void
.end method

.method protected final D()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->D()V

    .line 151
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->r:[C

    .line 152
    if-eqz v0, :cond_0

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->r:[C

    .line 154
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->a([C)V

    .line 156
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 175
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->e:I

    if-lt v1, v2, :cond_1

    .line 176
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->B()Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->H()V

    .line 180
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->r:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2

    .line 181
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->f(Ljava/lang/String;)V

    .line 183
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    .line 184
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 187
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->e:I

    if-lt v0, v1, :cond_4

    .line 188
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->B()Z

    move-result v0

    if-nez v0, :cond_4

    .line 198
    :cond_3
    :goto_0
    return v4

    .line 192
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    aget-char v0, v0, v1

    .line 194
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    .line 196
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final e(Ljava/lang/String;)C
    .locals 3
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->e:I

    if-lt v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->c(Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    aget-char v0, v0, v1

    return v0
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->e:I

    if-lt v1, v2, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->r:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    aget-char v1, v1, v2

    .line 216
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d:I

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->d(Ljava/lang/String;)V

    .line 223
    return-void
.end method
