.class public final Lorg/codehaus/jackson/io/SegmentedStringWriter;
.super Ljava/io/Writer;
.source "SegmentedStringWriter.java"


# instance fields
.field private a:Lorg/codehaus/jackson/util/TextBuffer;


# virtual methods
.method public final append(C)Ljava/io/Writer;
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->write(I)V

    .line 39
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 4
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->a:Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/codehaus/jackson/util/TextBuffer;->a(Ljava/lang/String;II)V

    .line 47
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->a:Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/codehaus/jackson/util/TextBuffer;->a(Ljava/lang/String;II)V

    .line 55
    return-object p0
.end method

.method public final bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final write(I)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->a:Lorg/codehaus/jackson/util/TextBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->a(C)V

    .line 75
    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->a:Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->a:Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a(Ljava/lang/String;II)V

    .line 83
    return-void
.end method

.method public final write([C)V
    .locals 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->a:Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->c([CII)V

    .line 65
    return-void
.end method

.method public final write([CII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->a:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/util/TextBuffer;->c([CII)V

    .line 70
    return-void
.end method
