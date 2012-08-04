.class Lcom/facebook/katana/webview/FacewebWebView$5;
.super Ljava/lang/Object;
.source "FacewebWebView.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;


# direct methods
.method constructor <init>(Lcom/facebook/katana/webview/FacewebWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-interface {p3, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    invoke-static {p1, v0}, Lcom/facebook/katana/webview/MFacewebVersion;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    :cond_0
    invoke-static {p1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->b(Landroid/content/Context;)V

    .line 364
    return-void
.end method
