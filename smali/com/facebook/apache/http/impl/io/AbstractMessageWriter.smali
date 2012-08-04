.class public abstract Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

# interfaces
.implements Lcom/facebook/apache/http/io/HttpMessageWriter;


# instance fields
.field protected final a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

.field protected final b:Lcom/facebook/apache/http/util/CharArrayBuffer;

.field protected final c:Lcom/facebook/apache/http/message/LineFormatter;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/message/LineFormatter;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    .line 70
    new-instance v0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 71
    if-eqz p2, :cond_1

    :goto_0
    iput-object p2, p0, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;->c:Lcom/facebook/apache/http/message/LineFormatter;

    .line 73
    return-void

    .line 71
    :cond_1
    sget-object p2, Lcom/facebook/apache/http/message/BasicLineFormatter;->a:Lcom/facebook/apache/http/message/BasicLineFormatter;

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/facebook/apache/http/HttpMessage;)V
.end method

.method public final b(Lcom/facebook/apache/http/HttpMessage;)V
    .locals 5
    .parameter

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;->a(Lcom/facebook/apache/http/HttpMessage;)V

    .line 90
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpMessage;->e()Lcom/facebook/apache/http/HeaderIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/Header;

    .line 92
    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;->c:Lcom/facebook/apache/http/message/LineFormatter;

    iget-object v4, p0, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {v3, v4, v0}, Lcom/facebook/apache/http/message/LineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/Header;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a()V

    .line 96
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractMessageWriter;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    .line 97
    return-void
.end method
