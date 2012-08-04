.class Lcom/facebook/katana/service/FacebookService$2;
.super Ljava/lang/Object;
.source "FacebookService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/method/ServiceOperation;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/FacebookService;Lcom/facebook/katana/service/method/ServiceOperation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p2, p0, Lcom/facebook/katana/service/FacebookService$2;->a:Lcom/facebook/katana/service/method/ServiceOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/facebook/katana/service/FacebookService$2;->a:Lcom/facebook/katana/service/method/ServiceOperation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/ServiceOperation;->a(Z)V

    .line 798
    return-void
.end method
