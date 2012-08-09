.class public Lcom/facebook/apache/http/impl/io/SocketInputBuffer;
.super Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"

# interfaces
.implements Lcom/facebook/apache/http/io/EofSensor;


# static fields
.field private static final a:Ljava/lang/Class;


# instance fields
.field private final b:Ljava/net/Socket;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->h()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;-><init>()V

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->c:Z

    .line 107
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->a(Ljava/io/InputStream;ILcom/facebook/apache/http/params/HttpParams;)V

    .line 109
    return-void
.end method

.method private static a(Ljava/io/InterruptedIOException;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static h()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 64
    :try_start_0
    const-string v0, "java.net.SocketTimeoutException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Z
    .locals 4
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->f()Z

    move-result v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 123
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->e()I

    .line 124
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    :try_start_1
    invoke-static {v1}, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->a(Ljava/io/InterruptedIOException;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->c:Z

    return v0
.end method

.method protected final e()I
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e()I

    move-result v1

    .line 113
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->c:Z

    .line 114
    return v1

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    :goto_0
    return v1

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2

    .line 155
    :try_start_0
    iget-object v3, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 156
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->e()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 162
    :goto_1
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 156
    goto :goto_1

    .line 158
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 160
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/SocketInputBuffer;->b:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
.end method
