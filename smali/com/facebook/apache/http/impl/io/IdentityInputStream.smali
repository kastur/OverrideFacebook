.class public Lcom/facebook/apache/http/impl/io/IdentityInputStream;
.super Ljava/io/InputStream;
.source "IdentityInputStream.java"


# instance fields
.field private final a:Lcom/facebook/apache/http/io/SessionInputBuffer;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/io/SessionInputBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/IdentityInputStream;->b:Z

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/io/IdentityInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    .line 65
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/IdentityInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    instance-of v0, v0, Lcom/facebook/apache/http/io/BufferInfo;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/IdentityInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    check-cast v0, Lcom/facebook/apache/http/io/BufferInfo;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/BufferInfo;->d()I

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/IdentityInputStream;->b:Z

    .line 77
    return-void
.end method

.method public read()I
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/io/IdentityInputStream;->b:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, -0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/IdentityInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/io/IdentityInputStream;->b:Z

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, -0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/IdentityInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a([BII)I

    move-result v0

    goto :goto_0
.end method
