.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;
.super Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2158
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 2159
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 2160
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2172
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->l(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/TabProgressListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2173
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->l(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/TabProgressListener;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 2176
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->d(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Z)Z

    .line 2178
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2193
    :goto_1
    return-void

    .line 2169
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 2182
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v1

    .line 2183
    const v2, 0x7f0802ef

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/BaseFacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2184
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->h(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/util/logging/InteractionLogger;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->LOCAL_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    :goto_2
    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/facebook/orca/activity/FbActivityUtils;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->DATA_REQUESTED:Lcom/facebook/katana/service/method/PerfLogging$Step;

    :goto_3
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->n()J

    move-result-wide v3

    invoke-static {v1, v0, v2, v3, v4}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;J)V

    goto :goto_1

    .line 2184
    :cond_3
    sget-object v0, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->NETWORK_DATA:Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;

    goto :goto_2

    .line 2190
    :cond_4
    sget-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->DATA_RECEIVED:Lcom/facebook/katana/service/method/PerfLogging$Step;

    goto :goto_3
.end method

.method public final b(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-interface {p2}, Lcom/facebook/katana/webview/FacewebPalCall;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageLoading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->c(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Z)Z

    .line 2165
    return-void
.end method
