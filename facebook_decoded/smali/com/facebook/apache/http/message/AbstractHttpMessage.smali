.class public abstract Lcom/facebook/apache/http/message/AbstractHttpMessage;
.super Ljava/lang/Object;
.source "AbstractHttpMessage.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpMessage;


# instance fields
.field protected a:Lcom/facebook/apache/http/message/HeaderGroup;

.field protected b:Lcom/facebook/apache/http/params/HttpParams;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/message/AbstractHttpMessage;-><init>(Lcom/facebook/apache/http/params/HttpParams;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lcom/facebook/apache/http/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->b:Lcom/facebook/apache/http/params/HttpParams;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/Header;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/message/HeaderGroup;->a(Lcom/facebook/apache/http/Header;)V

    .line 87
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->b:Lcom/facebook/apache/http/params/HttpParams;

    .line 157
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    new-instance v1, Lcom/facebook/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lcom/facebook/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/message/HeaderGroup;->a(Lcom/facebook/apache/http/Header;)V

    .line 95
    return-void
.end method

.method public final a([Lcom/facebook/apache/http/Header;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/message/HeaderGroup;->a([Lcom/facebook/apache/http/Header;)V

    .line 113
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/message/HeaderGroup;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    new-instance v1, Lcom/facebook/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lcom/facebook/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/message/HeaderGroup;->b(Lcom/facebook/apache/http/Header;)V

    .line 108
    return-void
.end method

.method public final b(Ljava/lang/String;)[Lcom/facebook/apache/http/Header;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/message/HeaderGroup;->a(Ljava/lang/String;)[Lcom/facebook/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/apache/http/Header;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/message/HeaderGroup;->b(Ljava/lang/String;)Lcom/facebook/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/apache/http/HeaderIterator;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/message/HeaderGroup;->d(Ljava/lang/String;)Lcom/facebook/apache/http/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public final d()[Lcom/facebook/apache/http/Header;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lcom/facebook/apache/http/message/HeaderGroup;->b()[Lcom/facebook/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/facebook/apache/http/HeaderIterator;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->a:Lcom/facebook/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lcom/facebook/apache/http/message/HeaderGroup;->c()Lcom/facebook/apache/http/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/facebook/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->b:Lcom/facebook/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/facebook/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lcom/facebook/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->b:Lcom/facebook/apache/http/params/HttpParams;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/message/AbstractHttpMessage;->b:Lcom/facebook/apache/http/params/HttpParams;

    return-object v0
.end method
