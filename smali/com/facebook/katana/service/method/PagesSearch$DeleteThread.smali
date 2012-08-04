.class Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;
.super Ljava/lang/Thread;
.source "PagesSearch.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/service/method/PagesSearch;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/method/PagesSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;->a:Lcom/facebook/katana/service/method/PagesSearch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/method/PagesSearch;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;-><init>(Lcom/facebook/katana/service/method/PagesSearch;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;->a:Lcom/facebook/katana/service/method/PagesSearch;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/PagesSearch;->a(Lcom/facebook/katana/service/method/PagesSearch;Ljava/util/Map;)V

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;->a:Lcom/facebook/katana/service/method/PagesSearch;

    invoke-static {v0}, Lcom/facebook/katana/service/method/PagesSearch;->a(Lcom/facebook/katana/service/method/PagesSearch;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/service/method/PagesSearch$DeleteThread$1;-><init>(Lcom/facebook/katana/service/method/PagesSearch$DeleteThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method
