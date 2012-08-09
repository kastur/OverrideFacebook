.class public Lcom/facebook/apache/http/message/BufferedHeader;
.super Ljava/lang/Object;
.source "BufferedHeader.java"

# interfaces
.implements Lcom/facebook/apache/http/FormattedHeader;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/apache/http/util/CharArrayBuffer;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/util/CharArrayBuffer;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c(I)I

    move-result v0

    .line 81
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 82
    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 87
    new-instance v0, Lcom/facebook/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    iput-object p1, p0, Lcom/facebook/apache/http/message/BufferedHeader;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 91
    iput-object v1, p0, Lcom/facebook/apache/http/message/BufferedHeader;->a:Ljava/lang/String;

    .line 92
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/apache/http/message/BufferedHeader;->c:I

    .line 93
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/util/CharArrayBuffer;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/apache/http/message/BufferedHeader;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/facebook/apache/http/message/BufferedHeader;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/apache/http/message/BufferedHeader;->a:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/apache/http/message/BufferedHeader;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    iget v1, p0, Lcom/facebook/apache/http/message/BufferedHeader;->c:I

    iget-object v2, p0, Lcom/facebook/apache/http/message/BufferedHeader;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()[Lcom/facebook/apache/http/HeaderElement;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/facebook/apache/http/message/ParserCursor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/apache/http/message/BufferedHeader;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    .line 106
    iget v1, p0, Lcom/facebook/apache/http/message/BufferedHeader;->c:I

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/message/ParserCursor;->a(I)V

    .line 107
    sget-object v1, Lcom/facebook/apache/http/message/BasicHeaderValueParser;->a:Lcom/facebook/apache/http/message/BasicHeaderValueParser;

    iget-object v2, p0, Lcom/facebook/apache/http/message/BufferedHeader;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/apache/http/message/BasicHeaderValueParser;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)[Lcom/facebook/apache/http/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/apache/http/message/BufferedHeader;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
