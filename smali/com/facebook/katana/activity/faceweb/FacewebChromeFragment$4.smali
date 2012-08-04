.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$4;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BaseFacebookActivity;

.field private synthetic b:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Lcom/facebook/katana/activity/BaseFacebookActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$4;->b:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iput-object p2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$4;->a:Lcom/facebook/katana/activity/BaseFacebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$4;->a:Lcom/facebook/katana/activity/BaseFacebookActivity;

    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->UI_DRAWN_STALE:Lcom/facebook/katana/service/method/PerfLogging$Step;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$4;->b:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$4;->a:Lcom/facebook/katana/activity/BaseFacebookActivity;

    invoke-virtual {v3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->n()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;J)V

    .line 594
    return-void
.end method
