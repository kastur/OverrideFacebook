.class public Lcom/facebook/apache/http/message/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

# interfaces
.implements Lcom/facebook/apache/http/NameValuePair;
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
    iput-object p1, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->b:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->b:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p0, p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    instance-of v2, p1, Lcom/facebook/apache/http/NameValuePair;

    if-eqz v2, :cond_3

    .line 89
    check-cast p1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    .line 90
    iget-object v2, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/apache/http/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/apache/http/message/BasicNameValuePair;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/apache/http/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 98
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 101
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->a:Ljava/lang/String;

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    new-instance v1, Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 79
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 80
    const-string v0, "="

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/apache/http/message/BasicNameValuePair;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
