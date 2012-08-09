.class public Lcom/facebook/apache/http/message/BasicStatusLine;
.super Ljava/lang/Object;
.source "BasicStatusLine.java"

# interfaces
.implements Lcom/facebook/apache/http/StatusLine;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lcom/facebook/apache/http/ProtocolVersion;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol version may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    if-gez p2, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status code may not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p1, p0, Lcom/facebook/apache/http/message/BasicStatusLine;->a:Lcom/facebook/apache/http/ProtocolVersion;

    .line 78
    iput p2, p0, Lcom/facebook/apache/http/message/BasicStatusLine;->b:I

    .line 79
    iput-object p3, p0, Lcom/facebook/apache/http/message/BasicStatusLine;->c:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicStatusLine;->a:Lcom/facebook/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/facebook/apache/http/message/BasicStatusLine;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicStatusLine;->c:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/facebook/apache/http/message/BasicLineFormatter;->a:Lcom/facebook/apache/http/message/BasicLineFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/StatusLine;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
