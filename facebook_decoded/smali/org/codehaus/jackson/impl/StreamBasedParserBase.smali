.class public abstract Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.super Lorg/codehaus/jackson/impl/JsonNumericParserBase;
.source "StreamBasedParserBase.java"


# instance fields
.field protected r:[B

.field private s:Ljava/io/InputStream;

.field private t:Z


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V

    .line 67
    iput-object p3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->s:Ljava/io/InputStream;

    .line 68
    iput-object p4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->r:[B

    .line 69
    iput p5, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->d:I

    .line 70
    iput p6, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->e:I

    .line 71
    iput-boolean p7, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->t:Z

    .line 72
    return-void
.end method


# virtual methods
.method protected final B()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->f:J

    iget v3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->e:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->f:J

    .line 109
    iget v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->h:I

    iget v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->h:I

    .line 111
    iget-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->s:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->s:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->r:[B

    iget-object v3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->r:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 113
    if-lez v1, :cond_1

    .line 114
    iput v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->d:I

    .line 115
    iput v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->e:I

    .line 116
    const/4 v0, 0x1

    .line 125
    :cond_0
    return v0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->C()V

    .line 121
    if-nez v1, :cond_0

    .line 122
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->r:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final C()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->s:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->s:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 179
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->s:Ljava/io/InputStream;

    .line 181
    :cond_2
    return-void
.end method

.method protected final D()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->D()V

    .line 193
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->t:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->r:[B

    .line 195
    if-eqz v0, :cond_0

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->r:[B

    .line 197
    iget-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->a([B)V

    .line 200
    :cond_0
    return-void
.end method
