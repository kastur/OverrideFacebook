.class public Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;
.super Ljava/lang/Object;
.source "NetworkServiceOperation.java"

# interfaces
.implements Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/method/NetworkServiceOperation;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/service/method/NetworkServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;->a:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    return-void
.end method

.method public a(Lcom/facebook/katana/net/HttpOperation;ILjava/lang/String;Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;Ljava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    .line 37
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_2

    if-nez p5, :cond_2

    .line 38
    invoke-static {p4}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;->a:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    invoke-virtual {v2, p4}, Lcom/facebook/katana/service/method/NetworkServiceOperation;->a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    :try_end_0
    .catch Lcom/facebook/katana/model/FacebookApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p4}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->a()I

    move-result v1

    move v4, v1

    move-object v5, p5

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;->a:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    invoke-virtual {v0, p2, p3, v5}, Lcom/facebook/katana/service/method/NetworkServiceOperation;->a(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 71
    invoke-static {v5}, Lcom/facebook/katana/service/method/ApiLogging;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;->a:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    instance-of v0, v0, Lcom/facebook/katana/service/method/ApiMethod;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;->a:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    move-object v1, v0

    check-cast v1, Lcom/facebook/katana/service/method/ApiMethod;

    .line 75
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;->a:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    iget-object v0, v0, Lcom/facebook/katana/service/method/NetworkServiceOperation;->o:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/facebook/katana/service/method/ApiMethod;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation;->b()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/method/ApiLogging;->a(Landroid/content/Context;Ljava/lang/String;JILjava/lang/Exception;)V

    .line 79
    :cond_1
    return-void

    .line 41
    :catch_0
    move-exception p5

    .line 44
    const-string v2, "NetworkServiceOperationHttpListener.onHttpOperationComplete"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FacebookApiException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/facebook/katana/model/FacebookApiException;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p5}, Lcom/facebook/katana/model/FacebookApiException;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, v0

    move p2, v1

    .line 64
    goto :goto_0

    .line 50
    :catch_1
    move-exception p5

    .line 53
    invoke-virtual {p5}, Ljava/lang/Exception;->printStackTrace()V

    move-object p3, v0

    move p2, v1

    .line 64
    goto :goto_0

    .line 57
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 59
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;->a:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    instance-of v0, v0, Lcom/facebook/katana/service/method/ApiMethod;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;->a:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    check-cast v0, Lcom/facebook/katana/service/method/ApiMethod;

    .line 61
    const-string v2, "ApiMethod OutOfMemoryError"

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ApiMethod;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move v4, v1

    move-object v5, p5

    goto :goto_1
.end method
