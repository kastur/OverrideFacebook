.class public interface abstract Lcom/facebook/apache/http/message/LineParser;
.super Ljava/lang/Object;
.source "LineParser.java"


# virtual methods
.method public abstract a(Lcom/facebook/apache/http/util/CharArrayBuffer;)Lcom/facebook/apache/http/Header;
.end method

.method public abstract a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Z
.end method

.method public abstract b(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/RequestLine;
.end method

.method public abstract c(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/message/ParserCursor;)Lcom/facebook/apache/http/StatusLine;
.end method
