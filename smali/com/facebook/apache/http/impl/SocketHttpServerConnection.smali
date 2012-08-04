.class public Lcom/facebook/apache/http/impl/SocketHttpServerConnection;
.super Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;
.source "SocketHttpServerConnection.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpInetConnection;


# instance fields
.field private volatile a:Z

.field private volatile b:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/SocketHttpServerConnection;->b:Ljava/net/Socket;

    .line 68
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/SocketHttpServerConnection;->a()V

    .line 225
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/SocketHttpServerConnection;->a:Z

    .line 250
    return-void
.end method

.method public final g()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, -0x1

    return v0
.end method
