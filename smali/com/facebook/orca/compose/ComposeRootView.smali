.class public Lcom/facebook/orca/compose/ComposeRootView;
.super Landroid/widget/RelativeLayout;
.source "ComposeRootView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->b:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/facebook/orca/common/ui/util/TouchDelegateUtils;->a(Landroid/view/View;I)Landroid/view/TouchDelegate;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeRootView;->a:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/facebook/orca/common/ui/util/TouchDelegateUtils;->a(Landroid/view/View;I)Landroid/view/TouchDelegate;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeRootView;->c:Landroid/view/View;

    invoke-static {v2, p1, p2}, Lcom/facebook/orca/common/ui/util/TouchDelegateUtils;->a(Landroid/view/View;II)Landroid/view/TouchDelegate;

    move-result-object v2

    .line 63
    new-instance v3, Lcom/facebook/orca/common/ui/util/CompoundTouchDelegate;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/TouchDelegate;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-direct {v3, p0, v4}, Lcom/facebook/orca/common/ui/util/CompoundTouchDelegate;-><init>(Landroid/view/View;[Landroid/view/TouchDelegate;)V

    .line 65
    invoke-virtual {p0, v3}, Lcom/facebook/orca/compose/ComposeRootView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 40
    sget v0, Lcom/facebook/orca/R$id;->compose_button_camera:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->b:Landroid/view/View;

    .line 41
    sget v0, Lcom/facebook/orca/R$id;->compose_button_send:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->a:Landroid/view/View;

    .line 42
    sget v0, Lcom/facebook/orca/R$id;->compose_edit_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->c:Landroid/view/View;

    .line 43
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0, p3, p5}, Lcom/facebook/orca/compose/ComposeRootView;->a(II)V

    .line 52
    :cond_0
    return-void
.end method
