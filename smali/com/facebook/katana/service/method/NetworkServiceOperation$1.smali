.class Lcom/facebook/katana/service/method/NetworkServiceOperation$1;
.super Ljava/lang/Object;
.source "NetworkServiceOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/Exception;

.field private synthetic d:Lcom/facebook/katana/service/method/NetworkServiceOperation;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/method/NetworkServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->d:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    iput p2, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->a:I

    iput-object p3, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->d:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    iget-object v0, v0, Lcom/facebook/katana/service/method/NetworkServiceOperation;->l:Lcom/facebook/katana/net/HttpOperation;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->d:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/katana/service/method/NetworkServiceOperation;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 124
    iget-object v0, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->d:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->d:Lcom/facebook/katana/service/method/NetworkServiceOperation;

    iget v2, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->a:I

    iget-object v3, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/service/method/NetworkServiceOperation$1;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/NetworkServiceOperation;->c(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
