.class Lcom/facebook/katana/MyTabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "MyTabHost.java"

# interfaces
.implements Lcom/facebook/katana/MyTabHost$ContentStrategy;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Intent;

.field private c:Landroid/view/View;

.field private synthetic d:Lcom/facebook/katana/MyTabHost;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->d:Lcom/facebook/katana/MyTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->a:Ljava/lang/String;

    .line 395
    iput-object p3, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->b:Landroid/content/Intent;

    .line 396
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/content/Intent;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;-><init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->d:Lcom/facebook/katana/MyTabHost;

    iget-object v0, v0, Lcom/facebook/katana/MyTabHost;->a:Landroid/app/LocalActivityManager;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->d:Lcom/facebook/katana/MyTabHost;

    iget-object v0, v0, Lcom/facebook/katana/MyTabHost;->a:Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->d:Lcom/facebook/katana/MyTabHost;

    invoke-static {v1}, Lcom/facebook/katana/MyTabHost;->a(Lcom/facebook/katana/MyTabHost;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 411
    :cond_1
    iput-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    .line 413
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 416
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    return-object v0

    .line 405
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_0
    return-void
.end method
