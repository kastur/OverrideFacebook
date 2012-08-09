.class public final Lcom/facebook/apache/http/HttpHost;
.super Ljava/lang/Object;
.source "HttpHost.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/HttpHost;->a:Ljava/lang/String;

    .line 82
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/HttpHost;->b:Ljava/lang/String;

    .line 83
    if-eqz p3, :cond_1

    .line 84
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/HttpHost;->d:Ljava/lang/String;

    .line 88
    :goto_0
    iput p2, p0, Lcom/facebook/apache/http/HttpHost;->c:I

    .line 89
    return-void

    .line 86
    :cond_1
    const-string v0, "http"

    iput-object v0, p0, Lcom/facebook/apache/http/HttpHost;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/apache/http/HttpHost;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/facebook/apache/http/HttpHost;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/apache/http/HttpHost;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 154
    iget-object v1, p0, Lcom/facebook/apache/http/HttpHost;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 155
    const-string v1, "://"

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/facebook/apache/http/HttpHost;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 157
    iget v1, p0, Lcom/facebook/apache/http/HttpHost;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 158
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(C)V

    .line 159
    iget v1, p0, Lcom/facebook/apache/http/HttpHost;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/facebook/apache/http/HttpHost;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 173
    new-instance v0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    iget-object v1, p0, Lcom/facebook/apache/http/HttpHost;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 174
    iget-object v1, p0, Lcom/facebook/apache/http/HttpHost;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 175
    const-string v1, ":"

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 176
    iget v1, p0, Lcom/facebook/apache/http/HttpHost;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/HttpHost;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    if-ne p0, p1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    instance-of v2, p1, Lcom/facebook/apache/http/HttpHost;

    if-eqz v2, :cond_3

    .line 192
    check-cast p1, Lcom/facebook/apache/http/HttpHost;

    .line 193
    iget-object v2, p0, Lcom/facebook/apache/http/HttpHost;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/apache/http/HttpHost;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/facebook/apache/http/HttpHost;->c:I

    iget v3, p1, Lcom/facebook/apache/http/HttpHost;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/facebook/apache/http/HttpHost;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/apache/http/HttpHost;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 205
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/facebook/apache/http/HttpHost;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 207
    iget v1, p0, Lcom/facebook/apache/http/HttpHost;->c:I

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(II)I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/facebook/apache/http/HttpHost;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 209
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/facebook/apache/http/HttpHost;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
