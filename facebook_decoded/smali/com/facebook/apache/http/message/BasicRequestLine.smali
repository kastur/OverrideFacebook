.class public Lcom/facebook/apache/http/message/BasicRequestLine;
.super Ljava/lang/Object;
.source "BasicRequestLine.java"

# interfaces
.implements Lcom/facebook/apache/http/RequestLine;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lcom/facebook/apache/http/ProtocolVersion;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/ProtocolVersion;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-nez p2, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    if-nez p3, :cond_2

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol version must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    iput-object p1, p0, Lcom/facebook/apache/http/message/BasicRequestLine;->b:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/facebook/apache/http/message/BasicRequestLine;->c:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/facebook/apache/http/message/BasicRequestLine;->a:Lcom/facebook/apache/http/ProtocolVersion;

    .line 67
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicRequestLine;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/facebook/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicRequestLine;->a:Lcom/facebook/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicRequestLine;->c:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/facebook/apache/http/message/BasicLineFormatter;->a:Lcom/facebook/apache/http/message/BasicLineFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/RequestLine;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
