.class Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$1;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/ClientConnectionRequest;


# instance fields
.field private synthetic a:Lcom/facebook/apache/http/conn/routing/HttpRoute;

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;


# direct methods
.method constructor <init>(Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$1;->c:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;

    iput-object p2, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$1;->a:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    iput-object p3, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/facebook/apache/http/conn/ManagedClientConnection;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$1;->c:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$1;->a:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$1;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;)Lcom/facebook/apache/http/conn/ManagedClientConnection;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method
