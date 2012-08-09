.class Lcom/facebook/katana/service/method/PagesSearch$DeleteThread$1;
.super Ljava/lang/Object;
.source "PagesSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread$1;->a:Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread$1;->a:Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;

    iget-object v0, v0, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;->a:Lcom/facebook/katana/service/method/PagesSearch;

    iget-object v0, v0, Lcom/facebook/katana/service/method/PagesSearch;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    iget-object v1, p0, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread$1;->a:Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;

    iget-object v1, v1, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;->a:Lcom/facebook/katana/service/method/PagesSearch;

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 180
    return-void
.end method
