.class public Lcom/facebook/apache/http/impl/io/SocketOutputBuffer;
.super Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;
.source "SocketOutputBuffer.java"


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionOutputBuffer;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/apache/http/impl/io/SocketOutputBuffer;->a(Ljava/io/OutputStream;ILcom/facebook/apache/http/params/HttpParams;)V

    .line 75
    return-void
.end method
