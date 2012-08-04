.class Lcom/facebook/katana/webview/FacewebWebView$1;
.super Ljava/lang/Object;
.source "FacewebWebView.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/katana/webview/FacewebWebView;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/FacewebWebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/katana/webview/FacewebWebView$1;->b:Lcom/facebook/katana/webview/FacewebWebView;

    iput-object p2, p0, Lcom/facebook/katana/webview/FacewebWebView$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;)V
    .locals 3
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/facebook/katana/webview/FacewebWebView$1;->b:Lcom/facebook/katana/webview/FacewebWebView;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/facebook/katana/webview/FacewebWebView$1;->b:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-static {v2}, Lcom/facebook/katana/webview/FacewebWebView;->b(Lcom/facebook/katana/webview/FacewebWebView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebWebView$1;->b:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->h()V

    .line 215
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 222
    const-string v0, "FacewebWebView"

    const-string v1, "Failed to load components store. Error: %s   Message: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method
