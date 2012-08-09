.class public final Lcom/facebook/apache/http/conn/scheme/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

.field private final c:I

.field private final d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    if-lez p2, :cond_1

    const v0, 0xffff

    if-le p2, v0, :cond_2

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Port is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    if-nez p3, :cond_3

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->b:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    .line 96
    iput p2, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->c:I

    .line 97
    instance-of v0, p3, Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    iput-boolean v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->d:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/apache/http/conn/scheme/SocketFactory;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    if-nez p2, :cond_1

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    .line 132
    instance-of v0, p2, Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactoryAdaptor;

    check-cast p2, Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-direct {v0, p2}, Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactoryAdaptor;-><init>(Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;)V

    iput-object v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->b:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->d:Z

    .line 140
    :goto_0
    const/16 v0, 0x1bb

    iput v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->c:I

    .line 141
    return-void

    .line 137
    :cond_2
    new-instance v0, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-direct {v0, p2}, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lcom/facebook/apache/http/conn/scheme/SocketFactory;)V

    iput-object v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->b:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->d:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->c:I

    return v0
.end method

.method public final a(I)I
    .locals 0
    .parameter

    .prologue
    .line 218
    if-gtz p1, :cond_0

    iget p1, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->c:I

    :cond_0
    return p1
.end method

.method public final b()Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->b:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    if-ne p0, p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    instance-of v2, p1, Lcom/facebook/apache/http/conn/scheme/Scheme;

    if-eqz v2, :cond_3

    .line 242
    check-cast p1, Lcom/facebook/apache/http/conn/scheme/Scheme;

    .line 243
    iget-object v2, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->c:I

    iget v3, p1, Lcom/facebook/apache/http/conn/scheme/Scheme;->c:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->d:Z

    iget-boolean v3, p1, Lcom/facebook/apache/http/conn/scheme/Scheme;->d:Z

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 247
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 253
    const/16 v0, 0x11

    iget v1, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->c:I

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(II)I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 256
    iget-boolean v1, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->d:Z

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/LangUtils;->a(IZ)I

    move-result v0

    .line 257
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    iget v1, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->e:Ljava/lang/String;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/Scheme;->e:Ljava/lang/String;

    return-object v0
.end method
