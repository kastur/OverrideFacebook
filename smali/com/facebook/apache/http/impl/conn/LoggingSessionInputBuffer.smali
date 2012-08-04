.class public Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionInputBuffer.java"

# interfaces
.implements Lcom/facebook/apache/http/io/EofSensor;
.implements Lcom/facebook/apache/http/io/SessionInputBuffer;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/io/SessionInputBuffer;

.field private final b:Lcom/facebook/apache/http/io/EofSensor;

.field private final c:Lcom/facebook/apache/http/impl/conn/Wire;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/io/SessionInputBuffer;Lcom/facebook/apache/http/impl/conn/Wire;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    .line 68
    instance-of v0, p1, Lcom/facebook/apache/http/io/EofSensor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/apache/http/io/EofSensor;

    :goto_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->b:Lcom/facebook/apache/http/io/EofSensor;

    .line 69
    iput-object p2, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->c:Lcom/facebook/apache/http/impl/conn/Wire;

    .line 70
    if-eqz p3, :cond_1

    :goto_1
    iput-object p3, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->d:Ljava/lang/String;

    .line 71
    return-void

    .line 68
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_1
    const-string p3, "ASCII"

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a()I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->c:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lcom/facebook/apache/http/impl/conn/Wire;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->c:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/impl/conn/Wire;->b(I)V

    .line 94
    :cond_0
    return v0
.end method

.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;)I
    .locals 4
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->c:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lcom/facebook/apache/http/impl/conn/Wire;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v1

    sub-int/2addr v1, v0

    .line 118
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b()[C

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->c:Lcom/facebook/apache/http/impl/conn/Wire;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/apache/http/impl/conn/Wire;->b([B)V

    .line 122
    :cond_0
    return v0
.end method

.method public final a([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a([BII)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->c:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lcom/facebook/apache/http/impl/conn/Wire;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->c:Lcom/facebook/apache/http/impl/conn/Wire;

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/apache/http/impl/conn/Wire;->b([BII)V

    .line 86
    :cond_0
    return v0
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a(I)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/facebook/apache/http/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/SessionInputBuffer;->b()Lcom/facebook/apache/http/io/HttpTransportMetrics;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->b:Lcom/facebook/apache/http/io/EofSensor;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/LoggingSessionInputBuffer;->b:Lcom/facebook/apache/http/io/EofSensor;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/EofSensor;->c()Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
