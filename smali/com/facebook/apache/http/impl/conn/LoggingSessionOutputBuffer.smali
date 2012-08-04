.class public Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionOutputBuffer.java"

# interfaces
.implements Lcom/facebook/apache/http/io/SessionOutputBuffer;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

.field private final b:Lcom/facebook/apache/http/impl/conn/Wire;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/io/SessionOutputBuffer;Lcom/facebook/apache/http/impl/conn/Wire;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    .line 65
    iput-object p2, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->b:Lcom/facebook/apache/http/impl/conn/Wire;

    .line 66
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->c:Ljava/lang/String;

    .line 67
    return-void

    .line 66
    :cond_0
    const-string p3, "ASCII"

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a()V

    .line 96
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(I)V

    .line 82
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->b:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/Wire;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->b:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/impl/conn/Wire;->a(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;)V
    .locals 4
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->b:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/Wire;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->b:Lcom/facebook/apache/http/impl/conn/Wire;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/impl/conn/Wire;->a([B)V

    .line 105
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->b:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/Wire;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->b:Lcom/facebook/apache/http/impl/conn/Wire;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/impl/conn/Wire;->a([B)V

    .line 113
    :cond_0
    return-void
.end method

.method public final a([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->a([BII)V

    .line 75
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->b:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/Wire;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->b:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/apache/http/impl/conn/Wire;->a([BII)V

    .line 78
    :cond_0
    return-void
.end method

.method public final b()Lcom/facebook/apache/http/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionOutputBuffer;->a:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/SessionOutputBuffer;->b()Lcom/facebook/apache/http/io/HttpTransportMetrics;

    move-result-object v0

    return-object v0
.end method
