.class public abstract Lcom/facebook/katana/service/method/NetworkServiceOperation;
.super Lcom/facebook/katana/service/method/ServiceOperation;
.source "NetworkServiceOperation.java"


# instance fields
.field protected final k:Ljava/lang/String;

.field protected l:Lcom/facebook/katana/net/HttpOperation;

.field protected m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p4}, Lcom/facebook/katana/service/method/ServiceOperation;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 92
    iput-object p3, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation;->k:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/facebook/katana/service/method/ServiceOperationListener;->b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 115
    new-instance v0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;-><init>(Lcom/facebook/katana/service/method/NetworkServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 129
    sget-object v1, Lcom/facebook/katana/service/method/NetworkServiceOperation;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
.end method
