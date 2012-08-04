.class Lcom/facebook/katana/features/uberbar/UberbarDelegate$4;
.super Ljava/lang/Object;
.source "UberbarDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/features/uberbar/UberbarDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate$4;->a:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 114
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate$4;->a:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    invoke-static {v0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->b(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)V

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 119
    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v7

    .line 122
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate$4;->a:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    invoke-static {v2}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/facebook/katana/util/logging/UserInteractionEvent;

    const-string v4, "CLICK"

    const-string v5, "LINK"

    const-string v6, "SearchResults"

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/facebook/katana/util/logging/UserInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    goto :goto_0
.end method
