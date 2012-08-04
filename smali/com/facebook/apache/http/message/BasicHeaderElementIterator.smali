.class public Lcom/facebook/apache/http/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "BasicHeaderElementIterator.java"

# interfaces
.implements Lcom/facebook/apache/http/HeaderElementIterator;


# instance fields
.field private final a:Lcom/facebook/apache/http/HeaderIterator;

.field private final b:Lcom/facebook/apache/http/message/HeaderValueParser;

.field private c:Lcom/facebook/apache/http/HeaderElement;

.field private d:Lcom/facebook/apache/http/util/CharArrayBuffer;

.field private e:Lcom/facebook/apache/http/message/ParserCursor;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/HeaderIterator;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/apache/http/message/BasicHeaderValueParser;->a:Lcom/facebook/apache/http/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;-><init>(Lcom/facebook/apache/http/HeaderIterator;Lcom/facebook/apache/http/message/HeaderValueParser;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Lcom/facebook/apache/http/HeaderIterator;Lcom/facebook/apache/http/message/HeaderValueParser;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->c:Lcom/facebook/apache/http/HeaderElement;

    .line 50
    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 51
    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header iterator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-nez p2, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->a:Lcom/facebook/apache/http/HeaderIterator;

    .line 66
    iput-object p2, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->b:Lcom/facebook/apache/http/message/HeaderValueParser;

    .line 67
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 76
    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    .line 77
    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->a:Lcom/facebook/apache/http/HeaderIterator;

    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->a:Lcom/facebook/apache/http/HeaderIterator;

    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderIterator;->a()Lcom/facebook/apache/http/Header;

    move-result-object v1

    .line 80
    instance-of v0, v1, Lcom/facebook/apache/http/FormattedHeader;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 81
    check-cast v0, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {v0}, Lcom/facebook/apache/http/FormattedHeader;->a()Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 82
    new-instance v0, Lcom/facebook/apache/http/message/ParserCursor;

    iget-object v2, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-direct {v0, v3, v2}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    .line 83
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    check-cast v1, Lcom/facebook/apache/http/FormattedHeader;

    invoke-interface {v1}, Lcom/facebook/apache/http/FormattedHeader;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/message/ParserCursor;->a(I)V

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    invoke-interface {v1}, Lcom/facebook/apache/http/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 89
    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/facebook/apache/http/message/ParserCursor;

    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/facebook/apache/http/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->a:Lcom/facebook/apache/http/HeaderIterator;

    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    if-eqz v0, :cond_6

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    invoke-virtual {v0}, Lcom/facebook/apache/http/message/ParserCursor;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->b()V

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    if-eqz v0, :cond_0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    invoke-virtual {v0}, Lcom/facebook/apache/http/message/ParserCursor;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 108
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->b:Lcom/facebook/apache/http/message/HeaderValueParser;

    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    iget-object v2, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/message/HeaderValueParser;->b(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/HeaderElement;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderElement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lcom/facebook/apache/http/HeaderElement;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 111
    :cond_5
    iput-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->c:Lcom/facebook/apache/http/HeaderElement;

    .line 123
    :cond_6
    return-void

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    invoke-virtual {v0}, Lcom/facebook/apache/http/message/ParserCursor;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iput-object v3, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->e:Lcom/facebook/apache/http/message/ParserCursor;

    .line 119
    iput-object v3, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->d:Lcom/facebook/apache/http/util/CharArrayBuffer;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/HeaderElement;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->c:Lcom/facebook/apache/http/HeaderElement;

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->c()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->c:Lcom/facebook/apache/http/HeaderElement;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more header elements available"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->c:Lcom/facebook/apache/http/HeaderElement;

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->c:Lcom/facebook/apache/http/HeaderElement;

    .line 143
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->c:Lcom/facebook/apache/http/HeaderElement;

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->c()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->c:Lcom/facebook/apache/http/HeaderElement;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/facebook/apache/http/message/BasicHeaderElementIterator;->a()Lcom/facebook/apache/http/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
