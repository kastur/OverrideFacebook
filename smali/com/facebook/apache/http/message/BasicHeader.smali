.class public Lcom/facebook/apache/http/message/BasicHeader;
.super Ljava/lang/Object;
.source "BasicHeader.java"

# interfaces
.implements Lcom/facebook/apache/http/Header;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/message/BasicHeader;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/facebook/apache/http/message/BasicHeader;->b:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeader;->a:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeader;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()[Lcom/facebook/apache/http/HeaderElement;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeader;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicHeader;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/apache/http/message/BasicHeaderValueParser;->a(Ljava/lang/String;Lcom/facebook/apache/http/message/HeaderValueParser;)[Lcom/facebook/apache/http/HeaderElement;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/apache/http/HeaderElement;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/facebook/apache/http/message/BasicLineFormatter;->a:Lcom/facebook/apache/http/message/BasicLineFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/facebook/apache/http/message/BasicLineFormatter;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;Lcom/facebook/apache/http/Header;)Lcom/facebook/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
